part of 'marshaler.dart';

class _ExplicitMarshaler extends Marshaler {
  _ExplicitMarshaler(this._marshaler, this._marshalerType)
      : _marshal = (_marshalerType.getMethod('marshal') != null)
            ? 'marshal'
            : 'marshall',
        _unmarshal = (_marshalerType.getMethod('unmarshal') != null)
            ? 'unmarshal'
            : 'unmarshall' {
    _itemTypeName = _marshalerType.typeArguments.first.baseName;
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
  final InterfaceType _marshalerType;
  late final String _instance;
  late final String _itemTypeName;

  final String _marshal;
  final String _unmarshal;

  @override
  bool targets(DartType type) => type.baseName == _itemTypeName;

  Adapter _convert(String method, DartType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (v) => '$_instance.$method($v)'
          : (v) => '($v == null) ? null : $_instance.$method($v)';

  @override
  Adapter getSerializer(DartType type) => _convert(_marshal, type);

  @override
  Adapter getDeserializer(DartType type) => _convert(_unmarshal, type);
}
