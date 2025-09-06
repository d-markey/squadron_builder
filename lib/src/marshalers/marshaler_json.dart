part of 'marshaler.dart';

class _JsonMarshaler extends Marshaler {
  _JsonMarshaler(
      this._typeName, String? deserExt, String? serExt, this._forceCast)
      : _deserExt = deserExt ?? _typeName,
        _serExt = serExt ?? '';

  final String _typeName;
  final String _deserExt;
  final String _serExt;
  final bool _forceCast;

  @override
  bool targets(ManagedType type) => type.getTypeName() == _typeName;

  @override
  DeSer? ser(MarshalingContext context, ManagedType? type) {
    if (type == null) return null;
    type.throwIfNullable();
    final code = '(($Dollar) => $_serExt($Dollar as $_typeName).toJson())';
    return DeSer(code, true, false);
  }

  @override
  DeSer? deser(MarshalingContext context, ManagedType? type) {
    if (type == null) return null;
    type.throwIfNullable();
    var cast = '';
    if (_forceCast && _deserExt != _typeName) {
      cast = ' as $_typeName';
    }
    final code = '(($Dollar) => $_deserExt.fromJson($Dollar)$cast)';
    return DeSer(code, true, false);
  }
}
