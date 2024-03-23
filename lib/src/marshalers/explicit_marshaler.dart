part of 'marshaler.dart';

class _ExplicitMarshaler extends Marshaler {
  _ExplicitMarshaler(this._marshaler, this._marshalerType) {
    _itemType = _marshalerType.typeArguments.first;
    final variable = _marshaler.variable;
    if (variable != null) {
      if (variable.enclosingElement is ClassElement) {
        _instance = '${variable.enclosingElement!.name}.${variable.name}';
      } else {
        _instance = variable.name;
      }
    } else {
      var typeName = (_marshaler.toTypeValue() ?? _marshaler.type).toString();
      if (typeName.endsWith('?') || typeName.endsWith('*')) {
        typeName = typeName.substring(0, typeName.length - 1);
      }
      _instance = '(const $typeName())';
    }
  }

  final DartObject _marshaler;
  final ManagedType _marshalerType;
  late final String _instance;
  late final ManagedType _itemType;

  @override
  bool targets(ManagedType type) => type.dartType?.isA(_itemType) ?? false;

  @override
  Adapter getSerializer(ManagedType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (v) => '$_instance.marshal($v)'
          : (v) => '($v == null) ? null : $_instance.marshal($v)';

  @override
  Adapter getDeserializer(ManagedType type, {bool forceCast = false}) {
    final cast = (forceCast ||
            (type.dartType?.implementedTypes(_itemType).isNotEmpty ?? false))
        ? ' as $type${type.nullabilitySuffix.suffix}'
        : '';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? (v) => '$_instance.unmarshal($v)$cast'
        : (v) => '($v == null) ? null : $_instance.unmarshal($v)$cast';
  }
}
