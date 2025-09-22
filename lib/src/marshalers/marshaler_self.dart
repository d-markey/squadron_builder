part of 'marshaler.dart';

class _SelfMarshaler extends Marshaler {
  _SelfMarshaler(
    this._typeName,
    String? deserExt,
    String? serExt,
    FormalParameterElement? marshalingContext,
    FormalParameterElement? unmarshalingContext,
    this._forceCast,
  ) : _deserExt = deserExt ?? _typeName,
      _serExt = serExt ?? '',
      _contextOut = _getContextArg(marshalingContext),
      _contextIn = _getContextArg(unmarshalingContext);

  static String _getContextArg(FormalParameterElement? ctx) {
    final name = ctx?.name ?? '';
    return (name.isEmpty)
        ? ''
        : ((ctx?.isNamed ?? false) ? '$name: this' : 'this');
  }

  final String _typeName;
  final String _deserExt;
  final String _serExt;
  final bool _forceCast;

  final String _contextOut;
  final String _contextIn;

  @override
  bool targets(ManagedType type) => type.nonNullable.getTypeName() == _typeName;

  @override
  DeSer? ser(MarshalingContext context, ManagedType? type) {
    if (type == null) return null;
    type.throwIfNullable();
    final code =
        '(($Dollar) => $_serExt($Dollar as $_typeName).marshal($_contextOut))';
    return DeSer(code, true, _contextOut.isNotEmpty);
  }

  @override
  DeSer? deser(MarshalingContext context, ManagedType? type) {
    if (type == null) return null;
    type.throwIfNullable();
    final args = _contextIn.isEmpty ? Dollar : '$Dollar, $_contextIn';
    var cast = '';
    if (_forceCast && _deserExt != _typeName) {
      cast = ' as $_typeName';
    }
    final code = '(($Dollar) => $_deserExt.unmarshal($args)$cast)';
    return DeSer(code, true, _contextIn.isNotEmpty);
  }
}
