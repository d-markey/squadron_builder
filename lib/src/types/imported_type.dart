part of 'managed_type.dart';

base class ImportedType implements ManagedType {
  ImportedType._(
      this.pckUri, this.prefix, this.baseName, this.nullabilitySuffix);

  ImportedType(String pckUri, String alias, String baseName)
      : this._(
          pckUri,
          alias.isEmpty ? '' : '$alias.',
          baseName,
          (baseName == 'dynamic')
              ? NullabilitySuffix.question
              : NullabilitySuffix.none,
        );

  @override
  ImportedType _forceNullability(bool nullable) => ImportedType._(
        pckUri,
        prefix,
        (baseName == 'dynamic' && !nullable) ? 'Object' : baseName,
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
  Marshaler? _attachedMarshaler;

  @override
  Marshaler? get attachedMarshaler => _attachedMarshaler;

  @override
  void setMarshaler(Marshaler marshaler) => throw UnimplementedError();

  @override
  DartType? get dartType => null;

  @override
  String getDeserializer() =>
      '\$mc.${isNullable ? 'n' : ''}value<$nonNullable>()';

  @override
  String getSerializer() =>
      '\$mc.${isNullable ? 'n' : ''}value<$nonNullable>()';

  @override
  String serialize(String expr) {
    final serialize = getSerializer();
    return serialize.isEmpty ? expr : '$serialize($expr)';
  }

  @override
  String deserialize(String expr) {
    final deserialize = getDeserializer();
    return deserialize.isEmpty ? expr : '$deserialize($expr)';
  }

  @override
  String getTypeName() => (baseName == 'dynamic')
      ? (isNullable ? '$prefix$baseName' : '${prefix}Object')
      : '$prefix$baseName${nullabilitySuffix.suffix}';

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
