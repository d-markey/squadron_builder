import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:meta/meta.dart';

import 'managed_type.dart';

@internal
extension CsvExt on StringBuffer {
  void csv(String arg) {
    if (isNotEmpty) write(', ');
    write(arg);
  }
}

@internal
extension DartTypeExt on DartType {
  String get baseName => element?.name ?? '<anonymous>';

  Iterable<DartType> implementedTypes(ManagedType knownType,
      {bool includeSelf = false}) sync* {
    final isMatch = _TypeFilter(knownType).isMatch;
    if (includeSelf && isMatch(this)) {
      yield this;
    }
    if (element is ClassElement) {
      yield* (element as ClassElement).allSupertypes.where(isMatch);
    }
  }

  bool isA(ManagedType knownType) =>
      implementedTypes(knownType, includeSelf: true).isNotEmpty;

  bool isFromPackage(String pckUri) =>
      element?.location?.isFromPackage(pckUri) ?? false;
}

@internal
extension LibraryImportElementExt on LibraryImportElement {
  bool isFromPackage(String pckUri) =>
      importedLibrary?.isFromPackage(pckUri) ?? false;
}

@internal
extension LibraryElementExt on LibraryElement {
  bool isFromPackage(String pckUri) => location?.isFromPackage(pckUri) ?? false;

  LibraryImportElement? getImport(String pckUri) =>
      definingCompilationUnit.libraryImports
          .where((i) => i.isFromPackage(pckUri))
          .firstOrNull;

  String? getPrefixFor(String pckUri) {
    final import = definingCompilationUnit.libraryImports
        .where((i) => i.isFromPackage(pckUri))
        .firstOrNull;
    if (import == null) return null;
    return import.prefix?.element.name ?? '';
  }
}

@internal
extension ElementLocationExt on ElementLocation {
  bool isFromPackage(String pckUri) =>
      components.any((c) => c.startsWith(pckUri));
}

@internal
extension NullabilitySuffixExt on NullabilitySuffix {
  String get suffix {
    switch (this) {
      case NullabilitySuffix.none:
        return '';
      case NullabilitySuffix.question:
        return '?';
      case NullabilitySuffix.star:
        return '*';
    }
  }
}

class _TypeFilter {
  _TypeFilter(this.target);

  final ManagedType target;

  late bool Function(DartType) isMatch = (target is ImportedType)
      ? _isImportMatch(target as ImportedType)
      : _isMatch;

  bool _isMatch(DartType type) => (type == target.dartType);

  bool Function(DartType) _isImportMatch(ImportedType target) {
    final pckUri = target.pckUri, baseName = target.baseName;
    return (type) => (type.isFromPackage(pckUri) && type.baseName == baseName);
  }
}
