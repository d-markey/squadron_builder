part of 'managed_type.dart';

class _ManagedMapType extends ManagedType {
  _ManagedMapType._(String prefix, this.dartType, TypeManager typeManager,
      NullabilitySuffix nullabilitySuffix)
      : super._(prefix, dartType, typeManager, nullabilitySuffix) {
    // if (typeArguments.first.dartType is DynamicType) {
    //   typeArguments.first = typeManager.TObject.nullable;
    // }
    // if (typeArguments.last.dartType is DynamicType) {
    //   typeArguments.last = typeManager.TObject.nullable;
    // }
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
  DeSer? getSerializer(SerializationContext context) {
    final args = <String>[];

    final key = typeArguments.first;
    final kconvert = key.nonNullable.getSerializer(context);
    if (kconvert != null) args.add('kcast: ${kconvert.code}');

    final value = typeArguments.last;
    final vconvert = value.nonNullable.getSerializer(context);
    if (vconvert != null) args.add('vcast: ${vconvert.code}');

    final serializer = '${value.isNullable ? 'n' : ''}map(${args.join(', ')})';
    return DeSer(
      isNullable ? '${context.allowNull}($serializer)' : serializer,
      true,
      kconvert.contextAware || vconvert.contextAware,
    );
  }

  @override
  DeSer? getDeserializer(SerializationContext context) {
    final args = <String>[];

    final keyType = typeArguments.first;
    final keyDeserializer = keyType.nonNullable.getSerializer(context);
    if (keyDeserializer != null) {
      args.add('kcast: ${keyDeserializer.code}');
    }

    final valueType = typeArguments.last;
    final valueDeserializer = valueType.nonNullable.getDeserializer(context);
    if (valueDeserializer != null) {
      args.add('vcast: ${valueDeserializer.code}');
    }

    final needsContext =
        keyDeserializer.needsContext || valueDeserializer.needsContext;
    final contextAware =
        keyDeserializer.contextAware || valueDeserializer.contextAware;

    final deserializer =
        '${valueType.isNullable ? 'n' : ''}map<${keyType.nonNullable}, ${valueType.nonNullable}>(${args.join(', ')})';
    return DeSer(
      isNullable ? '${context.allowNull}($deserializer)' : deserializer,
      needsContext,
      contextAware,
    );
  }
}
