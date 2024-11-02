part of 'managed_type.dart';

class _ManagedTypedDataType extends ManagedType {
  _ManagedTypedDataType._(String prefix, this.dartType, TypeManager typeManager)
      : _marshaler = typeManager.TTypedDataMarshaler,
        super._(prefix, dartType, typeManager);

  @override
  final DartType dartType;

  @override
  void setMarshaler(TypeManager typeManager) {}

  final ManagedType _marshaler;

  @override
  String getSerializer(Converters converters) {
    final typeName = getTypeName(NullabilitySuffix.none);
    return '((\$) => (const ${_marshaler.getTypeName(NullabilitySuffix.none)}<$typeName>()).marshal(\$))';
  }

  @override
  String getDeserializer(Converters converters) {
    final typeName = getTypeName(NullabilitySuffix.none);
    return '((\$) => (const ${_marshaler.getTypeName(NullabilitySuffix.none)}<$typeName>()).unmarshal(\$))';
  }

  @override
  NullabilitySuffix get nullabilitySuffix => dartType.nullabilitySuffix;
}
