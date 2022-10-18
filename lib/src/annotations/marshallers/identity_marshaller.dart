part of 'marshaller.dart';

class _IdentityMarshaller extends Marshaller {
  const _IdentityMarshaller();

  @override
  bool targets(DartType type) => true;

  @override
  Generator getSerializer(DartType type) => _asIs;

  @override
  Generator getDeserializer(DartType type) => _asIs;

  static String _asIs(expr) => expr;
}
