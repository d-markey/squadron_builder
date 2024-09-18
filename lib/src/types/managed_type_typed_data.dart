part of 'managed_type.dart';

class _ManagedTypedDataType extends ManagedType {
  _ManagedTypedDataType._(String prefix, this.dartType, TypeManager typeManager)
      : super._(prefix, dartType, typeManager);

  @override
  final DartType dartType;

  @override
  void setMarshaler(TypeManager typeManager) {}

  @override
  String getSerializer(Converters converters) {
    final typeName = getTypeName(NullabilitySuffix.none);
    return '((\$) => (\$ as $typeName).buffer)';
  }

  @override
  String getDeserializer(Converters converters) {
    final typeName = getTypeName(NullabilitySuffix.none);
    return '${converters.instance}.typedData<$typeName>()';
  }

  @override
  NullabilitySuffix get nullabilitySuffix => dartType.nullabilitySuffix;
}
