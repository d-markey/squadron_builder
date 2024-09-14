import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';

import '../types/extensions.dart';
import '../types/managed_type.dart';
import 'converters.dart';

part 'explicit_marshaler.dart';
part 'identity_marshaler.dart';
part 'instance_marshaler.dart';
// part 'iterable_marshaler.dart';
part 'json_marshaler.dart';
// part 'map_marshaler.dart';
// part 'record_marshaler.dart';

abstract class Marshaler {
  const Marshaler();

  bool targets(ManagedType type);

  String serialize(ManagedType type, Converters converters, String expr) =>
      '${converters.getSerializerOf(type, this)}($expr)';

  String deserialize(ManagedType type, Converters converters, String expr) =>
      '${converters.getDeserializerOf(type, this)}($expr)';

  String serializerOf(ManagedType type, Converters converters);
  String deserializerOf(ManagedType type, Converters converters);

  static const Marshaler identity = _IdentityMarshaler();

  static Marshaler? instance(ManagedType type) =>
      (type.dartType is DynamicType) ? null : _InstanceMarshaler(type);

  static Marshaler? json(ManagedType type) =>
      (type.dartType is DynamicType) ? null : _JsonMarshaler(type);

  static Marshaler? explicit(DartObject marshaler, ManagedType marshalerType) =>
      _ExplicitMarshaler(marshaler, marshalerType);
}
