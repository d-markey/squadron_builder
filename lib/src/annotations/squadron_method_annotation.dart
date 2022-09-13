import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations_reader.dart';
import 'serialization_inspector.dart';

class SquadronMethodAnnotation {
  SquadronMethodAnnotation._(
      this.name, this.inspectRequest, this.inspectResponse);

  final String name;

  final bool inspectRequest;
  final bool inspectResponse;

  int? _id;
  int get id => _id ?? -1;

  void setId(int id) => _id ??= id;

  String _returnType = '';
  String get returnType => _returnType;

  bool _needsSerialization = false;
  bool get needsSerialization => _needsSerialization;

  bool _nullable = false;
  bool get nullable => _nullable;

  bool _isStream = false;
  bool get isStream => _isStream;

  String get workerExecutor => _isStream ? 'stream' : 'send';
  String get poolExecutor => _isStream ? 'stream' : 'execute';

  String get continuation => _isStream ? 'map' : 'then';

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

  static String _asIs(String res) => res;

  String Function(String res) _serializedResult = _asIs;
  String Function(String res) get serializedResult => _serializedResult;

  String Function(String res) _deserializedResult = _asIs;
  String Function(String res) get deserializedResult => _deserializedResult;

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

    DartType? type;
    if (!returnType.isDartAsyncFuture &&
        !returnType.isDartAsyncFutureOr &&
        !returnType.isDartAsyncStream) {
      throw InvalidGenerationSourceError(
          '${methodElement.librarySource.fullName}: Service method \'${methodElement.enclosingElement3.displayName}.${methodElement.name}\' should return a Future, a FutureOr, or a Stream.');
    }

    if (returnType is ParameterizedType) {
      type = returnType.typeArguments.first;
      type.element2!.visitChildren(_inspector);
      _nullable = (type.nullabilitySuffix != NullabilitySuffix.none);
      _needsSerialization = _inspector.isSerializable(type);
      if (_needsSerialization) {
        if (_nullable) {
          _serializedResult = (String res) => '$res?.toJson()';
          _deserializedResult = (String res) =>
              '($res == null) ? null : ${type!.getDisplayString(withNullability: false)}.fromJson($res)';
        } else {
          _serializedResult = (String res) => '$res.toJson()';
          _deserializedResult = (String res) =>
              '${type!.getDisplayString(withNullability: false)}.fromJson($res)';
        }
      }
    }

    for (var n = 0; n < methodElement.parameters.length; n++) {
      final param = methodElement.parameters[n];

      param.type.element2?.visitChildren(_inspector);
      final isSerializable = _inspector.isSerializable(param.type);
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
      if (param.isNamed) {
        if (closeOptParams.isEmpty) {
          closeOptParams = '}';
          params += '{ ';
        }
        if (param.isRequired) {
          params += 'required ';
        }
      } else if (param.isOptionalPositional && closeOptParams.isEmpty) {
        closeOptParams = ']';
        params += '[ ';
      }

      final def = param.hasDefaultValue ? ' = ${param.defaultValueCode}' : '';
      params += '${param.type} ${param.name}$def';

      if (param.isNamed) {
        args += '${param.name}: ${param.name}';
        if (isToken) {
          deserArgs += '${param.name}: r.cancelToken';
        } else {
          serArgs += isSerializable
              ? (nullable
                  ? '${param.name}?.toJson()'
                  : '${param.name}.toJson()')
              : param.name;
          deserArgs += isSerializable
              ? (nullable
                  ? '${param.name}: (r.args[$sidx] == null) ? null : ${param.type.getDisplayString(withNullability: false)}.fromJson(r.args[$sidx])'
                  : '${param.name}: ${param.type.getDisplayString(withNullability: false)}.fromJson(r.args[$sidx])')
              : '${param.name}: r.args[$sidx]';
          sidx++;
        }
      } else {
        args += param.name;
        if (isToken) {
          deserArgs += 'r.cancelToken';
        } else {
          serArgs += isSerializable
              ? (nullable
                  ? '${param.name}?.toJson()'
                  : '${param.name}.toJson()')
              : param.name;
          deserArgs += isSerializable
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

    _returnType = methodElement.returnType.toString();
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
