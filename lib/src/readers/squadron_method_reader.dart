part of 'dart_method_reader.dart';

/// Reader for service methods implemented in a SquadronService
class SquadronMethodReader extends DartMethodReader {
  SquadronMethodReader._(MethodElement method, this.inspectRequest,
      this.inspectResponse, TypeManager typeManager)
      : id = '_\$${method.name}Id',
        patchedReturnType = _patchReturnType(method, typeManager),
        _resultMarshaler = typeManager.getExplicitMarshaler(method),
        super._(method, typeManager);

  static ManagedType _patchReturnType(
      MethodElement method, TypeManager typeManager) {
    var returnType = method.returnType;
    if (method.returnType.isDartAsyncFutureOr) {
      final valueType = (returnType as ParameterizedType).typeArguments.single;
      returnType = method.library.typeProvider.futureType(valueType);
    }
    return typeManager.handleDartType(returnType);
  }

  final bool inspectRequest;
  final bool inspectResponse;

  int? _num;
  int get num => _num ?? -1;

  void setNum(int num) => _num ??= num;

  final String id;

  final ManagedType patchedReturnType;

  ManagedType get valueType => patchedReturnType.typeArguments.single;

  @override
  String get declaration => typeParameters.isEmpty
      ? '$patchedReturnType $name($parameters)'
      : '$patchedReturnType $name<${typeParameters.join(', ')}>($parameters)';

  String get workerExecutor => isStream ? 'stream' : 'send';
  String get poolExecutor => isStream ? 'stream' : 'execute';

  final Marshaler? _resultMarshaler;

  bool get needsSerialization => _resultMarshaler != null;

  String get serializer =>
      typeManager.converters.getSerializerOf(valueType, _resultMarshaler);

  String get deserializer =>
      typeManager.converters.getDeserializerOf(valueType, _resultMarshaler);

  @override
  void _init(MethodElement method) {
    final type = patchedReturnType.dartType!;
    if (!type.isDartAsyncFuture && !type.isDartAsyncStream) {
      throw InvalidGenerationSourceError(
          '${method.librarySource.fullName}: public service method '
          '\'${method.enclosingElement.displayName}.${method.name}\' must '
          'return a Future, a FutureOr, a Stream, or void.');
    }

    // final resultMarshaler = _marshaling.getExplicitMarshaler(method);
    // if (resultMarshaler != null) {
    //   _resultMarshaler =
    //       _marshaling.getMarshaler(valueType, explicit: resultMarshaler);
    // } else {
    //   _resultMarshaler = _marshaling.getMarshaler(valueType);
    // }

    if (method.typeParameters.isNotEmpty) {
      typeParameters.addAll(method.typeParameters.map((e) => e.toString()));
    }

    for (var n = 0; n < method.parameters.length; n++) {
      final param = method.parameters[n];
      final marshaler = typeManager.getExplicitMarshaler(param);
      parameters.register(param, marshaler);
    }
  }
}
