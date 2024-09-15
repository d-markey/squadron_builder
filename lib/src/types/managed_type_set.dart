part of 'managed_type.dart';

class _ManagedSetType extends ManagedType {
  _ManagedSetType._(String? prefix, this.dartType, TypeManager typeManager)
      : super._(prefix, dartType, typeManager);

  @override
  final ParameterizedType dartType;

  @override
  void setMarshaler(TypeManager typeManager) {}

  @override
  String getSerializer(Converters converters) {
    final itemType = typeArguments.single;
    final itemSerializer = converters.getSerializerOf(itemType, null);
    return '${converters.instance}.set<$itemType>($itemSerializer)';
  }

  @override
  String getDeserializer(Converters converters) {
    final itemType = typeArguments.single;
    final itemDeserializer = converters.getDeserializerOf(itemType, null);
    return '${converters.instance}.set($itemDeserializer)';
  }

  @override
  NullabilitySuffix get nullabilitySuffix => dartType.nullabilitySuffix;
}
