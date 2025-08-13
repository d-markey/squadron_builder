// ignore_for_file: deprecated_member_use

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element2.dart' as element_;
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart' as visitor_;
import 'package:meta/meta.dart';
import 'package:squadron_builder/src/types/type_manager.dart';

import '_helpers.dart';
import 'assets/worker_assets.dart';
import 'types/managed_type.dart';

export 'package:analyzer/dart/element/element.dart';

typedef Annotatable = element_.Annotatable;

typedef Element = element_.Element2;
typedef FieldElement = element_.FieldElement2;
typedef PropertyAccessorElement = element_.PropertyAccessorElement2;
typedef LibraryImportElement = element_.LibraryImport;
typedef LibraryElement = element_.LibraryElement2;
typedef ElementLocation = element_.ElementLocation;
typedef ClassElement = element_.ClassElement2;
typedef MethodElement = element_.MethodElement2;
typedef FieldFormalParameterElement = element_.FieldFormalParameterElement2;
typedef EnumElement = element_.EnumElement2;
typedef ExtensionElement = element_.ExtensionElement2;
typedef ParameterElement = element_.FormalParameterElement;
typedef ConstructorElement = element_.ConstructorElement2;
typedef InterfaceElement = element_.InterfaceElement2;
typedef TypeParameterElement = element_.TypeParameterElement2;

typedef SimpleElementVisitor<T> = visitor_.SimpleElementVisitor<T>;

@internal
extension ElementExt on Element {
  Iterable<DartObject> getAnnotations() {
    if (this case final Annotatable annotatable) {
      final annotations = annotatable.metadata2.annotations;
      return annotations.map((a) => a.computeConstantValue()).nonNulls;
    }
    return Iterable.empty();
  }

  Iterable<DartObject> findAnnotations<T>() {
    final targetAnnotationName = T.toString();
    return getAnnotations()
        .where((v) => v.type?.getDisplayString() == targetAnnotationName);
  }

  Element get declarationOrSelf => baseElement;

  Element? get enclosingElt => enclosingElement2;
}

@internal
extension MethodElementExt on MethodElement {
  List<TypeParameterElement> get typeParams => typeParameters2;
}

@internal
extension FieldElementExt on FieldElement {
  String forwardTo(String target, WorkerAssets assets) {
    final typeName = assets.typeManager.getTypeName(type);
    return '''
      ${assets.override_} $typeName get $name3 => $target.$name3;
      ${isFinal ? '' : '${assets.override_} set $name3($typeName value) => $target.$name3 = value;'}
    ''';
  }

  String override(WorkerAssets assets) =>
      '${assets.override_} ${isFinal ? 'final ' : ''}${assets.typeManager.getTypeName(type)} $name3;';
}

@internal
extension PropertyAccessorElementExt on PropertyAccessorElement {
  bool get isGetter => variable3?.getter2 != null;

  String get property =>
      isGetter ? name3 ?? '' : name3?.replaceAll('=', '') ?? '';

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
  List<LibraryElement> get importedLibraries =>
      firstFragment.importedLibraries2;

  bool isFromPackage(String pckUri) => uri.path.contains(pckUri);

  LibraryElement? getImport(String pckUri) =>
      importedLibraries.where((i) => i.isFromPackage(pckUri)).firstOrNull;

  String? getPrefixFor(String pckUri) {
    final import = firstFragment.libraryImports2
        .where((i) => i.isFromPackage(pckUri))
        .firstOrNull;

    if (import == null) return null;
    return import.prefix2?.name2 ?? '';
  }
}

@internal
extension ElementLocationExt on ElementLocation {
  bool isFromPackage(String pckUri) =>
      components.any((c) => c.startsWith(pckUri));
}

extension on LibraryImportElement {
  bool isFromPackage(String pckUri) =>
      importedLibrary2?.isFromPackage(pckUri) ?? false;
}

@internal
extension DartObjectExt on DartObject? {
  String getString(String fieldName) =>
      this?.getField(fieldName)?.toStringValue()?.trim() ?? '';

  int getInt(String fieldName) => this?.getField(fieldName)?.toIntValue() ?? 0;

  bool getBool(String fieldName) =>
      this?.getField(fieldName)?.toBoolValue() ?? false;

  bool? getNullableBool(String fieldName) =>
      this?.getField(fieldName)?.toBoolValue();
}

@internal
extension DartTypeExt on DartType {
  Element? get elt => element3;

  String get baseName => element3?.name3 ?? '<anonymous>';

  bool get isEnum => element3 is EnumElement;

  Iterable<DartType> implementedTypes(ManagedType knownType,
      {bool includeSelf = false}) sync* {
    final isMatch = TypeFilter(knownType).isMatch;
    if (includeSelf && isMatch(this)) {
      yield this;
    }
    if (element3 is ClassElement) {
      yield* (element3 as ClassElement).allSupertypes.where(isMatch);
    }
  }

  bool isA(ManagedType knownType) =>
      implementedTypes(knownType, includeSelf: true).isNotEmpty;

  bool isFromPackage(String pckUri) =>
      element?.location?.isFromPackage(pckUri) ?? false;
}

@internal
extension FunctionTypeExt on FunctionType {
  List<ParameterElement> get params => formalParameters;
}

@internal
extension NullabilitySuffixExt on NullabilitySuffix {
  String get suffix => switch (this) {
        NullabilitySuffix.none => '',
        NullabilitySuffix.question => '?',
        NullabilitySuffix.star => '*'
      };
}
