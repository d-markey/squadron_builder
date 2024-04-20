part of 'marshaler.dart';

class MapMarshaler extends Marshaler {
  MapMarshaler(ManagedType type, this._itemMarshaler)
      : _keyType = type.typeArguments.first,
        _itemType = type.typeArguments.last,
        _itemTypeName =
            type.typeArguments.last.getTypeName(NullabilitySuffix.none);

  final ManagedType _keyType;
  final ManagedType _itemType;
  final String _itemTypeName;
  final Marshaler _itemMarshaler;

  @override
  bool targets(ManagedType type) =>
      type.dartType != null &&
      (type.dartType!.isDartCoreMap) &&
      type.typeArguments.last.getTypeName(NullabilitySuffix.none) ==
          _itemTypeName;

  Adapter _cast(ManagedType type) {
    final cast = '.cast<$_keyType, $_itemType>()';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (map, {bool forceCast = false}) =>
            '($map as Map)${forceCast ? cast : ''}'
        : (map, {bool forceCast = false}) =>
            '($map as Map?)?${forceCast ? cast : ''}';
  }

  Adapter _convert(Adapter converter, ManagedType type) {
    final cast = '.cast<$_keyType, $_itemType>()';
    final mappedEntries = converter.isIdentity
        ? ''
        : '.map((e) => MapEntry(e.key, ${converter('e.value')}))';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (map, {bool forceCast = false}) =>
            'Map.fromEntries($map.entries$mappedEntries)${forceCast ? cast : ''}'
        : (map, {bool forceCast = false}) =>
            '($map == null) ? null : Map.fromEntries($map.entries$mappedEntries)${forceCast ? cast : ''}';
  }

  @override
  Adapter getSerializer(ManagedType type) {
    final serialize = _itemMarshaler.getSerializer(type.typeArguments.last);
    return serialize.isIdentity ? _cast(type) : _convert(serialize, type);
  }

  @override
  Adapter getDeserializer(ManagedType type) {
    final deserialize = _itemMarshaler.getDeserializer(type.typeArguments.last);
    return deserialize.isIdentity ? _cast(type) : _convert(deserialize, type);
  }
}
