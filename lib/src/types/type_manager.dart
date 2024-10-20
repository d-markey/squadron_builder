import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';

import '../marshalers/converters.dart';
import '../marshalers/marshaler.dart';
import '../readers/annotations_reader.dart';
import 'extensions.dart';
import 'imported_type.dart';
import 'managed_type.dart';

part 'type_manager_imported_types.dart';
part 'type_manager_pck_uri.dart';

class TypeManager with _ImportedTypesMixin {
  TypeManager(this.library) {
    final dartCoreAlias = library.getPrefixFor(PckUri.dartCore) ?? '';
    dartCorePrefix = dartCoreAlias.isEmpty ? '' : '$dartCoreAlias.';
  }

  void initialize() {
    if (_initialized) return;
    _initialized = true;

    final squadronAlias = library.getPrefixFor(PckUri.squadron);
    if (squadronAlias == null) {
      throw InvalidGenerationSourceError('Missing import of Squadron library.');
    }
    converters.squadronAlias = squadronAlias;

    // initialize managed imported types
    _importedTypes.updateAll((pckUri, types) {
      final prefix = library.getPrefixFor(pckUri) ?? '';
      types.updateAll((k, v) => ImportedType(pckUri, prefix, k));
      return types;
    });
  }

  void checkImportsFor(String message, List<ImportedType> requiredTypes) {
    if (requiredTypes.isNotEmpty) {
      final missingImports = requiredTypes.map((t) => t.pckUri).toSet()
        ..removeWhere((pckUri) =>
            library.importedLibraries.any((l) => l.isFromPackage(pckUri)));
      if (missingImports.isNotEmpty) {
        throw InvalidGenerationSourceError(
            '$message: ${missingImports.map((s) => s.endsWith('/') ? s.substring(0, s.length - 1) : s).join(', ')}');
      }
    }
  }

  final LibraryElement library;

  final converters = Converters();

  bool _initialized = false;

  String getPrefixFor(LibraryElement? lib) {
    if (lib == null) return '';
    return library.prefixes
            .where((p) => p.imports.any((i) => i.importedLibrary == lib))
            .firstOrNull
            ?.name ??
        '';
  }

  String get squadronAlias => converters.squadronAlias;

  late final String dartCorePrefix;
  late final String override = '@${dartCorePrefix}override';

  final _cache = <DartType, ManagedType>{};

  ManagedType handleDartType(DartType type) {
    var managedType = _cache[type];
    if (managedType != null) {
      return managedType;
    }

    if (type is RecordType) {
      managedType = ManagedType.record(type, this);
      _cache[type] = managedType;
    } else {
      final typeLib = type.element?.library;
      managedType = ManagedType(getPrefixFor(typeLib), type, this);
      _cache[type] = managedType;
      managedType.setMarshaler(this);
    }

    return managedType;
  }

  String getTypeName(DartType type) =>
      handleDartType(type).getTypeName(type.nullabilitySuffix);

  bool _isMarshaler(DartObject obj) =>
      obj.type?.isA(TSquadronMarshaler) ?? false;

  Marshaler? getExplicitMarshaler(Element? element) {
    var marshaler =
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
