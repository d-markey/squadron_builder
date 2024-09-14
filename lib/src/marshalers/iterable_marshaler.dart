// part of 'marshaler.dart';

// class IterableMarshaler extends Marshaler {
//   IterableMarshaler(this._type, this._itemMarshaler);

//   final ManagedType _type;
//   final Marshaler _itemMarshaler;

//   ManagedType get _itemType => _type.typeArguments.first;

//   @override
//   bool targets(ManagedType type) =>
//       type.dartType != null &&
//       (type.dartType!.isDartCoreList || type.dartType!.isDartCoreIterable) &&
//       type.typeArguments.first == _itemType;

//   @override
//   String serializerOf(ManagedType type, Converters converters) {
//     final serializer =
//         '${converters.instance}.list(${converters.getSerializerOf(_itemType, _itemMarshaler)})';
//     return (type.nullabilitySuffix == NullabilitySuffix.none)
//         ? serializer
//         : '${converters.instance}.nullable($serializer)';
//   }

//   @override
//   String deserializerOf(ManagedType type, Converters converters) {
//     final deserializer =
//         '${converters.instance}.list(${converters.getDeserializerOf(_itemType, _itemMarshaler)})';
//     return (type.nullabilitySuffix == NullabilitySuffix.none)
//         ? deserializer
//         : '${converters.instance}.nullable($deserializer)';
//   }
// }
