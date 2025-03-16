part of 'marshaler.dart';

class _JsonMarshaler extends Marshaler {
  _JsonMarshaler(this._typeName, String? loader)
      : _loader = loader ?? _typeName;

  final String _typeName;
  final String _loader;

  @override
  bool targets(ManagedType type) => type.getTypeName() == _typeName;

  @override
  DeSer? ser(MarshalingContext context, ManagedType? type) {
    if (type == null) return null;
    type.throwIfNullable();
    final code = '(($Dollar) => ($Dollar as $type).toJson())';
    return DeSer(code, true, false);
  }

  @override
  DeSer? deser(MarshalingContext context, ManagedType? type) {
    if (type == null) return null;
    type.throwIfNullable();
    final code = '(($Dollar) => $_loader.fromJson($Dollar))';
    return DeSer(code, true, false);
  }
}
