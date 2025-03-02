part of 'managed_type.dart';

class _ManagedIterableType extends ManagedType {
  _ManagedIterableType._(
    String prefix,
    this.dartType,
    TypeManager typeManager,
    NullabilitySuffix nullabilitySuffix,
  ) : super._(prefix, dartType, typeManager, nullabilitySuffix) {
    if (typeArguments.first.dartType is DynamicType) {
      typeArguments.first = typeManager.TObject.nullable;
    }
  }

  @override
  _ManagedIterableType _forceNullability(bool nullable) =>
      _ManagedIterableType._(
        prefix,
        dartType,
        typeManager,
        nullable ? NullabilitySuffix.question : NullabilitySuffix.none,
      );

  @override
  final ParameterizedType dartType;

  @override
  String getSerializer() {
    final itemType = typeArguments.first;
    final itemSerializer = itemType.nonNullable.getSerializer();
    final serializer =
        '\$mc.${itemType.isNullable ? 'n' : ''}list($itemSerializer)';
    return isNullable
        ? '${typeManager.TConverter}.allowNull($serializer)'
        : serializer;
  }

  @override
  String getDeserializer() {
    final itemType = typeArguments.single;
    final itemDeserializer = itemType.nonNullable.getDeserializer();
    final deserializer =
        '\$mc.${itemType.isNullable ? 'n' : ''}list<${itemType.nonNullable}>($itemDeserializer)';
    return isNullable
        ? '${typeManager.TConverter}.allowNull($deserializer)'
        : deserializer;
  }
}
