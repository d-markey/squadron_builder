part of 'managed_type.dart';

class _ManagedTypeImpl extends ManagedType {
  _ManagedTypeImpl._(String prefix, this.dartType, TypeManager typeManager)
      : super._(prefix, dartType, typeManager);

  @override
  final DartType dartType;

  @override
  NullabilitySuffix get nullabilitySuffix => dartType.nullabilitySuffix;

  @override
  String getSerializer(Converters converters) =>
      attachedMarshaler?.serializerOf(this, converters) ?? '';

  @override
  String getDeserializer(Converters converters) =>
      attachedMarshaler?.deserializerOf(this, converters) ??
      '${converters.instance}.value<${getTypeName(NullabilitySuffix.none)}>()';

  @override
  void setMarshaler(TypeManager typeManager) {
    final element = dartType.element;
    if (element == null) return;
    final marshalerLoader = MarshalerLoader(typeManager);
    _attachedMarshaler = marshalerLoader.getMarshalerFor(this);
  }
}
