import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';

import '../../extensions.dart';
import 'marshaling_info.dart';

part 'explicit_marshaler.dart';
part 'instance_marshaler.dart';
part 'json_marshaler.dart';
part 'iterable_marshaler.dart';
part 'map_marshaler.dart';
part 'identity_marshaler.dart';

abstract class Marshaler {
  const Marshaler();

  bool targets(DartType type);

  Adapter getSerializer(DartType type);
  Adapter getDeserializer(DartType type);

  String serialize(DartType type, String expr) => getSerializer(type)(expr);
  String deserialize(DartType type, String expr) => getDeserializer(type)(expr);

  static const Marshaler identity = _IdentityMarshaler();

  factory Marshaler.instance(DartType type, String marshal, String unmarshal) =>
      (type is DynamicType)
          ? identity
          : _InstanceMarshaler(type, marshal, unmarshal);

  factory Marshaler.json(DartType type) =>
      (type is DynamicType) ? identity : _JsonMarshaler(type);

  factory Marshaler.explicit(
          DartObject marshaler, InterfaceType marshalerType) =>
      _ExplicitMarshaler(marshaler, marshalerType);

  factory Marshaler.iterable(ParameterizedType type, Marshaler itemMarshaler) =>
      IterableMarshaler(type, itemMarshaler);

  factory Marshaler.map(ParameterizedType type, Marshaler itemMarshaler) =>
      MapMarshaler(type, itemMarshaler);
}
