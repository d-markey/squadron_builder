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

  @override
  Generator getSerializer(DartType type) {
    var ser = itemMarshaller
        .getSerializer((type as ParameterizedType).typeArguments.last);
    final entry = '(e) => MapEntry(e.key, ${ser('e.value')})';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (map) => 'Map.fromEntries($map.entries.map($entry))'
        : (map) =>
            '($map == null) ? null : Map.fromEntries($map.entries.map($entry))';
  }

  @override
  Generator getDeserializer(DartType type) {
    var deser = itemMarshaller
        .getDeserializer((type as ParameterizedType).typeArguments.last);
    final entry =
        '(e) => MapEntry<$keyType, $itemType>(e.key, ${deser('e.value')})';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (map) => 'Map.fromEntries($map.entries.map($entry))'
        : (map) =>
            '($map == null) ? null : Map.fromEntries($map.entries.map($entry))';
  }
}
