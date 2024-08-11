part of 'marshaler.dart';

class _IdentityMarshaler extends Marshaler {
  const _IdentityMarshaler();

  @override
  bool targets(ManagedType type) => true;

  @override
  Adapter getSerializer(ManagedType type) => identity;

  @override
  Adapter getDeserializer(ManagedType type) {
    if (type is ManagedIntType) {
      final cast = (type.nullabilitySuffix == NullabilitySuffix.question)
          ? '${type.squadronPrefix}Cast.toNullableInt'
          : '${type.squadronPrefix}Cast.toInt';
      return (v, {bool forceCast = false}) =>
          forceCast ? '$cast(${identity(v)})' : identity(v);
    } else if (type is ManagedDoubleType) {
      final cast = (type.nullabilitySuffix == NullabilitySuffix.question)
          ? '${type.squadronPrefix}Cast.toNullableDbl'
          : '${type.squadronPrefix}Cast.toDbl';
      return (v, {bool forceCast = false}) =>
          forceCast ? '$cast(${identity(v)})' : identity(v);
    } else {
      final cast = ' as $type';
      return (v, {bool forceCast = false}) =>
          '${identity(v)}${forceCast ? cast : ''}';
    }
  }
}
