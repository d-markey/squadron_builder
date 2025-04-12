part of 'managed_type.dart';

class _ManagedIterableType extends ManagedType {
  _ManagedIterableType._(
    String prefix,
    this.dartType,
    TypeManager typeManager,
    NullabilitySuffix nullabilitySuffix,
  ) : super._(prefix, dartType, typeManager, nullabilitySuffix);

  @override
  _ManagedIterableType _forceNullability(bool nullable) =>
      _ManagedIterableType._(
        prefix,
        dartType,
        typeManager,
        nullable ? NullabilitySuffix.question : NullabilitySuffix.none,
      );

  @override
  final ParameterizedType dartType;

  @override
  DeSer? ser(MarshalingContext context, bool? withContext) {
    throwIfNullable();
    final item = typeArguments.first;
    final convert = context.ser(item.nonNullable, withContext);
    if (convert == null) return null;
    final list = item.isNullable ? 'nlist' : 'list';
    final code = '$list(${convert.code})';
    return DeSer(code, true, convert.contextAware);
  }

  @override
  DeSer? deser(MarshalingContext context) {
    throwIfNullable();
    final item = typeArguments.single;
    final convert = context.deser(item.nonNullable);
    final list = item.isNullable ? 'nlist' : 'list';
    final code = '$list<${item.nonNullable}>(${convert.code})';
    return DeSer(code, true, convert.contextAware);
  }
}
