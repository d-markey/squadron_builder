part of 'marshaler.dart';

class _SelfMarshaler extends Marshaler {
  _SelfMarshaler(this.typeName, String? loaderTypeName, this.pivotType,
      this.marshalingContextParam, this.unmarshalingContextParam)
      : loaderTypeName = loaderTypeName ?? typeName;

  final String typeName;
  final String loaderTypeName;

  final ParameterElement? marshalingContextParam;
  final ParameterElement? unmarshalingContextParam;
  final ManagedType? pivotType;

  @override
  bool targets(ManagedType type) => type.nonNullable.getTypeName() == typeName;

  @override
  String serializerOf(ManagedType type) {
    final nullCheck = type.isNullable ? '?' : '';
    return (marshalingContextParam == null)
        ? '((\$_) => (\$_ as $typeName)$nullCheck.marshal())'
        : (marshalingContextParam!.isPositional
            ? '((\$_) => (\$_ as $typeName)$nullCheck.marshal(\$mc))'
            : '((\$_) => (\$_ as $typeName)$nullCheck.marshal(${marshalingContextParam!.name}: \$mc))');
  }

  @override
  String deserializerOf(ManagedType type) {
    return type.isNullable
        ? ((unmarshalingContextParam == null)
            ? '${type.typeManager.TConverter}.allowNull((\$_) => $loaderTypeName.unmarshal(\$_))'
            : (unmarshalingContextParam!.isPositional
                ? '${type.typeManager.TConverter}.allowNull((\$_) => $loaderTypeName.unmarshal(\$_, \$mc))'
                : '${type.typeManager.TConverter}.allowNull((\$_) => $loaderTypeName.unmarshal(\$_, ${unmarshalingContextParam!.name}: \$mc))'))
        : ((unmarshalingContextParam == null)
            ? '((\$_) => $loaderTypeName.unmarshal(\$_))'
            : (unmarshalingContextParam!.isPositional
                ? '((\$_) => $loaderTypeName.unmarshal(\$_, \$mc))'
                : '((\$_) => $loaderTypeName.unmarshal(\$_, ${unmarshalingContextParam!.name}: \$mc))'));
  }
}
