import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';

import '../_analyzer_helpers.dart';
import '../marshalers/marshaler.dart';
import 'managed_type.dart';

part 'type_manager_imported_types.dart';
part 'type_manager_pck_uri.dart';

class TypeManager with _ImportedTypesMixin {
  TypeManager(this.library)
      : dartCoreAlias = library.getPrefixFor(PckUri.dartCore) ?? '';

  final LibraryElement library;
  final String dartCoreAlias;
  late final String squadronAlias;

  void ensureInitialized() {
    if (_initialized) return;
    _initialized = true;

    final squadronAlias = library.getPrefixFor(PckUri.squadron);
    if (squadronAlias == null) {
      throw InvalidGenerationSourceError('Missing import of Squadron library.');
    }
    this.squadronAlias = squadronAlias;

    // initialize managed imported types
    _importedTypes.updateAll((pckUri, types) {
      final prefix = library.getPrefixFor(pckUri) ?? '';
      types.updateAll((k, v) => ImportedType(pckUri, prefix, k));
      return types;
    });
  }

  List<String> checkRequiredImports(List<ImportedType> requiredTypes) {
    final missingImports = requiredTypes.map((t) => t.pckUri).toSet()
      ..removeWhere((pckUri) =>
          library.importedLibraries.any((l) => l.isFromPackage(pckUri)));
    return missingImports
        .map((s) => s.endsWith('/') ? s.substring(0, s.length - 1) : s)
        .toList();
  }

  bool _initialized = false;

  String getPrefixFor(LibraryElement? lib) {
    if (lib == null) return '';
    // ignore: deprecated_member_use
    return library.definingCompilationUnit.libraryImportPrefixes
            .where((p) => p.imports.any((i) => i.importedLibrary == lib))
            .firstOrNull
            ?.name ??
        '';
  }

  final _cache = <DartType, ManagedType>{};

  ManagedType handleDartType(DartType type) {
    var managedType = _cache[type];
    if (managedType != null) return managedType;

    if (type is RecordType) {
      managedType = ManagedType.record(type, this);
      _cache[type] = managedType;
    } else {
      final typeLib = type.elt?.lib;
      managedType = ManagedType(getPrefixFor(typeLib), type, this);
      _cache[type] = managedType;
      findMarshaler(managedType);
    }

    return managedType;
  }

  void findMarshaler(ManagedType type) {
    final element = type.dartType?.elt;
    if (element == null) return;
    final marshalerLoader = MarshalerInspector(this);
    final marshaler = marshalerLoader.getMarshalerFor(type);
    if (marshaler != null) {
      type.attachMarshaler(marshaler);
    }
  }

  String getTypeName(DartType type) => handleDartType(type).getTypeName();

  bool _isMarshaler(DartObject obj) =>
      obj.type?.isA(TSquadronMarshaler) ?? false;

  Marshaler? getExplicitMarshaler(Element? element) {
    final marshaler =
        // ignore: deprecated_member_use
        element?.declaration?.getAnnotations().where(_isMarshaler).firstOrNull;
    if (marshaler == null) return null;
    final type = marshaler.toTypeValue() ?? marshaler.type;
    final baseMarshaler = type?.implementedTypes(TSquadronMarshaler);
    if (baseMarshaler == null || baseMarshaler.isEmpty) {
      throw InvalidGenerationSourceError(
          'Invalid marshaler for $element: $marshaler');
    }
    return Marshaler.explicit(
        this, marshaler, handleDartType(baseMarshaler.single));
  }
}
