import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations_reader.dart';
import 'serialization_info.dart';
import 'serialization_inspector.dart';

class SquadronMethodAnnotation {
  SquadronMethodAnnotation._(
      this.name, this.inspectRequest, this.inspectResponse)
      : id = '_\$${name}Id';

  final String name;

  final bool inspectRequest;
  final bool inspectResponse;

  int? _num;
  int get num => _num ?? -1;

  void setNum(int num) => _num ??= num;

  final String id;

  String _returnType = '';
  String get returnType => _returnType;

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

  String Function(String res) _serializedResult = SerializationInfo.asIs;
  String Function(String res) get serializedResult => _serializedResult;
  bool get needsSerialization => _serializedResult != SerializationInfo.asIs;

  String Function(String res) _deserializedResult = SerializationInfo.asIs;
  String Function(String res) get deserializedResult => _deserializedResult;
  bool get needsDeserialization =>
      _deserializedResult != SerializationInfo.asIs;

  static final _futureOr = RegExp('^FutureOr\\b');

  static final _inspector = SerializationInspector();

  static bool _isCancellationToken(ParameterElement param) {
    final locationComponents =
        param.type.element2?.location?.components ?? const [];
    return locationComponents.any((c) => c.startsWith('package:squadron/')) &&
        (param.type.getDisplayString(withNullability: false) ==
            'CancellationToken');
  }

  void _load(MethodElement methodElement) {
    var params = '', args = '', serArgs = '', deserArgs = '';
    var closeOptParams = '';
    var sidx = 0;

    var returnType = methodElement.returnType;

    if (!returnType.isDartAsyncFuture &&
        !returnType.isDartAsyncFutureOr &&
        !returnType.isDartAsyncStream) {
      throw InvalidGenerationSourceError(
          '${methodElement.librarySource.fullName}: Service method \'${methodElement.enclosingElement3.displayName}.${methodElement.name}\' must return a Future, a FutureOr, or a Stream.');
    }

    final explicitSerialiser =
        SerializationInfo.getExplicitSerializer(methodElement);

    if (explicitSerialiser != null || returnType is ParameterizedType) {
      final type = returnType is ParameterizedType
          ? returnType.typeArguments.first
          : returnType;
      final generators = _inspector.getSerializationGenerators(type,
          explicitSerializer: explicitSerialiser);
      _deserializedResult = generators.deserializer;
      _serializedResult = generators.serializer;
    }

    for (var n = 0; n < methodElement.parameters.length; n++) {
      final param = methodElement.parameters[n];

      final serializer = SerializationInfo.getExplicitSerializer(param);

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
        args += '${param.name}: ';
        deserArgs += '${param.name}: ';
      }

      args += param.name;
      if (isToken) {
        deserArgs += 'r.cancelToken';
      } else {
        final generators = _inspector.getSerializationGenerators(param.type,
            explicitSerializer: serializer);
        serArgs += generators.serializer(param.name);
        deserArgs += generators.deserializer('r.args[$sidx]');
        sidx++;
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
