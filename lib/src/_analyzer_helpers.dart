// ignore_for_file: deprecated_member_use

import 'package:analyzer/dart/constant/value.dart' as value_;
import 'package:analyzer/dart/element/element2.dart' as element_;
import 'package:analyzer/dart/element/nullability_suffix.dart' as nullable_;
import 'package:analyzer/dart/element/type.dart' as type_;
import 'package:analyzer/dart/element/visitor2.dart' as visitor_;
import 'package:meta/meta.dart';

import '_helpers.dart';
import 'assets/worker_assets.dart';
import 'types/managed_type.dart';

export 'package:analyzer/dart/constant/value.dart';
export 'package:analyzer/dart/element/nullability_suffix.dart';
export 'package:analyzer/dart/element/type.dart';

typedef Annotatable = element_.Annotatable;
typedef Element = element_.Element2;
typedef FieldElement = element_.FieldElement2;
typedef PropertyAccessorElement = element_.PropertyAccessorElement2;
typedef LibraryElement = element_.LibraryElement2;
typedef ClassElement = element_.ClassElement2;
typedef MethodElement = element_.MethodElement2;
typedef FieldFormalParameterElement = element_.FieldFormalParameterElement2;
typedef ExtensionElement = element_.ExtensionElement2;
typedef ParameterElement = element_.FormalParameterElement;
typedef ConstructorElement = element_.ConstructorElement2;
typedef InterfaceElement = element_.InterfaceElement2;
typedef ExecutableElement = element_.ExecutableElement2;

typedef SimpleElementVisitor<T> = visitor_.GeneralizingElementVisitor2<T>;

@internal
extension ElementExt on Element {
  String get name => name3 ?? '';

  void visitChildren<T>(element_.ElementVisitor2<T> visitor) =>
      visitChildren2(visitor);

  LibraryElement? get libElt => switch (this) {
        LibraryElement() => this as LibraryElement,
        _ => library2,
      };

  Iterable<value_.DartObject> getAnnotations() {
    if (this case final Annotatable annotatable) {
      return annotatable.metadata2.annotations
          .map((a) => a.computeConstantValue())
          .nonNulls;
    } else {
      return const [];
    }
  }

  Iterable<value_.DartObject> findAnnotations<T>() {
    final targetAnnotationName = T.toString();
    return getAnnotations()
        .where((a) => a.type?.getDisplayString() == targetAnnotationName);
  }

  Element get baseElt => baseElement;

  Element? get enclosingElt => enclosingElement2;
}

@internal
extension ClassElementExt on ClassElement {
  ConstructorElement? get unnamedCtorElt => unnamedConstructor2;

  List<ConstructorElement> get constructorElts => constructors2;

  List<MethodElement> get methodElts => methods2;

  List<element_.GetterElement> get getterElts => getters2;

  List<element_.SetterElement> get setterElts => setters2;
}

@internal
extension FieldFormalParameterElementExt on FieldFormalParameterElement {
  FieldElement? get fldElt => field2;
}

@internal
extension ExecutableElementExt on ExecutableElement {
  bool get isInstanceImpl => !isStatic && !isAbstract;

  bool get isStaticImpl => isStatic && !isAbstract;

  List<element_.TypeParameterElement2> get typeParamElts => typeParameters2;
}

@internal
extension FieldElementExt on FieldElement {
  bool get isInstanceImpl => !isStatic && !isAbstract;

  bool get isStaticImpl => isStatic && !isAbstract;

  String forwardTo(String target, WorkerAssets assets) {
    final typeName = assets.typeManager.getTypeName(type);
    return '''
      ${assets.override_} $typeName get $name => $target.$name;
      ${isFinal ? '' : '${assets.override_} set $name($typeName value) => $target.$name = value;'}
    ''';
  }

  String override(WorkerAssets assets) =>
      '${assets.override_} ${isFinal ? 'final ' : ''}${assets.typeManager.getTypeName(type)} $name;';
}

@internal
extension PropertyAccessorElementExt on PropertyAccessorElement {
  bool get isSetter => this is element_.SetterElement;

  bool get isGetter => this is element_.GetterElement;

  bool get isInstanceImpl => !isStatic && !isAbstract;

  bool get isStaticImpl => isStatic && !isAbstract;

  String get property => isGetter ? name : name.replaceAll('=', '');

  bool get isOperationsMap => property == 'operations';

  String forwardTo(String target, WorkerAssets assets) => isGetter
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
extension LibraryElementExt on LibraryElement {
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

  Iterable<element_.LibraryImport> get allImports => fragments
      .expand((f) =>
          [...f.libraryImports2, ...?f.enclosingFragment?.libraryImports2])
      .toSet();

  Iterable<element_.LibraryExport> get allExports => fragments
      .expand((f) =>
          [...f.libraryExports2, ...?f.enclosingFragment?.libraryExports2])
      .toSet();

