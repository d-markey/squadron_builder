part of 'marshaller.dart';

class _IdentityMarshaller extends Marshaller {
  const _IdentityMarshaller();

  @override
  bool targets(DartType type) => true;

  @override
  Generator getSerializer(DartType type) => identity;

  @override
  Generator getDeserializer(DartType type) => identity;
}
