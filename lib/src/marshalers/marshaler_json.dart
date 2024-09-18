part of 'marshaler.dart';

class _JsonMarshaler extends Marshaler {
  _JsonMarshaler(this.typeName, String? loaderTypeName)
      : loaderTypeName = loaderTypeName ?? typeName;

  final String typeName;
  final String loaderTypeName;

  @override
  bool targets(ManagedType type) =>
      type.getTypeName(NullabilitySuffix.none) == typeName;

  @override
  String serializerOf(ManagedType type, Converters converters) =>
      '((\$) => (\$ as $typeName).toJson())';

  @override
  String deserializerOf(ManagedType type, Converters converters) =>
      '((\$) => $loaderTypeName.fromJson(\$))';
}
