import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

import '../types/extensions.dart';
import '../types/managed_type.dart';
import '../types/type_manager.dart';

part 'marshaler_explicit.dart';
part 'marshaler_json.dart';
part 'marshaler_self.dart';

abstract class Marshaler {
  const Marshaler();

  bool targets(ManagedType type);

  String serializerOf(ManagedType type);
  String deserializerOf(ManagedType type);

  String serialize(String expr, ManagedType type) {
    final serialize = serializerOf(type);
    return serialize.isEmpty ? expr : '$serialize($expr)';
  }

  String deserialize(String expr, ManagedType type) {
    final deserialize = deserializerOf(type);
    return deserialize.isEmpty ? expr : '$deserialize($expr)';
  }

  static Marshaler self(
          String typeName,
          String? loaderTypeName,
          ManagedType? pivotType,
          ParameterElement? marshalingContext,
          ParameterElement? unmarshalingContext) =>
      _SelfMarshaler(typeName, loaderTypeName, pivotType, marshalingContext,
          unmarshalingContext);

  static Marshaler json(
          String typeName, String? loaderTypeName, ManagedType? pivotType) =>
      _JsonMarshaler(typeName, loaderTypeName, pivotType);

  static Marshaler explicit(TypeManager typeManager, DartObject marshaler,
          ManagedType marshalerType) =>
      _ExplicitMarshaler(typeManager, marshaler, marshalerType);
}

enum ContextAwareness {
  none,
  optional,
  named,
}
