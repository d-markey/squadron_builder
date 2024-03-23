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
          fieldMarshalers.where((_) => _.targets(type)).firstOrNull ??
              Marshaler.identity;
      fldSerializers.add(_serialize(type, name, marshaler));
      fldDererializers.add(_deserializePositional(type, idx - 1, marshaler));
    }
    for (var named in _managedType.named.entries) {
      idx++;
      final name = named.key, type = named.value;
      var marshaler =
          fieldMarshalers.where((_) => _.targets(type)).firstOrNull ??
              Marshaler.identity;
      fldSerializers.add(_serialize(type, name, marshaler));
      fldDererializers.add(_deserializeNamed(type, idx - 1, name, marshaler));
    }
    _serializer = (v) => fldSerializers.map((a) => a(v)).join(', ');
    _deserializer = (v) => fldDererializers.map((a) => a(v)).join(', ');
  }

  final ManagedRecordType _managedType;

  late final Adapter _serializer;
  late final Adapter _deserializer;

  @override
  bool targets(ManagedType type) => type.dartType?.isA(_managedType) ?? false;

  static Adapter _serialize(
          ManagedType type, String field, Marshaler marshaler) =>
      (v) => marshaler.getSerializer(type)('$v.$field');

  static Adapter _deserializePositional(
          ManagedType type, int idx, Marshaler marshaler) =>
      (v) => marshaler.getDeserializer(type, forceCast: true)('$v[$idx]');

  static Adapter _deserializeNamed(
          ManagedType type, int idx, String name, Marshaler marshaler) =>
      (v) =>
          '$name: ${marshaler.getDeserializer(type, forceCast: true)('$v[$idx]')}';

  @override
  Adapter getSerializer(ManagedType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (v) => '[${_serializer(v)}]'
          : (v) => '($v == null) ? null : [${_serializer(v)}]';

  @override
  Adapter getDeserializer(ManagedType type, {bool forceCast = false}) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (v) => '(${_deserializer(v)})'
          : (v) => '($v == null) ? null : (${_deserializer(v)})';
}
