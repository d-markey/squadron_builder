// ignore_for_file: deprecated_member_use

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart' as element_;
import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart' as visitor_;
import 'package:meta/meta.dart';

import '_helpers.dart';
import 'assets/worker_assets.dart';
import 'types/managed_type.dart';

export 'package:analyzer/dart/element/element.dart';

typedef Element = element_.Element;
typedef FieldElement = element_.FieldElement;
typedef PropertyAccessorElement = element_.PropertyAccessorElement;
typedef LibraryImportElement = element_.LibraryImportElement;
typedef LibraryElement = element_.LibraryElement;
typedef ElementLocation = element_.ElementLocation;
typedef ClassElement = element_.ClassElement;
typedef MethodElement = element_.MethodElement;
typedef FieldFormalParameterElement = element_.FieldFormalParameterElement;
typedef EnumElement = element_.EnumElement;
typedef ExtensionElement = element_.ExtensionElement;
typedef ParameterElement = element_.ParameterElement;
typedef ConstructorElement = element_.ConstructorElement;
typedef InterfaceElement = element_.InterfaceElement;
typedef TypeParameterElement = element_.TypeParameterElement;

typedef SimpleElementVisitor = visitor_.SimpleElementVisitor;

@internal
extension ElementExt on Element {
  Iterable<DartObject> getAnnotations() =>
      metadata.map((a) => a.computeConstantValue()).nonNulls;

  Iterable<DartObject> findAnnotations<T>() {
    final targetAnnotationName = T.toString();
    return getAnnotations()
        .where((v) => v.type?.getDisplayString() == targetAnnotationName);
  }

  LibraryElement? get lib => library;

  Element get declarationOrSelf => declaration ?? this;

  Element? get enclosingElt => enclosingElement3;
}

@internal
extension MethodElementExt on MethodElement {
  List<TypeParameterElement> get typeParams => typeParameters;
}

@internal
extension FieldElementExt on FieldElement {
  String forwardTo(String target, WorkerAssets assets) {
    final typeName = assets.typeManager.getTypeName(type);
    final override = assets.override;
    return '''
      $override $typeName get $name => $target.$name;
      ${isFinal ? '' : '$override set $name($typeName value) => $target.$name = value;'}
    ''';
  }

  String override(WorkerAssets assets) {
    final typeName = assets.typeManager.getTypeName(type);
    final override = assets.override;
    return '$override ${isFinal ? 'final ' : ''}$typeName $name;';
  }
}

@internal
extension PropertyAccessorElementExt on PropertyAccessorElement {
  String get property => isGetter ? name : name.replaceAll('=', '');

  bool get isOperationsMap => property == 'operations';

  String forwardTo(String target, WorkerAssets assets) {
    final type = assets.typeManager.getTypeName(returnType);
    final override = assets.override;
    return isGetter
        ? '$override $type get $property => $target.$property;'
        : '$override set $property($type value) => $target.$property = value;';
  }

  String unimpl(WorkerAssets assets) {
    final type = assets.typeManager.getTypeName(returnType);
    return assets.unimpl(
      isGetter ? '$type get $property' : 'set $property($type value)',
      override: true,
      unused: true,
    );
  }
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

extension on LibraryImportElement {
  bool isFromPackage(String pckUri) =>
      importedLibrary?.isFromPackage(pckUri) ?? false;
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
  Element? get elt => element;

  String get baseName => element3?.name3 ?? '<anonymous>';

  bool get isEnum => element3 is EnumElement2;

  Iterable<DartType> implementedTypes(ManagedType knownType,
      {bool includeSelf = false}) sync* {
    final isMatch = TypeFilter(knownType).isMatch;
    if (includeSelf && isMatch(this)) {
      yield this;
    }
    if (element3 is ClassElement2) {
      yield* (element3 as ClassElement2).allSupertypes.where(isMatch);
    }
  }

  bool isA(ManagedType knownType) =>
      implementedTypes(knownType, includeSelf: true).isNotEmpty;

  bool isFromPackage(String pckUri) =>
      element?.location?.isFromPackage(pckUri) ?? false;
}

@internal
extension FunctionTypeExt on FunctionType {
  List<ParameterElement> get params => parameters;
}

@internal
extension NullabilitySuffixExt on NullabilitySuffix {
  String get suffix => switch (this) {
        NullabilitySuffix.none => '',
        NullabilitySuffix.question => '?',
        NullabilitySuffix.star => '*'
      };
}
