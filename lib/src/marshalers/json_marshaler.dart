part of 'marshaler.dart';

class _JsonMarshaler extends Marshaler {
  _JsonMarshaler(ManagedType type)
      : _typeName = type.getTypeName(NullabilitySuffix.none);

  final String _typeName;

  @override
  bool targets(ManagedType type) =>
      type.getTypeName(NullabilitySuffix.none) == _typeName;

  @override
  String serializerOf(ManagedType type, Converters converters) =>
      '((\$) => (\$ as ${type.getTypeName(NullabilitySuffix.none)}).toJson())';

  @override
  String deserializerOf(ManagedType type, Converters converters) =>
      '((\$) => ${type.getTypeName(NullabilitySuffix.none)}.fromJson(\$))';
}
