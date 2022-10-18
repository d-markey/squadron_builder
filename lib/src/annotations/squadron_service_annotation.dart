import 'package:analyzer/dart/element/element.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations_reader.dart';
import 'marshalling_manager.dart';

class SquadronServiceAnnotation {
  SquadronServiceAnnotation._(
      ClassElement classElement,
      this.pool,
      this.vm,
      this.web,
      this.baseUrl,
      this.parameters,
      this.arguments,
      this.serializedArguments,
      this.deserializedArguments)
      : name = classElement.name,
        methods =
            List.unmodifiable(classElement.methods.where((m) => !m.isStatic)),
        accessors =
            List.unmodifiable(classElement.accessors.where((m) => !m.isStatic));

  final List<MethodElement> methods;
  final List<PropertyAccessorElement> accessors;

  final String name;
  final bool pool;
  final bool vm;
  final bool web;
  final String baseUrl;

  final String parameters;
  final String arguments;
  final String serializedArguments;
  final String deserializedArguments;

  static final _inspector = MarshallingManager();

  static SquadronServiceAnnotation? load(ClassElement classElement) {
    final reader = AnnotationReader<SquadronService>(classElement);
    if (reader.isEmpty) return null;
    final pool = reader.isSet('pool');
    final vm = reader.isSet('vm');
    final web = reader.isSet('web');
    var baseUrl = reader.getString('baseUrl') ?? '';
    if (baseUrl.isNotEmpty && baseUrl.endsWith('/')) {
      baseUrl = baseUrl.substring(0, baseUrl.length - 1);
    }

    var params = '', args = '', serArgs = '', deserArgs = '';
    final ctorElement = classElement.unnamedConstructor;

    if (ctorElement != null && ctorElement.parameters.isNotEmpty) {
      var closeOptParams = '';

      for (var n = 0; n < ctorElement.parameters.length; n++) {
        final param = ctorElement.parameters[n];

        final explicitMarshaller =
            AnnotationReader.getExplicitMarshaller(param);

        final marshaller =
            _inspector.getMarshaller(param.type, explicit: explicitMarshaller);

        if (n > 0) {
          params += ', ';
          args += ', ';
          serArgs += ', ';
          deserArgs += ', ';
        }

        if (param.isOptionalPositional && closeOptParams.isEmpty) {
          closeOptParams = ']';
          params += '[ ';
        } else if (param.isNamed && closeOptParams.isEmpty) {
          closeOptParams = '}';
          params += '{ ';
        }

        final def = param.hasDefaultValue ? ' = ${param.defaultValueCode}' : '';
        final req = param.isRequiredNamed ? 'required ' : '';
        params += '$req${param.type} ${param.name}$def';
        if (param.isNamed) {
          args += '${param.name}: ';
          serArgs += '${param.name}: ';
          deserArgs += '${param.name}: ';
        }

        args += param.name;
        serArgs += marshaller.serialize(param.type, param.name);
        deserArgs +=
            marshaller.deserialize(param.type, 'startRequest.args[$n]');
      }

      if (closeOptParams.isNotEmpty) {
        params += ' $closeOptParams';
      }
    }

    return SquadronServiceAnnotation._(
        classElement, pool, vm, web, baseUrl, params, args, serArgs, deserArgs);
  }
}
