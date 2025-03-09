part of 'managed_type.dart';

class _ManagedSetType extends ManagedType {
  _ManagedSetType._(
    String prefix,
    this.dartType,
    TypeManager typeManager,
    NullabilitySuffix nullabilitySuffix,
  ) : super._(prefix, dartType, typeManager, nullabilitySuffix) {
    // if (typeArguments.first.dartType is DynamicType) {
    //   typeArguments.first = typeManager.TObject;
    // }
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
  DeSer? getSerializer(SerializationContext context) {
    final item = typeArguments.first;
    final convert = item.nonNullable.getSerializer(context);
    final serializer =
        '${item.isNullable ? 'n' : ''}set<${item.nonNullable}>(${convert.code})';
    return DeSer(
      isNullable ? '${context.allowNull}($serializer)' : serializer,
      true,
      convert.contextAware,
    );
  }

  @override
  DeSer? getDeserializer(SerializationContext context) {
    final item = typeArguments.first;
    final convert = item.nonNullable.getDeserializer(context);
    final deserializer =
        '${item.isNullable ? 'n' : ''}set<${item.nonNullable}>(${convert.code})';
    return DeSer(
      isNullable ? '${context.allowNull}($deserializer)' : deserializer,
      true,
      convert.contextAware,
    );
  }
}
