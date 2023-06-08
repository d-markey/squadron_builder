import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart' as gen;
import 'package:squadron/squadron_annotations.dart';

import 'annotations_reader.dart';
import 'marshallers/marshaller.dart';
import 'marshallers/marshalling_info.dart';
import 'marshalling_manager.dart';
import 'squadron_parameters.dart';

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

  final parameters = SquadronParameters();

  Marshaller _resultMarshaller = Marshaller.identity;

  late Adapter serializedResult = _resultMarshaller.getSerializer(valueType);
  bool get needsSerialization => _resultMarshaller != Marshaller.identity;

  late Adapter deserializedResult =
      _resultMarshaller.getDeserializer(valueType);
  bool get needsDeserialization => _resultMarshaller != Marshaller.identity;

  static final _marshalling = MarshallingManager();

  void _load(MethodElement method) {
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
      final marshaller = _marshalling.getMarshallerFor(param);
      parameters.register(param, marshaller);
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
