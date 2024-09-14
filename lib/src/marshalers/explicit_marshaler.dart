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
  String serializerOf(ManagedType type, Converters converters) {
    final serializer = '$_instance.marshaler';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? serializer
        : '${converters.instance}.nullable($serializer)';
  }

  @override
  String deserializerOf(ManagedType type, Converters converters) {
    final deserializer = '$_instance.unmarshaler';
    return (type.nullabilitySuffix == NullabilitySuffix.none)
        ? deserializer
        : '${converters.instance}.nullable($deserializer)';
  }
}
