part of 'marshaler.dart';

class _ExplicitMarshaler extends Marshaler {
  _ExplicitMarshaler(this._marshaler, this._marshalerType) {
    _itemTypeName = _marshalerType.typeArguments.first.getTypeName();
    final variable = _marshaler.variable;
    if (variable != null) {
      if (variable.enclosingElement is ClassElement) {
        _instance = '${variable.enclosingElement!.name}.${variable.name}';
      } else {
        _instance = variable.name;
      }
    } else {
      var typeName = (_marshaler.toTypeValue() ?? _marshaler.type).toString();
      if (typeName.endsWith('?') || typeName.endsWith('*')) {
        typeName = typeName.substring(0, typeName.length - 1);
      }
      _instance = '(const $typeName())';
    }
  }

  final DartObject _marshaler;
  final ManagedType _marshalerType;
  late final String _instance;
  late final String _itemTypeName;

  @override
  bool targets(ManagedType type) => type.getTypeName() == _itemTypeName;

  Adapter _convert(String method, ManagedType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (v) => '$_instance.$method($v)'
          : (v) => '($v == null) ? null : $_instance.$method($v)';

  @override
  Adapter getSerializer(ManagedType type) => _convert('marshal', type);

  @override
  Adapter getDeserializer(ManagedType type) => _convert('unmarshal', type);
}
