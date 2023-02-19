import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';

import '../../extensions.dart';
import 'marshalling_info.dart';

part 'explicit_marshaller.dart';
part 'json_marshaller.dart';
part 'iterable_marshaller.dart';
part 'map_marshaller.dart';
part 'identity_marshaller.dart';

abstract class Marshaller {
  const Marshaller();

  bool targets(DartType type);
  Generator getSerializer(DartType type);
  Generator getDeserializer(DartType type);

  String serialize(DartType type, String expr) => getSerializer(type)(expr);
  String deserialize(DartType type, String expr) => getDeserializer(type)(expr);

  static const Marshaller identity = _IdentityMarshaller();

  factory Marshaller.implicit(DartType type) =>
      type.isDynamic ? identity : _JsonMarshaller(type);

  factory Marshaller.explicit(
          DartObject marshaller, InterfaceType marshallerType) =>
      _ExplicitMarshaller(marshaller, marshallerType);

  factory Marshaller.iterable(
          ParameterizedType type, Marshaller itemMarshaller) =>
      IterableMarshaller(type, itemMarshaller);

  factory Marshaller.map(ParameterizedType type, Marshaller itemMarshaller) =>
      MapMarshaller(type, itemMarshaller);
}

extension _IdentityChecker on String Function(String) {
  bool get isIdentity => this('x') == 'x';
}
