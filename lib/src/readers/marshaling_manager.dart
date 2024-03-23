import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart';

import '../marshalers/marshaler.dart';
import '../marshalers/marshaling_info.dart';
import '../types/managed_type.dart';
import '../types/type_manager.dart';

class MarshalingManager extends SimpleElementVisitor {
  MarshalingManager(this._typeManager);

  final TypeManager _typeManager;

  final _cache = <Element, MarshalingInfo>{};

  MarshalingInfo _getOrAddMarshalingInfo(DartType type, Element clazz) {
    var entry = _cache[clazz];
    if (entry == null) {
      final marshaler = _typeManager.getExplicitMarshaler(clazz);
      entry = MarshalingInfo(_typeManager.handleDartType(type), marshaler);
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
    if (element.name == 'unmarshal') {
      // only interested in constructor 'unmarshal()'
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
    if ((!element.isStatic && element.name == 'marshal') ||
        (element.isStatic && element.name == 'unmarshal')) {
      // only interested in instance method 'marshal()' or static method 'unmarshal()'
      info.registerMethod(element);
    }
  }

  Marshaler getMarshalerFor(ParameterElement param) {
    final explicitMarshaler = _typeManager.getExplicitMarshaler(param);
    final type = (param is FieldFormalParameterElement && param.field != null)
        ? param.field!.type
        : param.type;
    return getMarshaler(_typeManager.handleDartType(type),
        explicit: explicitMarshaler);
  }

  Marshaler getMarshaler(ManagedType type, {Marshaler? explicit}) {
    if (type is ManagedDynamicType ||
        type is ManagedVoidType ||
        type.dartType == null) {
      return Marshaler.identity;
    }

    if (explicit != null && explicit.targets(type)) {
      return explicit;
    }

    if (type.dartType!.isDartCoreList || type.dartType!.isDartCoreIterable) {
      final itemType = type.typeArguments.first;
      if (explicit != null && explicit.targets(itemType)) {
        return Marshaler.iterable(type, explicit);
      }
      explicit = getMarshaler(itemType, explicit: explicit);
      return Marshaler.iterable(type, explicit);
    }

    if (type.dartType!.isDartCoreMap) {
      final itemType = type.typeArguments.last;
      if (explicit != null && explicit.targets(itemType)) {
        return Marshaler.map(type, explicit);
      }
      explicit = getMarshaler(itemType, explicit: explicit);
      return Marshaler.map(type, explicit);
    }

    if (type is ManagedRecordType) {
      final marshalers = type.positional
          .followedBy(type.named.values)
          .map(getMarshaler)
          .toList();
      return Marshaler.record(type, marshalers);
    }

    final elt = type.dartType!.element;
    if (elt == null) {
      // type has no associated element
      return Marshaler.identity;
    }

    elt.visitChildren(this);
    final decl = elt.declaration;
    return (decl == null)
        ? Marshaler.identity
        : _getOrAddMarshalingInfo(type.dartType!, decl).marshaler;
  }
}
