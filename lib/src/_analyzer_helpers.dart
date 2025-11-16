import 'package:analyzer/dart/constant/value.dart' as value_;
import 'package:analyzer/dart/element/element.dart' as element_;
import 'package:analyzer/dart/element/nullability_suffix.dart' as nullable_;
import 'package:analyzer/dart/element/type.dart' as type_;
import 'package:meta/meta.dart';

import '_helpers.dart';
import 'assets/worker_assets.dart';
import 'types/managed_type.dart';

export 'package:analyzer/dart/constant/value.dart';
export 'package:analyzer/dart/element/element.dart';
export 'package:analyzer/dart/element/nullability_suffix.dart';
export 'package:analyzer/dart/element/type.dart';
export 'package:analyzer/dart/element/visitor2.dart';

@internal
extension ElementExt on element_.Element {
  Iterable<value_.DartObject> getAnnotations() =>
      metadata.annotations.map((a) => a.computeConstantValue()).nonNulls;

  Iterable<value_.DartObject> findAnnotations<T>() {
    final targetAnnotationName = T.toString();
    return getAnnotations().where(
      (a) => a.type?.getDisplayString() == targetAnnotationName,
    );
  }
}

@internal
extension ExecutableElementExt on element_.ExecutableElement {
  bool get isInstanceImpl => !isStatic && !isAbstract;

  bool get isStaticImpl => isStatic && !isAbstract;
}

@internal
extension FieldElementExt on element_.FieldElement {
  bool get isInstanceImpl => !isStatic && !isAbstract;

  bool get isStaticImpl => isStatic && !isAbstract;

  String forwardTo(String target, WorkerAssets assets) {
    final typeName = assets.typeManager.getTypeName(type);
    return '''
      ${assets.override_} $typeName get $name => $target.$name;
      ${isFinal ? '' : '${assets.override_} set $name($typeName value) => $target.$name = value;'}
    ''';
  }

  String override(WorkerAssets assets, {bool forceLate = false}) =>
      '${assets.override_} ${forceLate ? 'late ' : ''}${isFinal ? 'final ' : ''}${assets.typeManager.getTypeName(type)} $name;';
}

@internal
extension PropertyAccessorElementExt on element_.PropertyAccessorElement {
  bool get isInstanceImpl => !isStatic && !isAbstract;

  bool get isStaticImpl => isStatic && !isAbstract;

  bool get isSetter => this is element_.SetterElement;

  bool get isGetter => this is element_.GetterElement;

  String get property {
    final prop = name ?? '';
    return isGetter ? prop : prop.replaceAll('=', '');
  }

  bool get isOperationsMap => property == 'operations';

  String forwardTo(String target, WorkerAssets assets) =>
      isGetter
          ? '${assets.override_} ${assets.typeManager.getTypeName(returnType)} get $property => $target.$property;'
          : '${assets.override_} set $property(${assets.typeManager.getTypeName(returnType)} \$value) => $target.$property = \$value;';

  String unimpl(WorkerAssets assets) => assets.unimpl(
    isGetter
        ? '${assets.typeManager.getTypeName(returnType)} get $property'
        : 'set $property(${assets.typeManager.getTypeName(returnType)} \$value)',
    override: true,
    unused: true,
  );
}

@internal
extension LibraryElementExt on element_.LibraryElement {
  String get path {
    var p = uri.toString();
    if (p.startsWith('asset:')) {
      p = p.substring('asset:'.length);
      final slash = p.indexOf('/');
      if (slash >= 0) {
        p = p.substring(slash + 1);
      }
    }
    return p;
  }

  Set<element_.LibraryImport> get allImports =>
      fragments
          .expand(
            (f) => [
              ...f.libraryImports,
              ...?f.enclosingFragment?.libraryImports,
            ],
          )
          .toSet();

  Set<element_.LibraryExport> get allExports =>
      fragments
          .expand(
            (f) => [
              ...f.libraryExports,
              ...?f.enclosingFragment?.libraryExports,
            ],
          )
          .toSet();

  static Iterable<element_.ExtensionElement> _filterExtensionsFor(
    type_.DartType type,
    Iterable<element_.ExtensionElement> extensions, [
    List<String>? show,
    List<String>? hide,
  ]) sync* {
    show ??= const [];
    hide ??= const [];
    for (var ext in extensions) {
      // get extension name, default to '_' (private)
      final name = ext.name ?? '';
      // ignore private, hidden extensions and extensions not targeting the required type
      if (name.isEmpty || name.startsWith('_') || hide.contains(name)) continue;
      if (!type.inheritsFrom(ext.extendedType, superOnly: false)) {
        continue;
      }
      // return if shown
      if (show.isEmpty || show.contains(name)) yield ext;
    }
  }

  static String _seenKey(
    element_.LibraryElement lib,
    List<String> show,
    List<String> hide,
  ) => '${lib.uri} / ${hide.join(',')} / ${show.join(',')}';

  Iterable<element_.ExtensionElement> _lookupExportedExtensionsFor(
    type_.DartType type,
    Set<String> visited,
    List<String> show,
    List<String> hide,
  ) sync* {
    if (!visited.add(_seenKey(this, show, hide))) return;

    yield* _filterExtensionsFor(type, extensions, show, hide);

    for (var export in allExports) {
      final lib = export.exportedLibrary;
      if (lib == null) continue;
      yield* _filterExtensionsFor(
        type,
        lib._lookupExportedExtensionsFor(
          type,
          visited,
          export.combinators.shownNames,
          export.combinators.hiddenNames,
        ),
        show,
        hide,
      );
    }
  }

