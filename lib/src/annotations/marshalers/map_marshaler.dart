part of 'marshaler.dart';

class MapMarshaler extends Marshaler {
  MapMarshaler(ParameterizedType type, this._itemMarshaler)
      : _keyType = type.typeArguments.first,
        _itemType = type.typeArguments.last,
        _itemTypeName = type.typeArguments.last.baseName;

  final DartType _keyType;
  final DartType _itemType;
  final String _itemTypeName;
  final Marshaler _itemMarshaler;

  @override
  bool targets(DartType type) =>
      (type.isDartCoreMap) &&
      (type as ParameterizedType).typeArguments.last.baseName == _itemTypeName;

  Adapter _cast(DartType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (map) => '$map.cast<$_keyType, $_itemType>()'
          : (map) => '$map?.cast<$_keyType, $_itemType>()';

  Adapter _convert(Adapter converter, DartType type) {
    final entry = '(e) => MapEntry(e.key, ${converter('e.value')})';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (map) => 'Map.fromEntries($map.entries.map($entry))'
        : (map) =>
            '($map == null) ? null : Map.fromEntries($map.entries.map($entry))';
  }

  @override
  Adapter getSerializer(DartType type) {
    final serialize = _itemMarshaler
        .getSerializer((type as ParameterizedType).typeArguments.last);
    return serialize.isIdentity ? _cast(type) : _convert(serialize, type);
  }

  @override
  Adapter getDeserializer(DartType type) {
    final deserialize = _itemMarshaler
        .getDeserializer((type as ParameterizedType).typeArguments.last);
    return deserialize.isIdentity ? _cast(type) : _convert(deserialize, type);
  }
}
