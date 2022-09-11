import 'dart:io';

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations_reader.dart';

class SquadronMethodAnnotation {
  SquadronMethodAnnotation._(
      this.name, this.inspectRequest, this.inspectResponse);

  final String name;

  final bool inspectRequest;
  final bool inspectResponse;

  int _id = -1;
  int get id => _id;

  void setId(int id) => _id = id;

  String _returnType = '';
  String get returnType => _returnType;

  bool _needsSerialization = false;
  bool get needsSerialization => _needsSerialization;

  bool _isStream = false;
  bool get isStream => _isStream;

  String get workerExecutor => _isStream ? 'stream' : 'send';
  String get poolExecutor => _isStream ? 'stream' : 'execute';

  String _parameters = '';
  String get parameters => _parameters;

  String _arguments = '';
  String get arguments => _arguments;

  String _serializedArguments = '';
  String get serializedArguments => _serializedArguments;

  String _deserializedArguments = '';
  String get deserializedArguments => _deserializedArguments;

  String? _cancellationToken;
  String get cancellationToken => _cancellationToken ?? 'null';

  static bool _isCancellationToken(ParameterElement param) {
    final locationComponents =
        param.type.element2?.location?.components ?? const [];
    return locationComponents.any((c) => c.startsWith('package:squadron/')) &&
        (param.type.getDisplayString(withNullability: false) ==
            'CancellationToken');
  }

  static final _futureOr = RegExp('^FutureOr\\b');

  static final _inspector = SerializationInspector();

  void _load(MethodElement methodElement) {
    var params = '', args = '', serArgs = '', deserArgs = '';
    var closeOptParams = '';
    var sidx = 0;

    var returnType = methodElement.returnType;

    // TODO
    DartType? type;
    if (returnType.isDartAsyncFuture && returnType is ParameterizedType) {
      type = returnType.typeArguments.first;
      type.element2!.visitChildren(_inspector);
      _needsSerialization = _inspector.isSerializable(type);
    }

    for (var n = 0; n < methodElement.parameters.length; n++) {
      final param = methodElement.parameters[n];

      // TODO: investigate when type is nullable
      param.type.element2?.visitChildren(_inspector);
      final nullable = (param.type.nullabilitySuffix != NullabilitySuffix.none);

      final isToken =
          (_cancellationToken == null) && _isCancellationToken(param);
      if (isToken) {
        _cancellationToken = param.name;
      }
      if (n > 0) {
        params += ', ';
        args += ', ';
        deserArgs += ', ';
      }
      if (!isToken && sidx > 0) {
        serArgs += ', ';
      }
      if (param.isOptionalPositional && closeOptParams.isEmpty) {
        closeOptParams = ']';
        params += '[ ';
      } else if (param.isOptionalNamed && closeOptParams.isEmpty) {
        closeOptParams = '}';
        params += '{ ';
      }
      final def = param.hasDefaultValue ? ' = ${param.defaultValueCode}' : '';
      final req = param.isRequiredNamed ? 'required ' : '';
      params += '$req${param.type} ${param.name}$def';
      if (param.isNamed) {
        args += '${param.name}: ${param.name}';
        if (isToken) {
          deserArgs += '${param.name}: r.cancelToken';
        } else {
          serArgs += _inspector.isSerializable(param.type)
              ? (nullable
                  ? '(${param.name} == null) ? null : ${param.name}.toJson()'
                  : '${param.name}.toJson()')
              : param.name;
          deserArgs += _inspector.isSerializable(param.type)
              ? (nullable
                  ? '(r.args[$sidx] == null) ? null : ${param.type.getDisplayString(withNullability: false)}.fromJson(r.args[$sidx])'
                  : '${param.type.getDisplayString(withNullability: false)}.fromJson(r.args[$sidx])')
              : 'r.args[$sidx]';
          sidx++;
        }
      } else {
        args += param.name;
        if (isToken) {
          deserArgs += 'r.cancelToken';
        } else {
          serArgs += _inspector.isSerializable(param.type)
              ? (nullable
                  ? '(${param.name} == null) ? null : ${param.name}.toJson()'
                  : '${param.name}.toJson()')
              : param.name;
          deserArgs += _inspector.isSerializable(param.type)
              ? (nullable
                  ? '(r.args[$sidx] == null) ? null : ${param.type.getDisplayString(withNullability: false)}.fromJson(r.args[$sidx])'
                  : '${param.type.getDisplayString(withNullability: false)}.fromJson(r.args[$sidx])')
              : 'r.args[$sidx]';
          sidx++;
        }
      }
    }

    if (closeOptParams.isNotEmpty) {
      params += ' $closeOptParams';
    }

    _isStream = methodElement.returnType.isDartAsyncStream;

    _returnType =
        methodElement.returnType.getDisplayString(withNullability: false);
    if (_returnType.startsWith(_futureOr)) {
      _returnType = _returnType.replaceAll(_futureOr, 'Future');
    }

    _parameters = params;
    _arguments = args;
    _serializedArguments = serArgs;
    _deserializedArguments = deserArgs;
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

class SerializationInspector extends SimpleElementVisitor {
  final cache = <Element, List<Element>>{};

  List<Element>? _getFromCache(DartType type) {
    final element = type.element2?.declaration;
    if (element == null) return null;
    return cache[element];
  }

  bool hasToJson(DartType type) {
    final info = _getFromCache(type);
    return info?.any((m) =>
            m is MethodElement &&
            !m.isPrivate &&
            !m.isAbstract &&
            m.returnType.isDartCoreMap &&
            m.name == 'toJson' &&
            m.parameters.isEmpty) ??
        false;
  }

  bool hasFromJson(DartType type) {
    final info = _getFromCache(type);
    return info?.any((c) =>
            c is ConstructorElement &&
            !c.isPrivate &&
            !c.isAbstract &&
            c.isFactory &&
            c.name == 'fromJson' &&
            c.parameters.length == 1 &&
            c.parameters[0].declaration.type.isDartCoreMap) ??
        false;
  }

  bool isSerializable(DartType type) => hasToJson(type) && hasFromJson(type);

  @override
  void visitTypeParameterElement(TypeParameterElement element) {
    stdout.writeln('==> $element');
    return;
  }

  @override
  void visitConstructorElement(ConstructorElement element) {
    element = element.declaration;
    final clazz = element.enclosingElement3;
    var info = cache[clazz];
    if (info == null) {
      info = [];
      cache[clazz] = info;
    }
    if (!info.contains(element)) {
      info.add(element);
    }
  }

  @override
  void visitMethodElement(MethodElement element) {
    element = element.declaration;
    final clazz = element.enclosingElement3;
    var info = cache[clazz];
    if (info == null) {
      info = [];
      cache[clazz] = info;
    }
    if (!info.contains(element)) {
      info.add(element);
    }
  }
}
