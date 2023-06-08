part of 'marshaller.dart';

class _IdentityMarshaller extends Marshaller {
  const _IdentityMarshaller();

  @override
  bool targets(DartType type) => true;

  @override
  Adapter getSerializer(DartType type) => identity;

  @override
  Adapter getDeserializer(DartType type) => identity;
}
