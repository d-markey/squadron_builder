part of 'marshaller.dart';

class IterableMarshaller extends Marshaller {
  IterableMarshaller(ParameterizedType type, this.itemMarshaller)
      : itemTypeName = type.typeArguments.first.baseName;

  final String itemTypeName;
  final Marshaller itemMarshaller;

  @override
  bool targets(DartType type) =>
      (type.isDartCoreList || type.isDartCoreIterable) &&
      (type as ParameterizedType).typeArguments.first.baseName == itemTypeName;

  @override
  Generator getSerializer(DartType type) {
    final toList = type.isDartCoreList ? '.toList()' : '';
    var ser = itemMarshaller
        .getSerializer((type as ParameterizedType).typeArguments.first);
    final item = '(v) => ${ser('v')}';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (list) => '$list.map($item)$toList'
        : (list) => '$list?.map($item)$toList';
  }

  @override
  Generator getDeserializer(DartType type) {
    final toList = type.isDartCoreList ? '.toList()' : '';
    var deser = itemMarshaller
        .getDeserializer((type as ParameterizedType).typeArguments.first);
    final item = '(v) => ${deser('v')}';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (list) => '$list.map($item)$toList'
        : (list) => '$list?.map($item)$toList';
  }
}
