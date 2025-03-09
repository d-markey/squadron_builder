part of 'marshaler.dart';

class _ExplicitMarshaler extends Marshaler {
  _ExplicitMarshaler(
      TypeManager typeManager, this._marshaler, ManagedType marshalerType)
      : _itemType = marshalerType.typeArguments.first,
        _pivotType = marshalerType.typeArguments.last {
    final variable = _marshaler.variable;
    if (variable != null) {
      if (variable.enclosingElement3 is InterfaceElement) {
        _instance = '${variable.enclosingElement3!.name!}.${variable.name}';
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
  DeSer serializerOf(SerializationContext context, ManagedType type) => DeSer(
        '((\$_) => $_instance.${type.isNullable ? 'n' : ''}marshal(\$_, this))',
        true,
        true,
      );

  @override
  DeSer deserializerOf(SerializationContext context, ManagedType type) {
    final convert = context.getDeserializer(_pivotType, null);
    return DeSer(
      (convert == null)
          ? '((\$_) => $_instance.${type.isNullable ? 'n' : ''}unmarshal(\$_, this))'
          : '((\$_) => $_instance.${type.isNullable ? 'n' : ''}unmarshal(${convert.code}(\$_), this))',
      true,
      true,
    );
  }
}
