part of 'marshaler.dart';

class _IdentityMarshaler extends Marshaler {
  const _IdentityMarshaler();

  @override
  bool targets(DartType type) => true;

  @override
  Adapter getSerializer(DartType type) => identity;

  @override
  Adapter getDeserializer(DartType type) => identity;
}
