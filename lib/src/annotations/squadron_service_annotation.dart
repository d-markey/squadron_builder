import 'package:analyzer/dart/element/element.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations_reader.dart';
import 'marshalling_manager.dart';

class SquadronServiceAnnotation {
  SquadronServiceAnnotation._(ClassElement clazz, this.pool, this.vm, this.web,
      this.baseUrl, this.logger)
      : name = clazz.name {
    _load(clazz);
  }

  final fields = <String, FieldElement>{};
  final accessors = <PropertyAccessorElement>[];
  final methods = <MethodElement>[];

  final String name;
  final bool pool;
  final bool vm;
  final bool web;
  final String baseUrl;
  final String? logger;

  String _parameters = '';
  String get parameters => _parameters;

  String _nonFormalParameters = '';
  String get nonFormalParameters => _nonFormalParameters;

  String _arguments = '';
  String get arguments => _arguments;

  String _nonFormalArguments = '';
  String get nonFormalArguments => _nonFormalArguments;

  String _serializedArguments = '';
  String get serializedArguments => _serializedArguments;

  String _deserializedArguments = '';
  String get deserializedArguments => _deserializedArguments;

  static final _inspector = MarshallingManager();

  void _load(ClassElement clazz) {
    final ctorElement = clazz.unnamedConstructor;

    if (ctorElement != null && ctorElement.parameters.isNotEmpty) {
      var closeOptParams = '';

      for (var n = 0; n < ctorElement.parameters.length; n++) {
        final param = ctorElement.parameters[n];

        final explicitMarshaller =
            AnnotationReader.getExplicitMarshaller(param);

        final marshaller =
            _inspector.getMarshaller(param.type, explicit: explicitMarshaller);

        if (n > 0) {
          _parameters += ', ';
          _nonFormalParameters += ', ';
          _arguments += ', ';
          _nonFormalArguments += ', ';
          _serializedArguments += ', ';
          _deserializedArguments += ', ';
        }

        if (param.isOptionalPositional && closeOptParams.isEmpty) {
          closeOptParams = ']';
          _parameters += '[ ';
          _nonFormalParameters += '[ ';
        } else if (param.isNamed && closeOptParams.isEmpty) {
          closeOptParams = '}';
          _parameters += '{ ';
          _nonFormalParameters += '{ ';
        }

        final def = param.hasDefaultValue ? ' = ${param.defaultValueCode}' : '';
        final req = param.isRequiredNamed ? 'required ' : '';

        String? nonFormalParamName;
        String? argName;
        if (param is FieldFormalParameterElement && param.field != null) {
          if (!param.field!.name.startsWith('_')) {
            fields[param.name] = param.field!;
            _parameters += '${req}this.${param.name}$def';
            if (param.name.startsWith('_')) {
              nonFormalParamName = param.name;
              while (nonFormalParamName!.startsWith('_')) {
                nonFormalParamName = nonFormalParamName.substring(1);
              }
            }
          } else {
            nonFormalParamName = param.field!.name;
            while (nonFormalParamName!.startsWith('_')) {
              nonFormalParamName = nonFormalParamName.substring(1);
            }
            argName = nonFormalParamName;
            _parameters += '$req${param.type} $nonFormalParamName$def';
          }
        } else {
          _parameters += '$req${param.type} ${param.name}$def';
        }

        _nonFormalParameters +=
            '$req${param.type} ${nonFormalParamName ?? param.name}$def';

        if (param.isNamed) {
          _arguments += '${param.name}: ';
          _nonFormalArguments += '${param.name}: ';
          // _serializedArguments += '${param.name}: ';
          _deserializedArguments += '${param.name}: ';
        }

        _arguments += argName ?? param.name;
        _nonFormalArguments += nonFormalParamName ?? param.name;
        _serializedArguments +=
            marshaller.serialize(param.type, nonFormalParamName ?? param.name);
        _deserializedArguments +=
            marshaller.deserialize(param.type, 'startRequest.args[$n]');
      }

      if (closeOptParams.isNotEmpty) {
        _parameters += ' $closeOptParams';
        _nonFormalParameters += ' $closeOptParams';
      }
    }

    methods.addAll(clazz.methods.where((m) => !m.isStatic));
    accessors.addAll(clazz.accessors.where((a) =>
        !a.isStatic &&
        ((a.isGetter && !fields.containsKey(a.name)) ||
            (a.isSetter && !fields.containsKey(a.name.replaceAll('=', ''))))));
  }

  static SquadronServiceAnnotation? load(ClassElement clazz) {
    final reader = AnnotationReader<SquadronService>(clazz);
    if (reader.isEmpty) return null;
    final pool = reader.isSet('pool');
    final vm = reader.isSet('vm');
    final web = reader.isSet('web');
    var baseUrl = reader.getString('baseUrl') ?? '';
    if (baseUrl.isNotEmpty && baseUrl.endsWith('/')) {
      baseUrl = baseUrl.substring(0, baseUrl.length - 1);
    }
    final logger = AnnotationReader.getLogger(clazz);
    final annotation =
        SquadronServiceAnnotation._(clazz, pool, vm, web, baseUrl, logger);
    return annotation;
  }
}
