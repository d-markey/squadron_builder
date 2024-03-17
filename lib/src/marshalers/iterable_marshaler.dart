part of 'marshaler.dart';

class IterableMarshaler extends Marshaler {
  IterableMarshaler(this._type, this._itemMarshaler);

  final ManagedType _type;
  final Marshaler _itemMarshaler;

  ManagedType get _itemType => _type.typeArguments.first;

  @override
  bool targets(ManagedType type) =>
      type.dartType != null &&
      (type.dartType!.isDartCoreList || type.dartType!.isDartCoreIterable) &&
      type.typeArguments.first == _itemType;

  Adapter _cast(ManagedType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (list) => '$list.cast<$_itemType>()'
          : (list) => '$list?.cast<$_itemType>()';

  Adapter _map(Adapter convert, ManagedType type) {
    final toList = type.dartType!.isDartCoreList ? '.toList()' : '';
    final item = '(v) => ${convert('v')}';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (list) => '$list.map($item)$toList'
        : (list) => '$list?.map($item)$toList';
  }

  @override
  Adapter getSerializer(ManagedType type) {
    final serialize = _itemMarshaler.getSerializer(type.typeArguments.first);
    return serialize.isIdentity ? _cast(type) : _map(serialize, type);
  }

  @override
  Adapter getDeserializer(ManagedType type) {
    final deserialize =
        _itemMarshaler.getDeserializer(type.typeArguments.first);
    return deserialize.isIdentity ? _cast(type) : _map(deserialize, type);
  }
}