  /// Returns all public extensions that can be applied to the specified [type]
  /// from this library. Extensions are searched in the current library and in
  /// the libraries imported from this library. If an imported library exports
  /// additional libraries, the exported libraries are inspected recursively.
  ///
  /// Eg.:
  ///
  /// ```dart
  /// // lib A.dart
  /// import 'B.dart';
  /// extension A on TargetType { ... }
  ///
  /// // lib B.dart
  /// import 'C.dart';
  /// export 'D.dart';
  /// extension B on TargetType { ... }
  ///
  /// // lib C.dart
  /// extension C on TargetType { ... }
  ///
  /// // lib D.dart
  /// extension D on TargetType { ... }
  /// ```
  ///
  /// Searching for extensions on `TargetType` from library `A.dart` will
  /// yield extensions `A`, `B` and `D`.
  Iterable<element_.ExtensionElement> _lookupExtensionsFor(
    type_.DartType type,
  ) sync* {
    final visited = {_seenKey(this, const [], const [])};

    yield* _filterExtensionsFor(type, extensions);

    for (var import in allImports) {
      final lib = import.importedLibrary;
      if (lib == null) continue;
      yield* _filterExtensionsFor(
        type,
        lib._lookupExportedExtensionsFor(
          type,
          visited,
          import.combinators.shownNames,
          import.combinators.hiddenNames,
        ),
      );
    }
  }

  Set<element_.ExtensionElement> lookupExtensionsFor(type_.DartType type) =>
      _lookupExtensionsFor(type).toSet();

  Map<element_.LibraryElement, String?> get _allImportPrefixes {
    final map = <element_.LibraryElement, String>{};
    for (final imp in allImports) {
      final lib = imp.importedLibrary;
      if (lib == null) continue;
      final pfx = imp.prefix?.name ?? '';
      map.update(
        lib,
        (prev) => prev.isNotEmpty ? prev : pfx,
        ifAbsent: () => pfx,
      );
    }
    return map;
  }

  String? getPrefixFor(String pckUri) =>
      _allImportPrefixes.entries
          .where((i) => i.key.uri._isFromPackage(pckUri))
          .firstOrNull
          ?.value;
}

@internal
extension LibraryImportElementExt on element_.LibraryImport {
  bool isFromPackage(String pckUri) =>
      importedLibrary?.uri._isFromPackage(pckUri) ?? false;
}

@internal
extension DartObjectExt on value_.DartObject? {
  String getString(String fieldName) =>
      this?.getField(fieldName)?.toStringValue()?.trim() ?? '';

  int getInt(String fieldName) => getNullableInt(fieldName) ?? 0;

  int? getNullableInt(String fieldName) =>
      this?.getField(fieldName)?.toIntValue();

  bool getBool(String fieldName) => getNullableBool(fieldName) ?? false;

  bool? getNullableBool(String fieldName) =>
      this?.getField(fieldName)?.toBoolValue();
}

@internal
extension DartTypeExt on type_.DartType {
  String get baseName {
    final name = element?.name ?? '';
    return name.isEmpty ? '<anonymous>' : name;
  }

  bool get isEnum => element is element_.EnumElement;

  bool get isBaseType =>
      isDartCoreBool ||
      isDartCoreDouble ||
      isDartCoreInt ||
      isDartCoreNum ||
      isDartCoreString;

  // check type is not a stream, a future, or void
  bool get isSync =>
      !isDartAsyncFuture &&
      !isDartAsyncFutureOr &&
      !isDartAsyncStream &&
      this is! type_.VoidType;

  // check type is a Map, a List, a String, or dynamic
  bool get isJson =>
      isDartCoreMap ||
      isDartCoreList ||
      isDartCoreString ||
      this is type_.DynamicType;

  Iterable<type_.DartType> implementedTypes(
    ManagedType knownType, {
    bool includeSelf = false,
  }) sync* {
    final isMatch = TypeFilter(knownType).isMatch;
    if (includeSelf && isMatch(this)) {
      yield this;
    }
    if (element case final element_.ClassElement clazzElt) {
      yield* clazzElt.allSupertypes.where(isMatch);
    }
  }

  bool isA(ManagedType knownType) =>
      implementedTypes(knownType, includeSelf: true).isNotEmpty;

  bool inheritsFrom(type_.DartType baseType, {required bool superOnly}) {
    if (!superOnly && this == baseType) {
      return true;
    } else if (element case final element_.ClassElement clazzElt) {
      return clazzElt.allSupertypes.any((t) => baseType == t);
    } else {
      return false;
    }
  }

  bool isFromPackage(String pckUri) =>
      element?.fragments.any(
        (f) => f.libraryFragment?.source.uri._isFromPackage(pckUri) ?? false,
      ) ??
      false;
}

@internal
extension NullabilitySuffixExt on nullable_.NullabilitySuffix {
  String get suffix => switch (this) {
    nullable_.NullabilitySuffix.none => '',
    nullable_.NullabilitySuffix.question => '?',
    nullable_.NullabilitySuffix.star => '*',
  };
}

extension on Uri {
  bool _isFromPackage(String pckUri) => toString().startsWith(pckUri);
}

extension on List<element_.NamespaceCombinator> {
  List<String> get shownNames =>
      whereType<element_.ShowElementCombinator>()
          .expand((s) => s.shownNames)
          .toList();

  List<String> get hiddenNames =>
      whereType<element_.HideElementCombinator>()
          .expand((s) => s.hiddenNames)
          .toList();
}
