part of 'marshaler.dart';

class _ExplicitMarshaler extends Marshaler {
  _ExplicitMarshaler(
      TypeManager typeManager, this._marshaler, this._marshalerType) {
    _itemType = _marshalerType.typeArguments.first;
    _pivotType = (_marshalerType.typeArguments.length > 1)
        ? _marshalerType.typeArguments.last
        : null;
    final variable = _marshaler.variable;
    if (variable != null) {
      if (variable.enclosingElement is InterfaceElement) {
        _instance = '${variable.enclosingElement!.name!}.${variable.name}';
      } else {
        _instance = variable.name;
      }
    } else {
      final typeName = typeManager
          .handleDartType(_marshaler.toTypeValue() ?? _marshaler.type!)
          .getTypeName(NullabilitySuffix.none);
      _instance = '(const $typeName())';
    }
  }

  final DartObject _marshaler;
  final ManagedType _marshalerType;
  late final String _instance;
  late final ManagedType _itemType;
  late final ManagedType? _pivotType;

  @override
  bool targets(ManagedType type) => type.dartType?.isA(_itemType) ?? false;

  @override
  String serializerOf(ManagedType type, Converters converters) =>
      (_pivotType?.dartType is DynamicType)
          ? '$_instance.marshal'
          : '((\$) => $_instance.marshal(\$))';

  @override
  String deserializerOf(ManagedType type, Converters converters) =>
      (_pivotType?.dartType is DynamicType)
          ? '$_instance.unmarshal'
          : '((\$) => $_instance.unmarshal(\$))';
}
