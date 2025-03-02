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
        dartType,
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
  String getSerializer() => attachedMarshaler?.serializerOf(this) ?? '';

  @override
  String getDeserializer() =>
      attachedMarshaler?.deserializerOf(this) ??
      '\$mc.${isNullable ? 'n' : ''}value<$nonNullable>()';
}
