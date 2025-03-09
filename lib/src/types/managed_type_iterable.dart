part of 'managed_type.dart';

class _ManagedIterableType extends ManagedType {
  _ManagedIterableType._(
    String prefix,
    this.dartType,
    TypeManager typeManager,
    NullabilitySuffix nullabilitySuffix,
  ) : super._(prefix, dartType, typeManager, nullabilitySuffix) {
    // if (typeArguments.first.dartType is DynamicType) {
    //   typeArguments.first = typeManager.TObject.nullable;
    // }
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
  DeSer? getSerializer(SerializationContext context) {
    final item = typeArguments.first;
    final convert = item.nonNullable.getSerializer(context);
    final serializer =
        '${item.isNullable ? 'n' : ''}list<${item.nonNullable}>(${convert.code})';
    return DeSer(
      isNullable ? '${context.allowNull}($serializer)' : serializer,
      true,
      convert.contextAware,
    );
  }

  @override
  DeSer? getDeserializer(SerializationContext context) {
    final item = typeArguments.single;
    final convert = item.nonNullable.getDeserializer(context);
    final deserializer =
        '${item.isNullable ? 'n' : ''}list<${item.nonNullable}>(${convert.code})';
    return DeSer(
        isNullable ? '${context.allowNull}($deserializer)' : deserializer,
        true,
        convert.contextAware);
  }
}
