import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations_reader.dart';
import 'serialization_inspector.dart';

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

  static final _inspector = SerializationInspector();

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
      var sidx = 0;

      for (var n = 0; n < ctorElement.parameters.length; n++) {
        final param = ctorElement.parameters[n];

        param.type.element2?.visitChildren(_inspector);
        final isSerializable = _inspector.isSerializable(param.type);
        final nullable =
            (param.type.nullabilitySuffix != NullabilitySuffix.none);

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
          args += '${param.name}: ${param.name}';
          serArgs += isSerializable
              ? (nullable
                  ? '${param.name}?.toJson()'
                  : '${param.name}.toJson()')
              : param.name;
          deserArgs += isSerializable
              ? (nullable
                  ? '${param.name}: (startRequest.args[$sidx] == null) ? null : ${param.type.getDisplayString(withNullability: false)}.fromJson(startRequest.args[$sidx])'
                  : '${param.name}: ${param.type.getDisplayString(withNullability: false)}.fromJson(startRequest.args[$sidx])')
              : '${param.name}: startRequest.args[$sidx]';
          sidx++;
        } else {
          args += param.name;
          serArgs += isSerializable
              ? (nullable
                  ? '${param.name}?.toJson()'
                  : '${param.name}.toJson()')
              : param.name;
          deserArgs += isSerializable
              ? (nullable
                  ? '(startRequest.args[$sidx] == null) ? null : ${param.type.getDisplayString(withNullability: false)}.fromJson(startRequest.args[$sidx])'
                  : '${param.type.getDisplayString(withNullability: false)}.fromJson(startRequest.args[$sidx])')
              : 'startRequest.args[$sidx]';
          sidx++;
        }
      }

      if (closeOptParams.isNotEmpty) {
        params += ' $closeOptParams';
      }
    }

    return SquadronServiceAnnotation._(
        classElement, pool, vm, web, baseUrl, params, args, serArgs, deserArgs);
  }
}
