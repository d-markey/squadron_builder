part of 'marshaler.dart';

class _InstanceMarshaler extends Marshaler {
  _InstanceMarshaler(DartType type, this._marshal, this._unmarshal)
      : _typeName = type.baseName;

  final String _typeName;
  final String _marshal;
  final String _unmarshal;

  @override
  bool targets(DartType type) => type.baseName == _typeName;

  @override
  Adapter getSerializer(DartType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (v) => '$v.$_marshal()'
          : (v) => '$v?.$_marshal()';

  @override
  Adapter getDeserializer(DartType type) {
    final typeName = type.baseName;
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (v) => '$typeName.$_unmarshal($v)'
        : (v) => '($v == null) ? null : $typeName.$_unmarshal($v)';
  }
}
