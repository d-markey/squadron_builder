import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart' as gen;
import 'package:squadron/squadron_annotations.dart';

import '../extensions.dart';
import 'annotations_reader.dart';
import 'marshallers/marshaller.dart';
import 'marshallers/marshalling_info.dart';
import 'marshalling_manager.dart';

const String reqName = 'req';

class SquadronMethodAnnotation {
  SquadronMethodAnnotation._(
      MethodElement method, this.inspectRequest, this.inspectResponse)
      : name = method.name,
        id = '_\$${method.name}Id',
        _returnType = method.returnType,
        isStream = method.returnType.isDartAsyncStream,
        valueType = (method.returnType is ParameterizedType)
            ? (method.returnType as ParameterizedType).typeArguments.first
            : method.returnType,
        returnType = method.returnType.isDartAsyncFutureOr
            ? method.returnType.toString().replaceFirst('FutureOr', 'Future')
            : method.returnType.toString() {
    _load(method);
  }

  final String name;

  final bool inspectRequest;
  final bool inspectResponse;

  int? _num;
  int get num => _num ?? -1;

  void setNum(int num) => _num ??= num;

  final String id;

  final DartType _returnType;

  final String returnType;
  final DartType valueType;
  final bool isStream;

  String get declaration => '$returnType $name($parameters)';

  String get workerExecutor => isStream ? 'stream' : 'send';
  String get poolExecutor => isStream ? 'stream' : 'execute';
  String get continuation => isStream ? 'map' : 'then';

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

  Marshaller _resultMarshaller = Marshaller.identity;

  late Generator serializedResult = _resultMarshaller.getSerializer(valueType);
  bool get needsSerialization => _resultMarshaller != Marshaller.identity;

  late Generator deserializedResult =
      _resultMarshaller.getDeserializer(valueType);
  bool get needsDeserialization => _resultMarshaller != Marshaller.identity;

  static final _marshalling = MarshallingManager();

  static bool _isCancellationToken(ParameterElement param) {
    final locationComponents =
        param.type.element?.location?.components ?? const [];
    return locationComponents.any((c) => c.startsWith('package:squadron/')) &&
        (param.type.baseName == 'CancellationToken');
  }

  void _load(MethodElement method) {
    var closeOptParams = '';
    var sidx = 0;

    if (method.isPublic) {
      if (!_returnType.isDartAsyncFuture &&
          !_returnType.isDartAsyncFutureOr &&
          !_returnType.isDartAsyncStream) {
        throw gen.InvalidGenerationSourceError(
            '${method.librarySource.fullName}: public service method \'${method.enclosingElement.displayName}.${method.name}\' must return a Future, a FutureOr, or a Stream.');
      }

      final resultMarshaller = AnnotationReader.getExplicitMarshaller(method);
      if (resultMarshaller != null) {
        _resultMarshaller =
            _marshalling.getMarshaller(valueType, explicit: resultMarshaller);
      } else {
        _resultMarshaller = _marshalling.getMarshaller(valueType);
      }
    }

    for (var n = 0; n < method.parameters.length; n++) {
      final param = method.parameters[n];

      final explicitMarshaller = AnnotationReader.getExplicitMarshaller(param);

      final isToken =
          (_cancellationToken == null) && _isCancellationToken(param);
      if (isToken) {
        _cancellationToken = param.name;
      }
      if (n > 0) {
        _parameters += ', ';
        _arguments += ', ';
        _deserializedArguments += ', ';
      }
      if (!isToken && sidx > 0) {
        _serializedArguments += ', ';
      }
      if (param.isNamed) {
        if (closeOptParams.isEmpty) {
          closeOptParams = '}';
          _parameters += '{ ';
        }
        if (param.isRequired) {
          _parameters += 'required ';
        }
      } else if (param.isOptionalPositional && closeOptParams.isEmpty) {
        closeOptParams = ']';
        _parameters += '[ ';
      }

      final def = param.hasDefaultValue ? ' = ${param.defaultValueCode}' : '';
      _parameters += '${param.type} ${param.name}$def';

      if (param.isNamed) {
        _arguments += '${param.name}: ';
        _deserializedArguments += '${param.name}: ';
      }

      _arguments += param.name;
      if (isToken) {
        _deserializedArguments += '$reqName.cancelToken';
      } else {
        final marshaller = _marshalling.getMarshaller(param.type,
            explicit: explicitMarshaller);
        _serializedArguments += marshaller.serialize(param.type, param.name);
        _deserializedArguments +=
            marshaller.deserialize(param.type, '$reqName.args[$sidx]');
        sidx++;
      }
    }

    if (closeOptParams.isNotEmpty) {
      _parameters += ' $closeOptParams';
    }
  }

  static SquadronMethodAnnotation? load(MethodElement method) {
    final reader = AnnotationReader<SquadronMethod>(method);
    if (reader.isEmpty) return null;
    final inspectRequest = reader.isSet('inspectRequest');
    final inspectResponse = reader.isSet('inspectResponse');
    return SquadronMethodAnnotation._(method, inspectRequest, inspectResponse);
  }

  static SquadronMethodAnnotation unimplemented(MethodElement method) {
    return SquadronMethodAnnotation._(method, false, false);
  }
}