  static Iterable<ExtensionElement> _filter(
      type_.DartType type,
      Iterable<ExtensionElement> extensions,
      List<String> show,
      List<String> hide) sync* {
    for (var ext in extensions) {
      // get extension name, default to '_' (private)
      final name = ext.name.isEmpty ? '_' : ext.name;
      // ignore private, hidden extensions and extensions not targeting the required type
      if (name.startsWith('_')) continue;
      if (hide.contains(name)) continue;
      if (!type.inheritsFrom(ext.extendedType, superOnly: false)) {
        continue;
      }
      // return if shown
      if (show.isEmpty || show.contains(name)) yield ext;
    }
  }

  Iterable<ExtensionElement> _lookupExtensionsFor(type_.DartType type,
      {required bool exports,
      List<String> show = const [],
      List<String> hide = const []}) sync* {
    yield* _filter(type, extensions, show, hide);

    if (exports) {
      for (var export in allExports) {
        yield* _filter(
            type,
            export.exportedLibrary2?._lookupExtensionsFor(type,
                    exports: true,
                    show: export.combinators
                        .whereType<element_.ShowElementCombinator>()
                        .expand((s) => s.shownNames)
                        .toList(),
                    hide: export.combinators
                        .whereType<element_.HideElementCombinator>()
                        .expand((s) => s.hiddenNames)
                        .toList()) ??
                const [],
            show,
            hide);
      }
    } else {
      for (var import in allImports) {
        yield* _filter(
            type,
            import.importedLibrary2?._lookupExtensionsFor(type,
                    exports: true,
                    show: import.combinators
                        .whereType<element_.ShowElementCombinator>()
                        .expand((s) => s.shownNames)
                        .toList(),
                    hide: import.combinators
                        .whereType<element_.HideElementCombinator>()
                        .expand((s) => s.hiddenNames)
                        .toList()) ??
                const [],
            show,
            hide);
      }
    }
  }

  List<ExtensionElement> lookupExtensionsFor(type_.DartType type) =>
      _lookupExtensionsFor(type, exports: false).toList();

  Map<LibraryElement, String?> get _allImportPrefixes {
    final map = <LibraryElement, String>{};
    for (final imp in allImports) {
      final lib = imp.importedLibrary2;
      if (lib == null) continue;
      final pfx = imp.prefix2?.name2 ?? '';
      map.update(lib, (prev) => prev.isNotEmpty ? prev : pfx,
          ifAbsent: () => pfx);
    }
    return map;
  }

  bool _isFromPackage(String pckUri) => uri.toString().contains(pckUri);

  String? getPrefixFor(String pckUri) => _allImportPrefixes.entries
      .where((i) => i.key._isFromPackage(pckUri))
      .firstOrNull
      ?.value;
}

@internal
extension LibraryImportElementExt on element_.LibraryImport {
  bool isFromPackage(String pckUri) =>
      importedLibrary2?._isFromPackage(pckUri) ?? false;
}

@internal
extension DartObjectExt on value_.DartObject? {
  String getString(String fieldName) =>
      this?.getField(fieldName)?.toStringValue()?.trim() ?? '';

  int getInt(String fieldName) => this?.getField(fieldName)?.toIntValue() ?? 0;

  bool getBool(String fieldName) =>
      this?.getField(fieldName)?.toBoolValue() ?? false;

  bool? getNullableBool(String fieldName) =>
      this?.getField(fieldName)?.toBoolValue();

  element_.VariableElement2? get varElt => this?.variable2;
}

@internal
extension DartTypeExt on type_.DartType {
  Element? get elt => element3;

  String get baseName {
    final name = elt?.name ?? '';
    return name.isEmpty ? '<anonymous>' : name;
  }

  bool get isEnum => elt is element_.EnumElement2;

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

  Iterable<type_.DartType> implementedTypes(ManagedType knownType,
      {bool includeSelf = false}) sync* {
    final isMatch = TypeFilter(knownType).isMatch;
    if (includeSelf && isMatch(this)) {
      yield this;
    }
    if (elt case final ClassElement clazzElt) {
      yield* clazzElt.allSupertypes.where(isMatch);
    }
  }

  bool isA(ManagedType knownType) =>
      implementedTypes(knownType, includeSelf: true).isNotEmpty;

  bool inheritsFrom(type_.DartType baseType, {required bool superOnly}) {
    if (!superOnly && this == baseType) {
      return true;
    } else if (elt case final ClassElement clazzElt) {
      return clazzElt.allSupertypes.any((t) => baseType == t);
    } else {
      return false;
    }
  }

  bool isFromPackage(String pckUri) =>
      element?.location?._isFromPackage(pckUri) ?? false;
}

@internal
extension FunctionTypeExt on type_.FunctionType {
  List<ParameterElement> get paramElts => formalParameters;
}

@internal
extension NullabilitySuffixExt on nullable_.NullabilitySuffix {
  String get suffix => switch (this) {
        nullable_.NullabilitySuffix.none => '',
        nullable_.NullabilitySuffix.question => '?',
        nullable_.NullabilitySuffix.star => '*'
      };
}

extension on element_.ElementLocation {
  bool _isFromPackage(String pckUri) =>
      components.any((c) => c.startsWith(pckUri));
}
