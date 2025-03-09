part of 'dart_method_reader.dart';

/// Reader for service methods implemented in a SquadronService
class SquadronMethodReader extends DartMethodReader {
  SquadronMethodReader._(
      MethodElement method,
      this.inspectRequest,
      this.inspectResponse,
      this.withContext,
      TypeManager typeManager,
      SerializationContext context)
      : id = '_\$${method.name}Id',
        patchedReturnType = _patchReturnType(method, typeManager),
        _resultMarshaler = typeManager.getExplicitMarshaler(method),
        super._(method, typeManager, context);

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
  final bool? withContext;

  int? _index;
  int get index => _index ?? -1;

  void setIndex(int index) => _index ??= index;

  final String id;

  final ManagedType patchedReturnType;

  ManagedType get valueType => patchedReturnType.typeArguments.single;

  @override
  String get declaration => typeParameters.isEmpty
      ? '$patchedReturnType $name($parameters)'
      : '$patchedReturnType $name<${typeParameters.join(', ')}>($parameters)';

  String get workerExecutor => isStream ? 'stream' : 'send';
  String get poolExecutor => isStream ? 'stream' : 'execute';
  String get continuation => isStream ? '.map' : '.then';

  final Marshaler? _resultMarshaler;

  DeSer? getSerializer(SerializationContext context) =>
      context.getSerializer(valueType, _resultMarshaler);

  DeSer? getDeserializer(SerializationContext context) =>
      context.getDeserializer(valueType, _resultMarshaler);

  @override
  void _init(MethodElement method) {
    final type = patchedReturnType.dartType!;
    if (!type.isDartAsyncFuture && !type.isDartAsyncStream) {
      throw InvalidGenerationSourceError(
          '${method.librarySource.fullName}: public service method '
          '\'${method.enclosingElement3.displayName}.${method.name}\' must '
          'return a Future, a FutureOr, a Stream, or void.');
    }

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
