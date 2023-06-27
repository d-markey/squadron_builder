part of 'marshaler.dart';

class IterableMarshaler extends Marshaler {
  IterableMarshaler(this._type, this._itemMarshaler);

  final ParameterizedType _type;
  final Marshaler _itemMarshaler;

  DartType get _itemType => _type.typeArguments.first;

  @override
  bool targets(DartType type) =>
      (type.isDartCoreList || type.isDartCoreIterable) &&
      (type as ParameterizedType).typeArguments.first == _itemType;

  Adapter _cast(DartType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (list) => '$list.cast<$_itemType>()'
          : (list) => '$list?.cast<$_itemType>()';

  Adapter _map(Adapter convert, DartType type) {
    final toList = type.isDartCoreList ? '.toList()' : '';
    final item = '(v) => ${convert('v')}';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (list) => '$list.map($item})$toList'
        : (list) => '$list?.map($item})$toList';
  }

  @override
  Adapter getSerializer(DartType type) {
    final serialize = _itemMarshaler
        .getSerializer((type as ParameterizedType).typeArguments.first);
    return serialize.isIdentity ? _cast(type) : _map(serialize, type);
  }

  @override
  Adapter getDeserializer(DartType type) {
    final deserialize = _itemMarshaler
        .getDeserializer((type as ParameterizedType).typeArguments.first);
    return deserialize.isIdentity ? _cast(type) : _map(deserialize, type);
  }
}
