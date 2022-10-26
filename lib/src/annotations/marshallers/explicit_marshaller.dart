part of 'marshaller.dart';

class _ExplicitMarshaller extends Marshaller {
  _ExplicitMarshaller(this.marshaller, this.marshallerType) {
    itemTypeName = marshallerType.typeArguments.first.baseName;
    final variable = marshaller.variable;
    if (variable != null) {
      if (variable.enclosingElement is ClassElement) {
        instance = '${variable.enclosingElement!.name}.${variable.name}';
      } else {
        instance = variable.name;
      }
    } else {
      var typeName = (marshaller.toTypeValue() ?? marshaller.type).toString();
      if (typeName.endsWith('?') || typeName.endsWith('*')) {
        typeName = typeName.substring(0, typeName.length - 1);
      }
      instance = '(const $typeName())';
    }
  }

  final DartObject marshaller;
  final InterfaceType marshallerType;
  late final String instance;
  late final String itemTypeName;

  @override
  bool targets(DartType type) => type.baseName == itemTypeName;

  @override
  Generator getSerializer(DartType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (v) => '$instance.marshall($v)'
          : (v) => '($v == null) ? null : $instance.marshall($v)';

  @override
  Generator getDeserializer(DartType type) =>
      (type.nullabilitySuffix == NullabilitySuffix.none)
          ? (v) => '$instance.unmarshall($v)'
          : (v) => '($v == null) ? null : $instance.unmarshall($v)';
}
