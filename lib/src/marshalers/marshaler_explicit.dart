part of 'marshaler.dart';

class _ExplicitMarshaler extends Marshaler {
  _ExplicitMarshaler(
      TypeManager typeManager, this._marshaler, ManagedType marshalerType)
      : _itemType = marshalerType.typeArguments.first,
        _pivotType = marshalerType.typeArguments.last {
    final elt = (_marshaler.toTypeValue() ?? _marshaler.type)?.element;
    final clazz = (elt is InterfaceElement) ? elt : null;

    final marshal = clazz?.methods
        .where((m) => m.name == 'marshal' && !m.isStatic)
        .singleOrNull;

    final unmarshal = clazz?.methods
        .where((m) => m.name == 'unmarshal' && !m.isStatic)
        .singleOrNull;

    _useMarshalTearOff = marshal?.returnType is DynamicType;
    _useUnmarshalTearOff = unmarshal?.parameters.first.type is DynamicType;

    final variable = _marshaler.variable;
    if (variable != null) {
      if (variable.enclosingElement3 is InterfaceElement) {
        _instance = '${variable.enclosingElement3!.name!}.${variable.name}';
      } else {
        _instance = variable.name;
      }
    } else {
      final typeName = typeManager
          .handleDartType(_marshaler.toTypeValue() ?? _marshaler.type!)
          .getTypeName();
      _instance = '(const $typeName())';
    }
  }

  final DartObject _marshaler;
  late final String _instance;
  final ManagedType _itemType;
  final ManagedType _pivotType;

  bool _useMarshalTearOff = false;
  bool _useUnmarshalTearOff = false;

  @override
  bool targets(ManagedType type) => type.dartType?.isA(_itemType) ?? false;

  @override
  String serializerOf(ManagedType type) => _useMarshalTearOff
      ? '$_instance.${type.isNullable ? 'n' : ''}marshal'
      : '((\$_) => $_instance.${type.isNullable ? 'n' : ''}marshal(\$_, \$mc))';

  @override
  String deserializerOf(ManagedType type) {
    final convert = _pivotType.getDeserializer();
    return (convert.isEmpty && _useUnmarshalTearOff)
        ? '$_instance.${type.isNullable ? 'n' : ''}unmarshal'
        : (convert.isEmpty
            ? '((\$_) => $_instance.${type.isNullable ? 'n' : ''}unmarshal(\$_, \$mc))'
            : '((\$_) => $_instance.${type.isNullable ? 'n' : ''}unmarshal($convert(\$_), \$mc))');
  }
}
