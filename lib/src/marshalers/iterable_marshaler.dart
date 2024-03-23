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

  Adapter _cast(ManagedType type, bool forceCast) {
    final cast = '.cast<$_itemType>()';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (list) => '($list is List ? $list : $list.toList())$cast'
        : (list) => '($list is List ? $list : $list?.toList())?$cast';
  }

  Adapter _map(Adapter converter, ManagedType type, bool forceCast) {
    final cast = forceCast ? '.cast<$_itemType>()' : '';
    final toList = type.dartType!.isDartCoreList ? '.toList()' : '';
    final item = '(v) => ${converter('v')}';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (list) => '($list as Iterable).map($item)$toList$cast'
        : (list) => '($list as Iterable?)?.map($item)$toList$cast';
  }

  @override
  Adapter getSerializer(ManagedType type) {
    final serialize = _itemMarshaler.getSerializer(type.typeArguments.first);
    return serialize.isIdentity
        ? _cast(type, false)
        : _map(serialize, type, false);
  }

  @override
  Adapter getDeserializer(ManagedType type, {bool forceCast = false}) {
    final deserialize =
        _itemMarshaler.getDeserializer(type.typeArguments.first);
    return deserialize.isIdentity
        ? _cast(type, forceCast)
        : _map(deserialize, type, forceCast);
  }
}
