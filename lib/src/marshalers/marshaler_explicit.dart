part of 'marshaler.dart';

class _ExplicitMarshaler extends Marshaler {
  _ExplicitMarshaler(
      TypeManager typeManager, this._marshaler, this._marshalerType) {
    _itemType = _marshalerType.typeArguments.first;

    final elt = (_marshaler.toTypeValue() ?? _marshaler.type)?.element;
    final clazz = (elt is InterfaceElement) ? elt : null;

    final marshal =
        clazz?.methods.where((m) => m.name == 'marshal').singleOrNull;
    final unmarshal =
        clazz?.methods.where((m) => m.name == 'unmarshal').singleOrNull;

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
          .getTypeName(NullabilitySuffix.none);
      _instance = '(const $typeName())';
    }
  }

  final DartObject _marshaler;
  final ManagedType _marshalerType;
  late final String _instance;
  late final ManagedType _itemType;

  bool _useMarshalTearOff = false;
  bool _useUnmarshalTearOff = false;

  @override
  bool targets(ManagedType type) => type.dartType?.isA(_itemType) ?? false;

  @override
  String serializerOf(ManagedType type, Converters converters) =>
      _useMarshalTearOff
          ? '$_instance.marshal'
          : '((\$) => $_instance.marshal(\$))';

  @override
  String deserializerOf(ManagedType type, Converters converters) =>
      _useUnmarshalTearOff
          ? '$_instance.unmarshal'
          : '((\$) => $_instance.unmarshal(\$))';
}
