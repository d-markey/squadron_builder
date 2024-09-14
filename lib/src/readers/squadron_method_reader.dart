part of 'dart_method_reader.dart';

/// Reader for service methods implemented in a SquadronService
class SquadronMethodReader extends DartMethodReader {
  SquadronMethodReader._(MethodElement method, this.inspectRequest,
      this.inspectResponse, TypeManager typeManager)
      : id = '_\$${method.name}Id',
        _marshaling = MarshalingManager(typeManager),
        patchedReturnType = _patchReturnType(method, typeManager),
        super._(method, typeManager);

  static ManagedType _patchReturnType(
          MethodElement method, TypeManager typeManager) =>
      typeManager.handleDartType(
        method.returnType.isDartAsyncFutureOr
            ? method.library.typeProvider.futureType(
                (method.returnType as ParameterizedType).typeArguments.single)
            : method.returnType,
      );

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

  Marshaler? _resultMarshaler;

  bool get needsSerialization => _resultMarshaler != null;

  String get serializer =>
      typeManager.converters.getSerializerOf(valueType, _resultMarshaler);

  String get deserializer =>
      typeManager.converters.getDeserializerOf(valueType, _resultMarshaler);

  late final MarshalingManager _marshaling;

  @override
  void _init(MethodElement method) {
    final type = patchedReturnType.dartType!;
    if (!type.isDartAsyncFuture && !type.isDartAsyncStream) {
      throw InvalidGenerationSourceError(
          '${method.librarySource.fullName}: public service method '
          '\'${method.enclosingElement.displayName}.${method.name}\' must '
          'return a Future, a FutureOr, a Stream, or void.');
    }

    final resultMarshaler = _marshaling.getExplicitMarshaler(method);
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
