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
  String serializerOf(ManagedType type) =>
      '((\$_) => (\$_ as $type)${type.isNullable ? '?' : ''}.toJson())';

  @override
  String deserializerOf(ManagedType type) => type.isNullable
      ? '${type.typeManager.TConverter}.allowNull<${type.nonNullable}>((\$_) => $loaderTypeName.fromJson(\$_))'
      : '((\$_) => $loaderTypeName.fromJson(\$_))';
}
