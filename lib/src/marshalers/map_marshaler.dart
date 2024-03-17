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

  Adapter _cast(ManagedType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (map) => '$map.cast<$_keyType, $_itemType>()'
          : (map) => '$map?.cast<$_keyType, $_itemType>()';

  Adapter _convert(Adapter converter, ManagedType type) {
    final entry = '(e) => MapEntry(e.key, ${converter('e.value')})';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (map) => 'Map.fromEntries($map.entries.map($entry))'
        : (map) =>
            '($map == null) ? null : Map.fromEntries($map.entries.map($entry))';
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
