part of 'managed_type.dart';

base class ImportedType with ManagedTypeMixin implements ManagedType {
  ImportedType._(
      this.pckUri, this.prefix, this.baseName, this.nullabilitySuffix);

  ImportedType(String pckUri, String alias, String baseName)
      : this._(
          pckUri,
          alias.isEmpty ? '' : '$alias.',
          baseName,
          NullabilitySuffix.none,
        );

  @override
  ImportedType _forceNullability(bool nullable) => ImportedType._(
        pckUri,
        prefix,
        (isDynamic && !nullable) ? 'Object' : baseName,
        nullable ? NullabilitySuffix.question : NullabilitySuffix.none,
      );

  static final ImportedType unset = ImportedType('', '', '');

  @override
  TypeManager get typeManager => throw UnimplementedError();

  @override
  final NullabilitySuffix nullabilitySuffix;

  @override
  final String prefix;

  final String pckUri;
  final String baseName;

  @override
  bool get isDynamic => baseName == 'dynamic';

  @override
  bool get isNumericType =>
      baseName == 'int' || baseName == 'double' || baseName == 'num';

  @override
  bool get isPrimaryType =>
      isNumericType || baseName == 'bool' || baseName == 'String';

  @override
  DartType? get dartType => null;

  @override
  DeSer? ser(MarshalingContext context, bool? withContext) {
    throwIfNullable();
    final ser = attachedMarshaler?.ser(context, this);
    if (ser != null) return ser;
    if (isPrimaryType) withContext = false;
    return (withContext ?? false) ? DeSer('value<$this>()', true, false) : null;
  }

  @override
  DeSer? deser(MarshalingContext context) {
    throwIfNullable();
    final deser = attachedMarshaler?.deser(context, this);
    if (deser != null) return deser;
    return DeSer('value<$this>()', true, false);
  }

  @override
  String getTypeName({bool omitPrefix = false}) {
    final px = omitPrefix ? '' : prefix;
    return isDynamic
        ? (isNullable ? '${px}dynamic' : '${px}Object')
        : '$px$baseName${nullabilitySuffix.suffix}';
  }

  @override
  String toString() => getTypeName();

  @override
  List<ManagedType> get typeArguments => throw UnimplementedError();

  @override
  ManagedType? _nonNullable;

  @override
  ManagedType get nonNullable =>
      isNullable ? (_nonNullable ??= _forceNullability(false)) : this;

  @override
  ManagedType? _nullable;

  @override
  ManagedType get nullable =>
      isNullable ? this : (_nullable ??= _forceNullability(true));
}
