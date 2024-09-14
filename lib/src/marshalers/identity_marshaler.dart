part of 'marshaler.dart';

class _IdentityMarshaler extends Marshaler {
  const _IdentityMarshaler();

  @override
  bool targets(ManagedType type) => true;

  @override
  String serializerOf(ManagedType type, Converters converters) {
    final typeName = type.getTypeName(NullabilitySuffix.none);
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? '${converters.instance}.value<$typeName>()'
        : '${converters.instance}.nullable<$typeName>()';
  }

  @override
  String deserializerOf(ManagedType type, Converters converters) {
    final typeName = type.getTypeName(NullabilitySuffix.none);
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? '${converters.instance}.value<$typeName>()'
        : '${converters.instance}.nullable<$typeName>()';
  }
}
