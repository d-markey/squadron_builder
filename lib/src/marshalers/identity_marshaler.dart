part of 'marshaler.dart';

class _IdentityMarshaler extends Marshaler {
  const _IdentityMarshaler();

  @override
  bool targets(ManagedType type) => true;

  @override
  Adapter getSerializer(ManagedType type) => identity;

  @override
  Adapter getDeserializer(ManagedType type) {
    final cast = ' as $type';
    return (v, {bool forceCast = false}) =>
        '${identity(v)}${forceCast ? cast : ''}';
  }
}
