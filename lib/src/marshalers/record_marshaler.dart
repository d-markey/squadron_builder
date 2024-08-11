part of 'marshaler.dart';

// This marshaler serializes fields to/from a List using the field's marshalers
class RecordMarshaler extends Marshaler {
  RecordMarshaler(this._managedType, List<Marshaler> fieldMarshalers) {
    final fldSerializers = <Adapter>[], fldDererializers = <Adapter>[];
    var idx = 0;
    for (var type in _managedType.positional) {
      idx++;
      final name = '\$$idx';
      final marshaler =
          fieldMarshalers.where((m) => m.targets(type)).firstOrNull ??
              Marshaler.identity;
      fldSerializers.add(_serialize(type, name, marshaler));
      fldDererializers.add(_deserializePositional(type, idx - 1, marshaler));
    }
    for (var named in _managedType.named.entries) {
      idx++;
      final name = named.key, type = named.value;
      var marshaler =
          fieldMarshalers.where((m) => m.targets(type)).firstOrNull ??
              Marshaler.identity;
      fldSerializers.add(_serialize(type, name, marshaler));
      fldDererializers.add(_deserializeNamed(type, idx - 1, name, marshaler));
    }
    _serializer = (v, {bool forceCast = false}) =>
        fldSerializers.map((a) => a(v, forceCast: forceCast)).join(', ');
    _deserializer = (v, {bool forceCast = false}) =>
        fldDererializers.map((a) => a(v, forceCast: forceCast)).join(', ');
  }

  final ManagedRecordType _managedType;

  late final Adapter _serializer;
  late final Adapter _deserializer;

  @override
  bool targets(ManagedType type) => type.dartType?.isA(_managedType) ?? false;

  static Adapter _serialize(
          ManagedType type, String field, Marshaler marshaler) =>
      (v, {bool forceCast = false}) =>
          marshaler.getSerializer(type)('$v.$field');

  static Adapter _deserializePositional(
          ManagedType type, int idx, Marshaler marshaler) =>
      (v, {bool forceCast = false}) =>
          marshaler.getDeserializer(type)('$v[$idx]', forceCast: forceCast);

  static Adapter _deserializeNamed(
          ManagedType type, int idx, String name, Marshaler marshaler) =>
      (v, {bool forceCast = false}) =>
          '$name: ${marshaler.getDeserializer(type)('$v[$idx]', forceCast: forceCast)}';

  @override
  Adapter getSerializer(ManagedType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (v, {bool forceCast = false}) => '[${_serializer(v)}]'
          : (v, {bool forceCast = false}) =>
              '($v == null) ? null : [${_serializer(v)}]';

  @override
  Adapter getDeserializer(ManagedType type) => (type.nullabilitySuffix ==
          NullabilitySuffix.none)
      ? (v, {bool forceCast = false}) =>
          '(${_deserializer(v, forceCast: forceCast)})'
      : (v, {bool forceCast = false}) =>
          '($v == null) ? null : (${_deserializer(v, forceCast: forceCast)})';
}
