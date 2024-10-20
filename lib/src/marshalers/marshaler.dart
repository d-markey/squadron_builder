import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';

import '../types/extensions.dart';
import '../types/managed_type.dart';
import '../types/type_manager.dart';
import 'converters.dart';

part 'marshaler_explicit.dart';
part 'marshaler_json.dart';
part 'marshaler_self.dart';

abstract class Marshaler {
  const Marshaler();

  bool targets(ManagedType type);

  String serialize(ManagedType type, Converters converters, String expr) =>
      '${converters.getSerializerOf(type, this)}($expr)';

  String deserialize(ManagedType type, Converters converters, String expr) =>
      '${converters.getDeserializerOf(type, this)}($expr)';

  String serializerOf(ManagedType type, Converters converters);
  String deserializerOf(ManagedType type, Converters converters);

  static Marshaler self(String typeName, String? loaderTypeName) =>
      _SelfMarshaler(typeName, loaderTypeName);

  static Marshaler json(String typeName, String? loaderTypeName) =>
      _JsonMarshaler(typeName, loaderTypeName);

  static Marshaler explicit(TypeManager typeManager, DartObject marshaler,
          ManagedType marshalerType) =>
      _ExplicitMarshaler(typeManager, marshaler, marshalerType);
}
