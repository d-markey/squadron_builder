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
          String? deserExt,
          String? serExt,
          ParameterElement? marshalingContext,
          ParameterElement? unmarshalingContext,
          bool forceCast) =>
      _SelfMarshaler(typeName, deserExt, serExt, marshalingContext,
          unmarshalingContext, forceCast);

  static Marshaler json(
          String typeName, String? deserExt, String? serExt, bool forceCast) =>
      _JsonMarshaler(typeName, deserExt, serExt, forceCast);

  static Marshaler explicit(TypeManager typeManager, DartObject marshaler,
          ManagedType marshalerType) =>
      _ExplicitMarshaler(typeManager, marshaler, marshalerType);
}
