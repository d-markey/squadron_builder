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

  Adapter _cast(ManagedType type) {
    final cast = '.cast<$_itemType>()';
    if (type.dartType?.isDartCoreList ?? false) {
      return (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (list, {bool forceCast = false}) => '$list${forceCast ? cast : ''}'
          : (list, {bool forceCast = false}) =>
              '$list?${forceCast ? cast : ''}';
    } else {
      return (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (list, {bool forceCast = false}) =>
              '($list is List ? $list : $list.toList())${forceCast ? cast : ''}'
          : (list, {bool forceCast = false}) =>
              '($list is List ? $list : $list?.toList())?${forceCast ? cast : ''}';
    }
  }

  Adapter _map(Adapter converter, ManagedType type) {
    final cast = '.cast<$_itemType>()';
    final toList = type.dartType!.isDartCoreList ? '.toList()' : '';
    final item = '(v) => ${converter('v')}';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (list, {bool forceCast = false}) =>
            '($list as Iterable).map($item)$toList${forceCast ? cast : ''}'
        : (list, {bool forceCast = false}) =>
            '($list as Iterable?)?.map($item)$toList${forceCast ? cast : ''}';
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
