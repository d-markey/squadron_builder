part of 'marshaller.dart';

class _JsonMarshaller extends Marshaller {
  _JsonMarshaller(DartType type) : typeName = type.baseName;

  final String typeName;

  @override
  bool targets(DartType type) => type.baseName == typeName;

  @override
  Generator getSerializer(DartType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (v) => '$v.toJson()'
          : (v) => '$v?.toJson()';

  @override
  Generator getDeserializer(DartType type) {
    final typeName = type.baseName;
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (v) => '$typeName.fromJson($v)'
        : (v) => '($v == null) ? null : $typeName.fromJson($v)';
  }
}
