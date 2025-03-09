part of 'marshaler.dart';

class _SelfMarshaler extends Marshaler {
  _SelfMarshaler(
      this.typeName,
      String? loaderTypeName,
      this.pivotType,
      ParameterElement? marshalingContext,
      ParameterElement? unmarshalingContext)
      : loaderTypeName = loaderTypeName ?? typeName,
        marshalingContextArg = _getContextArg(marshalingContext),
        unmarshalingContextArg = _getContextArg(unmarshalingContext);

  static String _getContextArg(ParameterElement? ctx) =>
      (ctx == null) ? '' : (ctx.isNamed ? '${ctx.name}: this' : 'this');

  final String typeName;
  final String loaderTypeName;

  final String marshalingContextArg;
  final String unmarshalingContextArg;
  final ManagedType? pivotType;

  @override
  bool targets(ManagedType type) => type.nonNullable.getTypeName() == typeName;

  @override
  DeSer serializerOf(SerializationContext context, ManagedType type) => DeSer(
        '((\$_) => (\$_ as $typeName)${type.isNullable ? '?' : ''}.marshal($marshalingContextArg))',
        true,
        marshalingContextArg.isNotEmpty,
      );

  @override
  DeSer deserializerOf(SerializationContext context, ManagedType type) {
    final convert = context.getDeserializer(pivotType, null);
    final param = '\$_';
    final arg = (convert == null) ? param : '${convert.code}($param)';

    final deserializer = unmarshalingContextArg.isEmpty
        ? '(($param) => $loaderTypeName.unmarshal($arg))'
        : '(($param) => $loaderTypeName.unmarshal($arg, $unmarshalingContextArg))';

    return DeSer(
      type.isNullable ? '${context.allowNull}$deserializer' : deserializer,
      true,
      unmarshalingContextArg.isNotEmpty || convert.contextAware,
    );
  }
}
