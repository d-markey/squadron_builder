part of 'managed_type.dart';

class _ManagedTypeImpl extends ManagedType {
  _ManagedTypeImpl._(
    String prefix,
    this.dartType,
    TypeManager typeManager,
    NullabilitySuffix nullabilitySuffix,
  ) : super._(prefix, dartType, typeManager, nullabilitySuffix);

  @override
  _ManagedTypeImpl _forceNullability(bool nullable) => _ManagedTypeImpl._(
        prefix,
        (dartType is DynamicType && !nullable)
            ? typeManager.library.typeProvider.objectType
            : dartType,
        typeManager,
        nullable ? NullabilitySuffix.question : NullabilitySuffix.none,
      );

  @override
  final DartType dartType;

  @override
  void setMarshaler(Marshaler marshaler) {
    nullable._attachedMarshaler = marshaler;
    nonNullable._attachedMarshaler = marshaler;
  }

  @override
  DeSer? getSerializer(SerializationContext context) =>
      attachedMarshaler?.serializerOf(context, this);

  @override
  DeSer? getDeserializer(SerializationContext context) =>
      attachedMarshaler?.deserializerOf(context, this) ??
      DeSer('${isNullable ? 'n' : ''}value<$nonNullable>()', true, false);
}
