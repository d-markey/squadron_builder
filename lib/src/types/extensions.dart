import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:meta/meta.dart';
import 'package:squadron_builder/src/types/known_type.dart';

import '../extensions.dart';
import '../types/managed_type.dart';

@internal
extension DartTypeExt on DartType {
  String get baseName {
    var n = toString();
    while (n.endsWith('?') || n.endsWith('*')) {
      n = n.substring(0, n.length - 1);
    }
    return n;
  }

  Iterable<DartType> implementedTypes(ManagedType knownType,
      {bool includeSelf = false}) sync* {
    final isMatch = _TypeFilter(knownType).isMatch;
    if (includeSelf && isMatch(this)) {
      yield this;
    }
    final typeElt = element.safeCast<ClassElement>();
    if (typeElt != null) {
      yield* typeElt.allSupertypes.where(isMatch);
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
  _TypeFilter(ManagedType knownType)
      : pckUri = (knownType is KnownType) ? knownType.pckUri : '',
        typeName = (knownType is KnownType && !knownType.isResolved)
            ? ''
            : knownType.getTypeName(NullabilitySuffix.none),
        genTypeName = (knownType is KnownType && !knownType.isResolved)
            ? '<'
            : '${knownType.getTypeName(NullabilitySuffix.none)}<';

  final String typeName;
  final String genTypeName;
  final String pckUri;

  bool isMatch(DartType type) {
    final baseName = type.baseName;
    if (baseName == typeName || baseName.startsWith(genTypeName)) {
      return pckUri.isEmpty || type.isFromPackage(pckUri);
    } else {
      return false;
    }
  }
}
