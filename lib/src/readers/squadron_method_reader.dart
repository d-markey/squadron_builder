part of 'dart_method_reader.dart';

/// Reader for service methods implemented in a SquadronService
class SquadronMethodReader extends DartMethodReader {
  SquadronMethodReader._(
    MethodElement method,
    this.inspectRequest,
    this.inspectResponse,
    this.withContext,
    TypeManager typeManager,
    MarshalingContext context,
  ) : id = '_\$${method.name}Id',
      patchedReturnType = _patchReturnType(method, typeManager),
      resultMarshaler = typeManager.getExplicitMarshaler(method),
      super._(method, typeManager, context);

  static ManagedType _patchReturnType(
    MethodElement method,
    TypeManager typeManager,
  ) {
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
  String get declaration =>
      typeParameters.isEmpty
          ? '$patchedReturnType $name($parameters)'
          : '$patchedReturnType $name<${typeParameters.join(', ')}>($parameters)';

  String get workerExecutor => isStream ? 'stream' : 'send';
  String get poolExecutor => isStream ? 'stream' : 'execute';

  final Marshaler? resultMarshaler;

  @override
  void _init(MethodElement method) {
    final type = patchedReturnType.dartType!;
    if (!type.isDartAsyncFuture && !type.isDartAsyncStream) {
      throw InvalidGenerationSourceError(
        '${method.library.name}: public service method '
        '\'${method.enclosingElement?.displayName}.${method.name}\' must '
        'return a Future, a FutureOr, a Stream, or void.',
      );
    }

    typeParameters.addAll(method.typeParameters.map((e) => e.toString()));

    for (var n = 0; n < method.formalParameters.length; n++) {
      final param = method.formalParameters[n];
      parameters.register(param, typeManager.getExplicitMarshaler(param));
    }
  }

  void throwIfLocalWorkerParam() {
    if (parameters.all.any((p) => p.isLocalWorker)) {
      throw InvalidGenerationSourceError(
        'Local Worker parameters are not supported in service methods',
      );
    }
  }

  String commandId() => 'const ${typeManager.TInt} $id = $index;';

  String commandHandler() {
    var commandDecl = '$id: ($Req)';

    final args = parameters.deser(context, Req);
    var callService = '$name(${args.code})';

    final unmarshalContext = context.initDeserContext(
      args.needsContext,
      withContext ?? args.contextAware,
    );

    if (!hasReturnValue) {
      return unmarshalContext.isEmpty
          ? '$commandDecl => $callService,'
          : '$commandDecl { $unmarshalContext; return $callService; },';
    }

    final convert = ser(context);
    final marshalContext = context.initSerContext(
      convert != null,
      withContext ?? convert.contextAware,
    );

    if (unmarshalContext.isEmpty && marshalContext.isEmpty) {
      return '$commandDecl => $callService,';
    }

    final resType =
        (isFuture || isFutureOr) ? returnType.typeArguments.first : returnType;
    var res = Res, resDecl = 'final $resType $res';
    if (!isStream) {
      commandDecl = '$commandDecl async';
      callService = 'await $callService';
    }

    callService =
        unmarshalContext.isEmpty
            ? '$resDecl = $callService;'
            : '$resDecl; try { $unmarshalContext; $res = $callService; } finally {}';

    if (convert != null) {
      res =
          isStream
              ? '$res.map(${context.$sr}.${convert.code})'
              : '${context.$sr}.${convert.code}($res)';
    }

    final returnResult =
        marshalContext.isEmpty
            ? 'return $res;'
            : 'try { $marshalContext; return $res; } finally {}';

    return '$commandDecl { $callService $returnResult },';
  }

  String workerMethod(WorkerAssets assets) {
    final serialized = parameters.ser(context, withContext);
    final args = StringBuffer();
    args.csv(id);
    if (serialized != null) args.csv('args: ${serialized.code}');
    if (parameters.cancelationToken != null) {
      args.csv('token: ${parameters.cancelationToken}');
    }
    if (inspectRequest) args.csv('inspectRequest: true');
    if (inspectResponse) args.csv('inspectResponse: true');

    var methodDecl = '${assets.override_} $declaration';
    var callWorker = '$workerExecutor($args)';

    final marshalContext = context.initSerContext(
      serialized.needsContext,
      withContext ?? serialized.contextAware,
    );

    if (!hasReturnValue) {
      return marshalContext.isEmpty
          ? '$methodDecl => $callWorker;'
          : '$methodDecl { $marshalContext; return $callWorker; }';
    }

    final convert = deser(context);
    final unmarshalContext = context.initDeserContext(
      convert.needsContext,
      withContext ?? convert.contextAware,
    );

    if (marshalContext.isEmpty && convert == null && unmarshalContext.isEmpty) {
      return '$methodDecl => $callWorker;';
    }

    String res = Res, resDecl;

    if (!isStream) {
      callWorker = 'await $callWorker';
      methodDecl = '$methodDecl async';
      resDecl = 'final ${typeManager.TDynamic} $res';
    } else {
      resDecl = 'final ${typeManager.TStream} $res';
    }

    callWorker =
        marshalContext.isEmpty
            ? '$resDecl = $callWorker;'
            : '$resDecl; try { $marshalContext; $res = $callWorker; } finally {}';

    if (convert != null) {
      res =
          isStream
              ? '$res.map(${context.$dsr}.${convert.code})'
              : '${context.$dsr}.${convert.code}($res)';
    }

    final returnResult =
        unmarshalContext.isEmpty
            ? 'return $res;'
            : 'try { $unmarshalContext; return $res; } finally {}';

    return '$methodDecl { $callWorker $returnResult }';
  }

  String poolMethod(WorkerAssets assets) =>
      '${assets.override_} $declaration => $poolExecutor((w) => w.$name(${parameters.asArguments()}));';

  DeSer? ser(MarshalingContext context) =>
      context.ser(valueType, withContext, resultMarshaler);

  DeSer? deser(MarshalingContext context) =>
      context.deser(valueType, resultMarshaler);
}
