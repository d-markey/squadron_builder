part of 'marshaler.dart';

class _ExplicitMarshaler extends Marshaler {
  _ExplicitMarshaler(
      TypeManager typeManager, this._marshaler, ManagedType marshalerType)
      : _itemType = marshalerType.typeArguments.first,
        _pivotType = marshalerType.typeArguments.last {
    // ignore: deprecated_member_use
    final variable = _marshaler.variable;
    if (variable != null) {
      final enclosing = variable.enclosingElt;
      if (enclosing is InterfaceElement) {
        _instance = '${enclosing.name}.${variable.name}';
      } else {
        _instance = variable.name;
      }
    } else {
      final typeName = typeManager
          .handleDartType(_marshaler.toTypeValue() ?? _marshaler.type!)
          .getTypeName();
      _instance = '(const $typeName())';
    }
  }

  final DartObject _marshaler;
  late final String _instance;
  final ManagedType _itemType;
  final ManagedType _pivotType;

  @override
  bool targets(ManagedType type) => type.dartType?.isA(_itemType) ?? false;

  @override
  DeSer? ser(MarshalingContext context, ManagedType? type) {
    if (type == null) return null;
    type.throwIfNullable();
    final code = '(($Dollar) => $_instance.marshal($Dollar, this))';
    return DeSer(code, true, true);
  }

  @override
  DeSer? deser(MarshalingContext context, ManagedType? type) {
    if (type == null) return null;
    type.throwIfNullable();
    final convert = context.deser(_pivotType);
    final arg = (convert == null) ? Dollar : '${convert.code}($Dollar)';
    final code = '(($Dollar) => $_instance.unmarshal($arg, this))';
    return DeSer(code, true, true);
  }
}
