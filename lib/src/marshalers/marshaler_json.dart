part of 'marshaler.dart';

class _JsonMarshaler extends Marshaler {
  _JsonMarshaler(this.typeName, String? loaderTypeName, this.pivotType)
      : loaderTypeName = loaderTypeName ?? typeName;

  final String typeName;
  final String loaderTypeName;
  final ManagedType? pivotType;

  @override
  bool targets(ManagedType type) => type.getTypeName() == typeName;

  @override
  DeSer serializerOf(SerializationContext context, ManagedType type) => DeSer(
        '((\$_) => (\$_ as $type)${type.isNullable ? '?' : ''}.toJson())',
        true,
        false,
      );

  @override
  DeSer deserializerOf(SerializationContext context, ManagedType type) {
    final deserializer = '((\$_) => $loaderTypeName.fromJson(\$_))';
    return DeSer(
      type.isNullable ? '${context.allowNull}$deserializer' : deserializer,
      true,
      false,
    );
  }
}
