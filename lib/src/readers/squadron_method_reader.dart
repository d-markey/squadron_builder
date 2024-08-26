part of 'dart_method_reader.dart';

/// Reader for service methods implemented in a SquadronService
class SquadronMethodReader extends DartMethodReader {
  SquadronMethodReader._(MethodElement method, this.inspectRequest,
      this.inspectResponse, TypeManager typeManager)
      : assert(method.returnType.isDartAsyncStream ||
            method.returnType.isDartAsyncFuture ||
            method.returnType.isDartAsyncFutureOr),
        id = '_\$${method.name}Id',
        isStream = method.returnType.isDartAsyncStream,
        valueType =
            typeManager.handleDartType(_getValueType(method.returnType)),
        _marshaling = MarshalingManager(typeManager),
        super._(method, typeManager);

  static DartType _getValueType(DartType returnType) {
    if (returnType.isDartAsyncFuture) {
      return (returnType as ParameterizedType).typeArguments.first;
    } else if (returnType.isDartAsyncFutureOr) {
      return (returnType as ParameterizedType).typeArguments.first;
    } else if (returnType.isDartAsyncStream) {
      return (returnType as ParameterizedType).typeArguments.first;
    } else {
      return returnType;
    }
  }

  final bool inspectRequest;
  final bool inspectResponse;

  int? _num;
  int get num => _num ?? -1;

  void setNum(int num) => _num ??= num;

  final String id;

  final ManagedType valueType;
  final bool isStream;

  String get returnType =>
      isStream ? 'Stream<$valueType>' : 'Future<$valueType>';

  @override
  String get declaration => typeParameters.isEmpty
      ? '$returnType $name($parameters)'
      : '$returnType $name<${typeParameters.join(', ')}>($parameters)';

  String get workerExecutor => isStream ? 'stream' : 'send';
  String get poolExecutor => isStream ? 'stream' : 'execute';
  String get continuation => isStream ? 'map' : 'then';

  Marshaler _resultMarshaler = Marshaler.identity;

  Adapter get serializedResult => _resultMarshaler.getSerializer(valueType);

  bool get needsSerialization => _resultMarshaler != Marshaler.identity;

  Adapter get deserializedResult => _resultMarshaler.getDeserializer(valueType);

  bool get needsDeserialization => _resultMarshaler != Marshaler.identity;

  late final MarshalingManager _marshaling;

  @override
  void _init(MethodElement method) {
    if (!_returnType.isDartAsyncFuture &&
        !_returnType.isDartAsyncFutureOr &&
        !_returnType.isDartAsyncStream) {
      throw InvalidGenerationSourceError(
          '${method.librarySource.fullName}: public service method '
          '\'${method.enclosingElement.displayName}.${method.name}\' must '
          'return a Future, a FutureOr, or a Stream.');
    }

    final resultMarshaler = typeManager.getExplicitMarshaler(method);
    if (resultMarshaler != null) {
      _resultMarshaler =
          _marshaling.getMarshaler(valueType, explicit: resultMarshaler);
    } else {
      _resultMarshaler = _marshaling.getMarshaler(valueType);
    }

    if (method.typeParameters.isNotEmpty) {
      typeParameters.addAll(method.typeParameters.map((e) => e.toString()));
    }

    for (var n = 0; n < method.parameters.length; n++) {
      final param = method.parameters[n];
      final marshaler = _marshaling.getMarshalerFor(param);
      parameters.register(param, marshaler);
    }
  }
}
