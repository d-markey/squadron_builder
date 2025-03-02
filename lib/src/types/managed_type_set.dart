part of 'managed_type.dart';

class _ManagedSetType extends ManagedType {
  _ManagedSetType._(
    String prefix,
    this.dartType,
    TypeManager typeManager,
    NullabilitySuffix nullabilitySuffix,
  ) : super._(prefix, dartType, typeManager, nullabilitySuffix) {
    if (typeArguments.first.dartType is DynamicType) {
      typeArguments.first = typeManager.TObject;
    }
  }

  @override
  _ManagedSetType _forceNullability(bool nullable) => _ManagedSetType._(
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
        '\$mc.${itemType.isNullable ? 'n' : ''}set($itemSerializer)';
    return isNullable
        ? '${typeManager.TConverter}.allowNull($serializer)'
        : serializer;
  }

  @override
  String getDeserializer() {
    final itemType = typeArguments.first;
    final itemDeserializer = itemType.nonNullable.getDeserializer();
    final deserializer =
        '\$mc.${itemType.isNullable ? 'n' : ''}set($itemDeserializer)';
    return isNullable
        ? '${typeManager.TConverter}.allowNull($deserializer)'
        : deserializer;
  }
}
