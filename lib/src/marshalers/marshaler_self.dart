part of 'marshaler.dart';

class _SelfMarshaler extends Marshaler {
  _SelfMarshaler(
      this.typeName,
      String? loaderTypeName,
      this.pivotType,
      ParameterElement? marshalingContext,
      ParameterElement? unmarshalingContext)
      : loaderTypeName = loaderTypeName ?? typeName,
        contextOut = _getContextArg(marshalingContext),
        contextIn = _getContextArg(unmarshalingContext);

  static String _getContextArg(ParameterElement? ctx) =>
      (ctx == null || ctx.name3 == null) ? '' : (ctx.isNamed ? '${ctx.name3!}: this' : 'this');

  final String typeName;
  final String loaderTypeName;

  final String contextOut;
  final String contextIn;
  final ManagedType? pivotType;

  @override
  bool targets(ManagedType type) => type.nonNullable.getTypeName() == typeName;

  @override
  DeSer? ser(MarshalingContext context, ManagedType? type) {
    if (type == null) return null;
    type.throwIfNullable();
    final code = '(($Dollar) => ($Dollar as $typeName).marshal($contextOut))';
    return DeSer(code, true, contextOut.isNotEmpty);
  }

  @override
  DeSer? deser(MarshalingContext context, ManagedType? type) {
    if (type == null) return null;
    type.throwIfNullable();
    final convert = context.deser(pivotType);
    var args = (convert == null) ? Dollar : '${convert.code}($Dollar)';
    if (contextIn.isNotEmpty) args += ', $contextIn';
    final code = '(($Dollar) => $loaderTypeName.unmarshal($args))';
    return DeSer(code, true, contextIn.isNotEmpty || convert.contextAware);
  }
}
