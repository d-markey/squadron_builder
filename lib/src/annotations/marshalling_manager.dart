import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart';

import 'annotations_reader.dart';
import 'marshallers/marshaller.dart';
import 'marshallers/marshalling_info.dart';

class MarshallingManager extends SimpleElementVisitor {
  MarshallingManager();

  final _cache = <Element, MarshallingInfo>{};

  MarshallingInfo _getOrAddMarshallingInfo(DartType type, Element clazz) {
    var entry = _cache[clazz];
    if (entry == null) {
      final marshaller = AnnotationReader.getExplicitMarshaller(clazz);
      entry = MarshallingInfo(type, marshaller);
      _cache[clazz] = entry;
    }
    return entry;
  }

  @override
  void visitConstructorElement(ConstructorElement element) {
    element = element.declaration;
    final clazz = element.enclosingElement;
    final info = _getOrAddMarshallingInfo(clazz.thisType, clazz);
    if (element.isFactory && element.name == 'fromJson') {
      // only interested in factory constructor 'fromJson()'
      info.registerMethod(element);
    }
  }

  @override
  void visitMethodElement(MethodElement element) {
    element = element.declaration;
    final clazz = element.enclosingElement;
    if (clazz is! InterfaceElement) {
      return;
    }
    final info = _getOrAddMarshallingInfo(clazz.thisType, clazz);
    if ((!element.isStatic && element.name == 'toJson') ||
        (element.isStatic && element.name == 'fromJson')) {
      // only interested in instance method 'toJson()' or static method 'fromJson()'
      info.registerMethod(element);
    }
  }

  Marshaller getMarshallerFor(ParameterElement param) {
    final explicitMarshaller = AnnotationReader.getExplicitMarshaller(param);
    final type = (param is FieldFormalParameterElement && param.field != null)
        ? param.field!.type
        : param.type;
    return getMarshaller(type, explicit: explicitMarshaller);
  }

  Marshaller getMarshaller(DartType type, {Marshaller? explicit}) {
    if (type is DynamicType) {
      return Marshaller.identity;
    }

    if (explicit != null && explicit.targets(type)) {
      return explicit;
    }

    if (type.isDartCoreList || type.isDartCoreIterable) {
      final itemType = (type as ParameterizedType).typeArguments.first;
      if (explicit != null && explicit.targets(itemType)) {
        return Marshaller.iterable(type, explicit);
      }
      explicit = getMarshaller(itemType, explicit: explicit);
      return Marshaller.iterable(type, explicit);
    }

    if (type.isDartCoreMap) {
      final itemType = (type as ParameterizedType).typeArguments.last;
      if (explicit != null && explicit.targets(itemType)) {
        return Marshaller.map(type, explicit);
      }
      explicit = getMarshaller(itemType, explicit: explicit);
      return Marshaller.map(type, explicit);
    }

    type.element!.visitChildren(this);
    final element = type.element?.declaration;
    return (element == null)
        ? Marshaller.identity
        : _getOrAddMarshallingInfo(type, element).marshaller;
  }
}
