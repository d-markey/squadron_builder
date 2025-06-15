import 'package:analyzer/dart/constant/value.dart';

import '../_analyzer_helpers.dart';
import '../types/managed_type.dart';
import '../types/type_manager.dart';
import 'deser.dart';
import 'marshaling_context.dart';

part 'marshaler_explicit.dart';
part 'marshaler_json.dart';
part 'marshaler_self.dart';

// ignore: constant_identifier_names
const Dollar = r'$';

abstract class Marshaler {
  const Marshaler();

  bool targets(ManagedType type);

  DeSer? ser(MarshalingContext context, ManagedType? type);
  DeSer? deser(MarshalingContext context, ManagedType? type);

  static Marshaler self(
          String typeName,
          String? loaderTypeName,
          ManagedType? pivotType,
          ParameterElement? marshalingContext,
          ParameterElement? unmarshalingContext) =>
      _SelfMarshaler(typeName, loaderTypeName, pivotType, marshalingContext,
          unmarshalingContext);

  static Marshaler json(String typeName, String? loaderTypeName) =>
      _JsonMarshaler(typeName, loaderTypeName);

  static Marshaler explicit(TypeManager typeManager, DartObject marshaler,
          ManagedType marshalerType) =>
      _ExplicitMarshaler(typeManager, marshaler, marshalerType);
}
