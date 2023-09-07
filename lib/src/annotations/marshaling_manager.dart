import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart';

import 'annotations_reader.dart';
import 'marshalers/marshaler.dart';
import 'marshalers/marshaling_info.dart';

class MarshalingManager extends SimpleElementVisitor {
  MarshalingManager();

  final _cache = <Element, MarshalingInfo>{};

  MarshalingInfo _getOrAddMarshalingInfo(DartType type, Element clazz) {
    var entry = _cache[clazz];
    if (entry == null) {
      final marshaler = AnnotationReader.getExplicitMarshaler(clazz);
      entry = MarshalingInfo(type, marshaler);
      _cache[clazz] = entry;
    }
    return entry;
  }

  @override
  void visitConstructorElement(ConstructorElement element) {
    element = element.declaration;
    final clazz = element.enclosingElement;
    final info = _getOrAddMarshalingInfo(clazz.thisType, clazz);
    if (element.name == 'fromJson') {
      // only interested in constructor 'fromJson()'
      info.registerMethod(element);
    }
    if (element.name == 'unmarshall' || element.name == 'unmarshal') {
      // only interested in constructors 'unmarshall()' / 'unmarshal()'
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
    final info = _getOrAddMarshalingInfo(clazz.thisType, clazz);
    if ((!element.isStatic && element.name == 'toJson') ||
        (element.isStatic && element.name == 'fromJson')) {
      // only interested in instance method 'toJson()' or static method 'fromJson()'
      info.registerMethod(element);
    }
    if ((!element.isStatic &&
            (element.name == 'marshall' || element.name == 'marshal')) ||
        (element.isStatic &&
            (element.name == 'unmarshall' || element.name == 'unmarshal'))) {
      // only interested in instance method 'marshall()' / 'marshal()' or static method
      // 'unmarshall()' / 'unmarshal()'
      info.registerMethod(element);
    }
  }

  Marshaler getMarshalerFor(ParameterElement param) {
    final explicitMarshaler = AnnotationReader.getExplicitMarshaler(param);
    final type = (param is FieldFormalParameterElement && param.field != null)
        ? param.field!.type
        : param.type;
    return getMarshaler(type, explicit: explicitMarshaler);
  }

  Marshaler getMarshaler(DartType type, {Marshaler? explicit}) {
    if (type is DynamicType || type is VoidType) {
      return Marshaler.identity;
    }

    if (explicit != null && explicit.targets(type)) {
      return explicit;
    }

    if (type.isDartCoreList || type.isDartCoreIterable) {
      final itemType = (type as ParameterizedType).typeArguments.first;
      if (explicit != null && explicit.targets(itemType)) {
        return Marshaler.iterable(type, explicit);
      }
      explicit = getMarshaler(itemType, explicit: explicit);
      return Marshaler.iterable(type, explicit);
    }

    if (type.isDartCoreMap) {
      final itemType = (type as ParameterizedType).typeArguments.last;
      if (explicit != null && explicit.targets(itemType)) {
        return Marshaler.map(type, explicit);
      }
      explicit = getMarshaler(itemType, explicit: explicit);
      return Marshaler.map(type, explicit);
    }

    final elt = type.element;
    if (elt == null) {
      // type has no associated element
      return Marshaler.identity;
    }

    elt.visitChildren(this);
    final decl = elt.declaration;
    return (decl == null)
        ? Marshaler.identity
        : _getOrAddMarshalingInfo(type, decl).marshaler;
  }
}
