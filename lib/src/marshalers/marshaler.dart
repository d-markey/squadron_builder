import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';

import '../types/extensions.dart';
import '../types/managed_type.dart';
import '../types/type_manager.dart';
import 'deser.dart';
import 'serialization_context.dart';

part 'marshaler_explicit.dart';
part 'marshaler_json.dart';
part 'marshaler_self.dart';

abstract class Marshaler {
  const Marshaler();

  bool targets(ManagedType type);

  DeSer? serializerOf(SerializationContext context, ManagedType type);
  DeSer? deserializerOf(SerializationContext context, ManagedType type);

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
