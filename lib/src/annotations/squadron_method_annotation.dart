import 'package:analyzer/dart/element/element.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations_reader.dart';

class SquadronMethodAnnotation {
  SquadronMethodAnnotation._(this.method);

  final MethodElement method;

  String _workerExecutor = 'send';
  String get workerExecutor => _workerExecutor;

  String _poolExecutor = 'execute';
  String get poolExecutor => _poolExecutor;

  String _parameters = '';
  String get parameters => _parameters;

  String _arguments = '';
  String get arguments => _arguments;

  String _serializedArguments = '';
  String get serializedArguments => _serializedArguments;

  String _deserializedArguments = '';
  String get deserializedArguments => _deserializedArguments;

  void _load() {
    var p = '', a = '', s = '', d = '';
    var optPositional = false, optNamed = false;
    for (var n = 0; n < method.parameters.length; n++) {
      final param = method.parameters[n];
      if (n > 0) {
        p += ', ';
        a += ', ';
        s += ', ';
        d += ', ';
      }
      if (param.isOptionalPositional && !optPositional) {
        optPositional = true;
        p += '[ ';
      } else if (param.isOptionalNamed && !optNamed) {
        optNamed = true;
        p += '{ ';
      }
      final def = param.hasDefaultValue ? ' = ${param.defaultValueCode}' : '';
      p += '${param.type} ${param.name}$def';
      if (param.isNamed) {
        a += '${param.name}: ${param.name}';
        s += param.name;
        d += '${param.name}: r.args[$n]';
      } else {
        a += param.name;
        s += param.name;
        d += 'r.args[$n]';
      }
    }
    if (optPositional) {
      p += ' ]';
    } else if (optNamed) {
      p += ' }';
    }
    if (method.returnType.isDartAsyncStream) {
      _workerExecutor = 'stream';
      _poolExecutor = 'stream';
    } else {
      _workerExecutor = 'send';
      _poolExecutor = 'execute';
    }
    _parameters = p;
    _arguments = a;
    _serializedArguments = s;
    _deserializedArguments = d;
  }

  static SquadronMethodAnnotation? load(MethodElement method) {
    final reader = AnnotationReader<SquadronMethod>(method);
    if (reader.isEmpty) return null;
    final annotation = SquadronMethodAnnotation._(method);
    annotation._load();
    return annotation;
  }

  static SquadronMethodAnnotation unimplemented(MethodElement method) {
    final annotation = SquadronMethodAnnotation._(method);
    annotation._load();
    return annotation;
  }
}
