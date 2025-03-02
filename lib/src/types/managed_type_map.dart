part of 'managed_type.dart';

class _ManagedMapType extends ManagedType {
  _ManagedMapType._(String prefix, this.dartType, TypeManager typeManager,
      NullabilitySuffix nullabilitySuffix)
      : super._(prefix, dartType, typeManager, nullabilitySuffix) {
    if (typeArguments.first.dartType is DynamicType) {
      typeArguments.first = typeManager.TObject.nullable;
    }
    if (typeArguments.last.dartType is DynamicType) {
      typeArguments.last = typeManager.TObject.nullable;
    }
  }

  @override
  _ManagedMapType _forceNullability(bool nullable) => _ManagedMapType._(
      prefix,
      dartType,
      typeManager,
      nullable ? NullabilitySuffix.question : NullabilitySuffix.none);

  @override
  final ParameterizedType dartType;

  @override
  String getSerializer() {
    final args = <String>[];

    final keyType = typeArguments.first;
    final keySerializer = keyType.nonNullable.getSerializer();
    if (keySerializer.isNotEmpty) args.add('kcast: $keySerializer');

    final valueType = typeArguments.last;
    final valueSerializer = valueType.nonNullable.getSerializer();
    if (valueSerializer.isNotEmpty) args.add('vcast: $valueSerializer');

    final serializer =
        '\$mc.${valueType.isNullable ? 'n' : ''}map(${args.join(', ')})';
    return isNullable
        ? '${typeManager.TConverter}.allowNull($serializer)'
        : serializer;
  }

  @override
  String getDeserializer() {
    final args = <String>[];

    final keyType = typeArguments.first;
    final keyDeserializer = keyType.nonNullable.getSerializer();
    if (keyDeserializer.isNotEmpty) args.add('kcast: $keyDeserializer');

    final valueType = typeArguments.last;
    final valueDeserializer = valueType.nonNullable.getDeserializer();
    if (valueDeserializer.isNotEmpty) args.add('vcast: $valueDeserializer');

    final deserializer =
        '\$mc.${valueType.isNullable ? 'n' : ''}map<$keyType, $valueType>(${args.join(', ')})';
    return isNullable
        ? '${typeManager.TConverter}.allowNull($deserializer)'
        : deserializer;
  }
}
