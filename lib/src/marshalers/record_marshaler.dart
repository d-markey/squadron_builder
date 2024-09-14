// part of 'marshaler.dart';

// // This marshaler serializes fields to/from a List using the field's marshalers
// class RecordMarshaler extends Marshaler {
//   RecordMarshaler(this._managedType, Converters converters,
//       List<Marshaler?> fieldMarshalers) {
//     final fldSerializers = <String>[], fldDererializers = <String>[];
//     var idx = 0;
//     for (var type in _managedType.positional) {
//       idx++;
//       final name = '\$$idx';
//       final marshaler =
//           fieldMarshalers.where((m) => m?.targets(type) ?? false).firstOrNull ??
//               Marshaler.identity;
//       fldSerializers.add(_serialize(type, converters, name, marshaler));
//       fldDererializers
//           .add(_deserialize(type, converters, idx - 1, null, marshaler));
//     }
//     for (var named in _managedType.named.entries) {
//       idx++;
//       final name = named.key, type = named.value;
//       var marshaler =
//           fieldMarshalers.where((m) => m?.targets(type) ?? false).firstOrNull ??
//               Marshaler.identity;
//       fldSerializers.add(_serialize(type, converters, name, marshaler));
//       fldDererializers
//           .add(_deserialize(type, converters, idx - 1, name, marshaler));
//     }
//     // _serializer = (v) => fldSerializers.map((a) => a(v)).join(', ');
//     // _deserializer = (v) => fldDererializers.map((a) => a(v)).join(', ');
//     _serializer = fldSerializers.join(', ');
//     _deserializer = fldDererializers.join(', ');
//   }

//   final ManagedRecordType _managedType;

//   // late final Adapter _serializer;
//   // late final Adapter _deserializer;
//   late final String _serializer;
//   late final String _deserializer;

//   @override
//   bool targets(ManagedType type) => type.dartType?.isA(_managedType) ?? false;

//   static String _serialize(ManagedType type, Converters converters,
//           String field, Marshaler marshaler) =>
//       '${converters.getSerializerOf(type, marshaler)}(\$.$field)';

//   static String _deserialize(ManagedType type, Converters converters, int idx,
//       String? name, Marshaler marshaler) {
//     final deserializer =
//         '${converters.getDeserializerOf(type, marshaler)}(\$[$idx])';
//     return (name == null) ? deserializer : '$name: $deserializer';
//   }

//   @override
//   String serializerOf(ManagedType type, Converters converters) {
//     // serialize to array
//     final typeName = type.getTypeName(NullabilitySuffix.none);
//     final serializer = '(($typeName \$) => [$_serializer])';
//     return (type.nullabilitySuffix == NullabilitySuffix.none)
//         ? serializer
//         : '${converters.instance}.nullable<List<dynamic>>($serializer)';
//   }

//   @override
//   String deserializerOf(ManagedType type, Converters converters) {
//     // deserialize from array
//     final typeName = type.getTypeName(NullabilitySuffix.none);
//     final deserializer = '((\$) { \$ as List;return ($_deserializer); })';
//     return (type.nullabilitySuffix == NullabilitySuffix.none)
//         ? deserializer
//         : '${converters.instance}.nullable<$typeName>($deserializer)';
//   }
// }
