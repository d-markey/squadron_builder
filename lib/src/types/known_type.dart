import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';

import '../marshalers/converters.dart';
import '../marshalers/marshaler.dart';
import 'extensions.dart';
import 'managed_type.dart';
import 'type_manager.dart';

class KnownType implements ManagedType {
  KnownType._(this.pckUri, this.baseName, [LibraryImportElement? import])
      : prefix = import?.prefix?.element.name ?? '' {
    // final clazz = _findClass(import?.importedLibrary, baseName);
    // stderr.writeln(
    //     '$pckUri - ${import?.importedLibrary} - $baseName = ${clazz.runtimeType} $clazz');
  }

  static ClassElement? _findClass(LibraryElement? lib, String baseName) {
    if (lib == null) return null;

    final visited = <LibraryElement>{};

    ClassElement? $findClass(LibraryElement library) {
      if (!visited.add(library)) return null;
      return library.getClass(baseName) ??
          library.exportedLibraries
              .map($findClass)
              .whereType<ClassElement>()
              .firstOrNull;
    }

    return $findClass(lib);
  }

  factory KnownType(String pckUri, String baseName,
          [LibraryImportElement? import]) =>
      (import == null)
          ? _UnresolvedKnownType(pckUri, baseName)
          : KnownType._(pckUri, baseName, import);

  @override
  final String prefix;

  final String pckUri;
  final String baseName;

  bool get isResolved => true;

  @override
  DartType? get dartType => null;

  @override
  List<ManagedType> get typeArguments => const [];

  @override
  Marshaler? get attachedMarshaler => null;

  @override
  void setMarshaler(TypeManager typeManager) {}

  @override
  String getSerializer(Converters converters) => '/* TODO $runtimeType */';

  @override
  String getDeserializer(Converters converters) => '/* TODO $runtimeType */';

  @override
  NullabilitySuffix get nullabilitySuffix => NullabilitySuffix.none;

  @override
  String getTypeName([NullabilitySuffix? forcedNullabilitySuffix]) {
    final s = (forcedNullabilitySuffix ?? NullabilitySuffix.none).suffix;
    final a = typeArguments.isNotEmpty ? '<${typeArguments.join(', ')}>' : '';
    return prefix.isEmpty ? '$baseName$a$s' : '$prefix.$baseName$a$s';
  }

  @override
  String toString() => getTypeName();
}

class _UnresolvedKnownType extends KnownType {
  _UnresolvedKnownType(super.pckUri, super.baseName) : super._();

  @override
  bool get isResolved => false;

  @override
  String getSerializer(Converters converters) =>
      throw InvalidGenerationSourceError('Missing import for type $baseName');

  @override
  String getDeserializer(Converters converters) =>
      throw InvalidGenerationSourceError('Missing import for type $baseName');
}
