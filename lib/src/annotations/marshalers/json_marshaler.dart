part of 'marshaler.dart';

class _JsonMarshaler extends Marshaler {
  _JsonMarshaler(DartType type) : _typeName = type.baseName;

  final String _typeName;

  @override
  bool targets(DartType type) => type.baseName == _typeName;

  @override
  Adapter getSerializer(DartType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (v) => '$v.toJson()'
          : (v) => '$v?.toJson()';

  @override
  Adapter getDeserializer(DartType type) {
    final typeName = type.baseName;
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (v) => '$typeName.fromJson($v)'
        : (v) => '($v == null) ? null : $typeName.fromJson($v)';
  }
}
