part of 'marshaller.dart';

class IterableMarshaller extends Marshaller {
  IterableMarshaller(this.type, this.itemMarshaller);

  final ParameterizedType type;
  final Marshaller itemMarshaller;

  DartType get itemType => type.typeArguments.first;

  @override
  bool targets(DartType type) =>
      (type.isDartCoreList || type.isDartCoreIterable) &&
      (type as ParameterizedType).typeArguments.first == itemType;

  Generator _cast(DartType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (list) => '$list.cast<$itemType>()'
          : (list) => '$list?.cast<$itemType>()';

  Generator _map(String Function(String) convert, DartType type) {
    final toList = type.isDartCoreList ? '.toList()' : '';
    final item = '(v) => ${convert('v')}';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (list) => '$list.map($item})$toList'
        : (list) => '$list?.map($item})$toList';
  }

  @override
  Generator getSerializer(DartType type) {
    final serialize = itemMarshaller
        .getSerializer((type as ParameterizedType).typeArguments.first);
    return serialize.isIdentity ? _cast(type) : _map(serialize, type);
  }

  @override
  Generator getDeserializer(DartType type) {
    final deserialize = itemMarshaller
        .getDeserializer((type as ParameterizedType).typeArguments.first);
    return deserialize.isIdentity ? _cast(type) : _map(deserialize, type);
  }
}
