// part of 'marshaler.dart';

// class MapMarshaler extends Marshaler {
//   MapMarshaler(ManagedType type, this._keyMarshaler, this._itemMarshaler)
//       : _keyType = type.typeArguments.first,
//         _itemType = type.typeArguments.last,
//         _itemTypeName =
//             type.typeArguments.last.getTypeName(NullabilitySuffix.none);

//   final ManagedType _keyType;
//   final ManagedType _itemType;
//   final String _itemTypeName;
//   final Marshaler _keyMarshaler;
//   final Marshaler _itemMarshaler;

//   @override
//   bool targets(ManagedType type) =>
//       type.dartType != null &&
//       (type.dartType!.isDartCoreMap) &&
//       type.typeArguments.last.getTypeName(NullabilitySuffix.none) ==
//           _itemTypeName;

//   @override
//   String serializerOf(ManagedType type, Converters converters) {
//     final serializer =
//         'Squadron.map(kcast: ${converters.getSerializerOf(_keyType, _keyMarshaler)}, vcast: ${converters.getSerializerOf(type, _itemMarshaler)})';
//     return (type.nullabilitySuffix == NullabilitySuffix.none)
//         ? serializer
//         : 'Squadron.nullable($serializer)';
//   }

//   @override
//   String deserializerOf(ManagedType type, Converters converters) {
//     final deserializer =
//         'Squadron.map(kcast: ${converters.getDeserializerOf(_keyType, _keyMarshaler)}, vcast: ${converters.getDeserializerOf(type, _itemMarshaler)})';
//     return (type.nullabilitySuffix == NullabilitySuffix.none)
//         ? deserializer
//         : 'Squadron.nullable($deserializer)';
//   }
// }
