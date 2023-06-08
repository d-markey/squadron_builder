part of 'marshaller.dart';

class MapMarshaller extends Marshaller {
  MapMarshaller(ParameterizedType type, this.itemMarshaller)
      : keyType = type.typeArguments.first,
        itemType = type.typeArguments.last,
        itemTypeName = type.typeArguments.last.baseName;

  final DartType keyType;
  final DartType itemType;
  final String itemTypeName;
  final Marshaller itemMarshaller;

  @override
  bool targets(DartType type) =>
      (type.isDartCoreMap) &&
      (type as ParameterizedType).typeArguments.last.baseName == itemTypeName;

  Adapter _cast(DartType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (map) => '$map.cast<$keyType, $itemType>()'
          : (map) => '$map?.cast<$keyType, $itemType>()';

  Adapter _convert(Adapter converter, DartType type) {
    final entry = '(e) => MapEntry(e.key, ${converter('e.value')})';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (map) => 'Map.fromEntries($map.entries.map($entry))'
        : (map) =>
            '($map == null) ? null : Map.fromEntries($map.entries.map($entry))';
  }

  @override
  Adapter getSerializer(DartType type) {
    final serialize = itemMarshaller
        .getSerializer((type as ParameterizedType).typeArguments.last);
    return serialize.isIdentity ? _cast(type) : _convert(serialize, type);
  }

  @override
  Adapter getDeserializer(DartType type) {
    final deserialize = itemMarshaller
        .getDeserializer((type as ParameterizedType).typeArguments.last);
    return deserialize.isIdentity ? _cast(type) : _convert(deserialize, type);
  }
}
