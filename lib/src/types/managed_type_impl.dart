part of 'managed_type.dart';

class _ManagedTypeImpl extends ManagedType {
  _ManagedTypeImpl._(
    String prefix,
    this.dartType,
    TypeManager typeManager,
    NullabilitySuffix nullabilitySuffix,
  ) : super._(prefix, dartType, typeManager, nullabilitySuffix);

  @override
  _ManagedTypeImpl _forceNullability(bool nullable) => _ManagedTypeImpl._(
    prefix,
    (dartType is DynamicType && !nullable)
        ? typeManager.library.typeProvider.objectType
        : dartType,
    typeManager,
    nullable ? NullabilitySuffix.question : NullabilitySuffix.none,
  );

  @override
  final DartType dartType;

  @override
  void attachMarshaler(Marshaler marshaler) {
    nullable._attachedMarshaler = marshaler;
    nonNullable._attachedMarshaler = marshaler;
  }

  @override
  bool get isNumericType =>
      dartType.isDartCoreDouble ||
      dartType.isDartCoreInt ||
      dartType.isDartCoreNum;

  @override
  bool get isPrimaryType =>
      isNumericType || dartType.isDartCoreBool || dartType.isDartCoreString;

  @override
  DeSer? ser(MarshalingContext context, bool? withContext) {
    throwIfNullable();
    final ser = attachedMarshaler?.ser(context, this);
    if (ser != null) return ser;
    if (dartType.isEnum) {
      final code = '(($Dollar) => ($Dollar as $this).index)';
      return DeSer(code, false, false);
    } else {
      if (isPrimaryType) withContext = false;
      return (withContext ?? false)
          ? DeSer('value<$this>()', true, false)
          : null;
    }
  }

  @override
  DeSer? deser(MarshalingContext context) {
    throwIfNullable();
    final deser = attachedMarshaler?.deser(context, this);
    if (deser != null) return deser;
    if (isDynamic) return null;
    if (dartType.isEnum) {
      final convert = context.deser(typeManager.TInt);
      final arg = (convert == null) ? Dollar : '${convert.code}($Dollar)';
      final code = '(($Dollar) => $this.values[$arg])';
      return DeSer(code, convert.needsContext, false);
    } else {
      return DeSer('value<$this>()', true, false);
    }
  }
}

enum X { A, B, C }
