part of 'marshaler.dart';

class _JsonMarshaler extends Marshaler {
  _JsonMarshaler(ManagedType type)
      : _typeName = type.getTypeName(NullabilitySuffix.none);

  final String _typeName;

  @override
  bool targets(ManagedType type) =>
      type.getTypeName(NullabilitySuffix.none) == _typeName;

  @override
  Adapter getSerializer(ManagedType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (v) => '$v.toJson()'
          : (v) => '$v?.toJson()';

  @override
  Adapter getDeserializer(ManagedType type) {
    final typeName = type.getTypeName(NullabilitySuffix.none);
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (v) => '$typeName.fromJson($v)'
        : (v) => '($v == null) ? null : $typeName.fromJson($v)';
  }
}
