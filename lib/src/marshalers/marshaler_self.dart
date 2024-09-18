part of 'marshaler.dart';

class _SelfMarshaler extends Marshaler {
  _SelfMarshaler(this.typeName, String? loaderTypeName)
      : loaderTypeName = loaderTypeName ?? typeName;

  final String typeName;
  final String loaderTypeName;

  @override
  bool targets(ManagedType type) =>
      type.getTypeName(NullabilitySuffix.none) == typeName;

  @override
  String serializerOf(ManagedType type, Converters converters) =>
      '((\$) => (\$ as $typeName).marshal())';

  @override
  String deserializerOf(ManagedType type, Converters converters) =>
      '((\$) => $loaderTypeName.unmarshal(\$))';
}
