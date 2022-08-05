import 'package:analyzer/dart/element/element.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations_reader.dart';

class SquadronMethodAnnotation {
  SquadronMethodAnnotation._(
      this.name, this.inspectRequest, this.inspectResponse);

  final String name;

  final bool inspectRequest;
  final bool inspectResponse;

  String _returnType = 'Future';
  String get returnType => _returnType;

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

  String? _cancellationToken;
  String? get cancellationToken => _cancellationToken;

  static bool _isCancellationToken(ParameterElement param) {
    final locationComponents =
        param.type.element?.location?.components ?? const [];
    return locationComponents.any((c) => c.startsWith('package:squadron/')) &&
        (param.type.getDisplayString(withNullability: false) ==
            'CancellationToken');
  }

  void _load(MethodElement methodElement) {
    var p = '', a = '', s = '', d = '';
    var optPositional = false, optNamed = false;
    var sidx = 0;
    for (var n = 0; n < methodElement.parameters.length; n++) {
      final param = methodElement.parameters[n];
      final isToken =
          (_cancellationToken == null) && _isCancellationToken(param);
      if (isToken) {
        _cancellationToken = param.name;
      }
      if (n > 0) {
        p += ', ';
        a += ', ';
        d += ', ';
      }
      if (!isToken && sidx > 0) {
        s += ', ';
      }
      if (param.isOptionalPositional && !optPositional) {
        optPositional = true;
        p += '[ ';
      } else if (param.isOptionalNamed && !optNamed) {
        optNamed = true;
        p += '{ ';
      }
      final def = param.hasDefaultValue ? ' = ${param.defaultValueCode}' : '';
      final req = param.isRequiredNamed ? 'required ' : '';
      p += '$req${param.type} ${param.name}$def';
      if (param.isNamed) {
        a += '${param.name}: ${param.name}';
        if (isToken) {
          d += '${param.name}: r.cancelToken';
        } else {
          s += param.name;
          d += '${param.name}: r.args[$sidx]';
          sidx++;
        }
      } else {
        a += param.name;
        if (isToken) {
          d += 'r.cancelToken';
        } else {
          s += param.name;
          d += 'r.args[$sidx]';
          sidx++;
        }
      }
    }
    if (optPositional) {
      p += ' ]';
    } else if (optNamed) {
      p += ' }';
    }

    if (methodElement.returnType.isDartAsyncStream) {
      _workerExecutor = 'stream';
      _poolExecutor = 'stream';
    } else {
      _workerExecutor = 'send';
      _poolExecutor = 'execute';
    }

    _returnType =
        methodElement.returnType.getDisplayString(withNullability: false);
    if (methodElement.returnType.isDartAsyncFutureOr) {
      _returnType = _returnType.replaceAll(RegExp('^FutureOr\\b'), 'Future');
    }

    _parameters = p;
    _arguments = a;
    _serializedArguments = s;
    _deserializedArguments = d;
  }

  static SquadronMethodAnnotation? load(MethodElement methodElement) {
    final reader = AnnotationReader<SquadronMethod>(methodElement);
    if (reader.isEmpty) return null;
    final inspectRequest = reader.isSet('inspectRequest');
    final inspectResponse = reader.isSet('inspectResponse');
    final annotation = SquadronMethodAnnotation._(
        methodElement.name, inspectRequest, inspectResponse);
    annotation._load(methodElement);
    return annotation;
  }

  static SquadronMethodAnnotation unimplemented(MethodElement methodElement) {
    final annotation =
        SquadronMethodAnnotation._(methodElement.name, false, false);
    annotation._load(methodElement);
    return annotation;
  }
}
