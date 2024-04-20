import 'dart:io';

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';

import '../types/extensions.dart';
import '../types/managed_type.dart';
import 'marshaling_info.dart';

part 'explicit_marshaler.dart';
part 'identity_marshaler.dart';
part 'instance_marshaler.dart';
part 'iterable_marshaler.dart';
part 'json_marshaler.dart';
part 'map_marshaler.dart';
part 'record_marshaler.dart';

abstract class Marshaler {
  const Marshaler();

  bool targets(ManagedType type);

  Adapter getSerializer(ManagedType type);
  Adapter getDeserializer(ManagedType type);

  String serialize(ManagedType type, String expr) => getSerializer(type)(expr);
  String deserialize(ManagedType type, String expr, {bool forceCast = false}) =>
      getDeserializer(type)(expr, forceCast: forceCast);

  static const Marshaler identity = _IdentityMarshaler();

  factory Marshaler.instance(ManagedType type) =>
      type is ManagedDynamicType ? identity : _InstanceMarshaler(type);

  factory Marshaler.json(ManagedType type) =>
      type is ManagedDynamicType ? identity : _JsonMarshaler(type);

  factory Marshaler.explicit(DartObject marshaler, ManagedType marshalerType) =>
      _ExplicitMarshaler(marshaler, marshalerType);

  factory Marshaler.iterable(ManagedType type, Marshaler itemMarshaler) =>
      IterableMarshaler(type, itemMarshaler);

  factory Marshaler.map(ManagedType type, Marshaler itemMarshaler) =>
      MapMarshaler(type, itemMarshaler);

  factory Marshaler.record(
          ManagedRecordType type, List<Marshaler> fieldMarshalers) =>
      RecordMarshaler(type, fieldMarshalers);
}
