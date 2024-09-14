import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:source_gen/source_gen.dart';

import '../marshalers/marshaler.dart';
import '../marshalers/marshaling_info.dart';
import '../readers/annotations_reader.dart';
import '../types/extensions.dart';
import '../types/managed_type.dart';
import '../types/type_manager.dart';

class MarshalingManager extends SimpleElementVisitor {
  MarshalingManager(this._typeManager);

  final TypeManager _typeManager;

  final _cache = <Element, MarshalingInfo>{};

  bool isMarshaler(DartObject obj) =>
      obj.type?.isA(_typeManager.squadronMarshalerType) ?? false;

  Marshaler? getExplicitMarshaler(Element element) {
    Marshaler? explicit;
    for (var marshaler in element.getAnnotations().where(isMarshaler)) {
      final type = marshaler.toTypeValue() ?? marshaler.type;
      final baseMarshaler =
          type?.implementedTypes(_typeManager.squadronMarshalerType);
      if (baseMarshaler == null || baseMarshaler.isEmpty) {
        throw InvalidGenerationSourceError(
            'Invalid marshaler for $element: $marshaler');
      }
      explicit = Marshaler.explicit(
          marshaler, _typeManager.handleDartType(baseMarshaler.single));
      break;
    }

    return explicit;
  }

  MarshalingInfo _getOrAddMarshalingInfo(DartType type, Element clazz) {
    var entry = _cache[clazz];
    if (entry == null) {
      final marshaler = getExplicitMarshaler(clazz);
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

  Marshaler? getMarshalerFor(ParameterElement param) {
    final explicitMarshaler = getExplicitMarshaler(param);
    final type = (param is FieldFormalParameterElement && param.field != null)
        ? param.field!.type
        : param.type;
    return getMarshaler(_typeManager.handleDartType(type),
        explicit: explicitMarshaler);
  }

  Marshaler? getMarshaler(ManagedType type, {Marshaler? explicit}) {
    final dartType = type.dartType;

    if (dartType is DynamicType || dartType is VoidType || dartType == null) {
      return null;
    }

    if (explicit != null && explicit.targets(type)) {
      return explicit;
    }

    final elt = dartType.element;
    // elt?.visitChildren(this);

    final decl = elt?.declaration;
    return (decl == null)
        ? null
        : _getOrAddMarshalingInfo(dartType, decl).marshaler;
  }
}
