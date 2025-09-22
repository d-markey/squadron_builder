part of 'managed_type.dart';

class _ManagedSetType extends ManagedType {
  _ManagedSetType._(
    String prefix,
    this.dartType,
    TypeManager typeManager,
    NullabilitySuffix nullabilitySuffix,
  ) : super._(prefix, dartType, typeManager, nullabilitySuffix);

  @override
  _ManagedSetType _forceNullability(bool nullable) => _ManagedSetType._(
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
    final set = item.isNullable ? 'nset' : 'set';
    final code = '$set(${convert.code})';
    return DeSer(code, true, convert.contextAware);
  }

  @override
  DeSer? deser(MarshalingContext context) {
    throwIfNullable();
    final item = typeArguments.first;
    final convert = context.deser(item.nonNullable);
    final set = item.isNullable ? 'nset' : 'set';
    final code = '$set<${item.nonNullable}>(${convert.code})';
    return DeSer(code, true, convert.contextAware);
  }
}
