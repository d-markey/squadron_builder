part of 'managed_type.dart';

class _ManagedMapType extends ManagedType {
  _ManagedMapType._(String prefix, this.dartType, TypeManager typeManager)
      : super._(prefix, dartType, typeManager);

  @override
  final ParameterizedType dartType;

  @override
  void setMarshaler(TypeManager typeManager) {}

  @override
  String getSerializer(Converters converters) {
    final args = <String>[];

    final keyType = typeArguments.first;
    final keySerializer = converters.getSerializerOf(keyType, null);
    if (keySerializer.isNotEmpty) args.add('kcast: $keySerializer');

    final valueType = typeArguments.last;
    final valueSerializer = converters.getSerializerOf(valueType, null);
    if (valueSerializer.isNotEmpty) args.add('vcast: $valueSerializer');

    return '${converters.instance}.map<$keyType, $valueType>(${args.join(', ')})';
  }

  @override
  String getDeserializer(Converters converters) {
    final args = <String>[];

    final keyType = typeArguments.first;
    final keyDeserializer = converters.getDeserializerOf(keyType, null);
    if (keyDeserializer.isNotEmpty) args.add('kcast: $keyDeserializer');

    final valueType = typeArguments.last;
    final valueDeserializer = converters.getDeserializerOf(valueType, null);
    if (valueDeserializer.isNotEmpty) args.add('vcast: $valueDeserializer');

    return '${converters.instance}.map<$keyType, $valueType>(${args.join(', ')})';
  }

  @override
  NullabilitySuffix get nullabilitySuffix => dartType.nullabilitySuffix;
}
