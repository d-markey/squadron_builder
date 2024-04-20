part of 'marshaler.dart';

class _InstanceMarshaler extends Marshaler {
  _InstanceMarshaler(ManagedType type)
      : _typeName = type.getTypeName(NullabilitySuffix.none);

  final String _typeName;

  @override
  bool targets(ManagedType type) =>
      type.getTypeName(NullabilitySuffix.none) == _typeName;

  @override
  Adapter getSerializer(ManagedType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (v, {bool forceCast = false}) => '$v.marshal()'
          : (v, {bool forceCast = false}) => '$v?.marshal()';

  @override
  Adapter getDeserializer(ManagedType type) {
    final typeName = type.getTypeName();
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (v, {bool forceCast = false}) => '$typeName.unmarshal($v)'
        : (v, {bool forceCast = false}) =>
            '($v == null) ? null : $typeName.unmarshal($v)';
  }
}
