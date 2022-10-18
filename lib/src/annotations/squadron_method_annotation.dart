import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart' as gen;
import 'package:squadron/squadron_annotations.dart';

import '../extensions.dart';
import 'annotations_reader.dart';
import 'marshallers/marshaller.dart';
import 'marshallers/marshalling_info.dart';
import 'marshalling_manager.dart';

class SquadronMethodAnnotation {
  SquadronMethodAnnotation._(
      this.name, this._valueType, this.inspectRequest, this.inspectResponse)
      : id = '_\$${name}Id';

  final String name;

  final String reqName = 'req';

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

  final DartType _valueType;

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

  Marshaller _resultMarshaller = Marshaller.identity;

  late Generator serializedResult = _resultMarshaller.getSerializer(_valueType);
  bool get needsSerialization => _resultMarshaller != Marshaller.identity;

  late Generator deserializedResult =
      _resultMarshaller.getDeserializer(_valueType);
  bool get needsDeserialization => _resultMarshaller != Marshaller.identity;

  static final _futureOr = RegExp('FutureOr\\b');

  static final _marshalling = MarshallingManager();

  static bool _isCancellationToken(ParameterElement param) {
    final locationComponents =
        param.type.element2?.location?.components ?? const [];
    return locationComponents.any((c) => c.startsWith('package:squadron/')) &&
        (param.type.baseName == 'CancellationToken');
  }

  void _load(MethodElement methodElement) {
    var params = '', args = '', serArgs = '', deserArgs = '';
    var closeOptParams = '';
    var sidx = 0;

    var returnType = methodElement.returnType;

    if (returnType is! ParameterizedType ||
        (!returnType.isDartAsyncFuture &&
            !returnType.isDartAsyncFutureOr &&
            !returnType.isDartAsyncStream)) {
      throw gen.InvalidGenerationSourceError(
          '${methodElement.librarySource.fullName}: Service method \'${methodElement.enclosingElement3.displayName}.${methodElement.name}\' must return a Future, a FutureOr, or a Stream.');
    }

    final resultMarshaller =
        AnnotationReader.getExplicitMarshaller(methodElement);

    if (resultMarshaller != null) {
      _resultMarshaller =
          _marshalling.getMarshaller(_valueType, explicit: resultMarshaller);
    }

    for (var n = 0; n < methodElement.parameters.length; n++) {
      final param = methodElement.parameters[n];

      final explicitMarshaller = AnnotationReader.getExplicitMarshaller(param);

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
        deserArgs += '$reqName.cancelToken';
      } else {
        final marshaller = _marshalling.getMarshaller(param.type,
            explicit: explicitMarshaller);
        serArgs += marshaller.serialize(param.type, param.name);
        deserArgs += marshaller.deserialize(param.type, '$reqName.args[$sidx]');
        sidx++;
      }
    }

    if (closeOptParams.isNotEmpty) {
      params += ' $closeOptParams';
    }

    _isStream = methodElement.returnType.isDartAsyncStream;

    _returnType = methodElement.returnType.toString();
    if (methodElement.returnType.isDartAsyncFutureOr) {
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
    final valueType =
        (methodElement.returnType as ParameterizedType).typeArguments.first;
    final annotation = SquadronMethodAnnotation._(
        methodElement.name, valueType, inspectRequest, inspectResponse);
    annotation._load(methodElement);
    return annotation;
  }

  static SquadronMethodAnnotation unimplemented(MethodElement methodElement) {
    final valueType =
        (methodElement.returnType as ParameterizedType).typeArguments.first;
    final annotation =
        SquadronMethodAnnotation._(methodElement.name, valueType, false, false);
    annotation._load(methodElement);
    return annotation;
  }
}
