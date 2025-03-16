part of '../worker_assets.dart';

// various extensions

extension on DartMethodReader {
  String forwardTo(String target, WorkerAssets assets) =>
      '${assets._override} $declaration => $target.$name(${parameters.asArguments()});';

  String unimpl(WorkerAssets assets) =>
      assets._unimpl(declaration, override: true);
}

extension on SquadronMethodReader {
  void throwIfLocalWorkerParam() {
    if (parameters.all.any((p) => p.isLocalWorker)) {
      throw InvalidGenerationSourceError(
          'Local Worker parameters are not supported in service methods');
    }
  }

  String commandId() => 'const ${typeManager.TInt} $id = $index;';

  String commandHandler() {
    var commandDecl = '$id: ($Req)';

    final args = parameters.deser(context, Req);
    var callService = '$name(${args.code})';

    final unmarshalContext = context.initDeserContext(
        args.needsContext, withContext ?? args.contextAware);

    if (!hasReturnValue) {
      return unmarshalContext.isEmpty
          ? '$commandDecl => $callService,'
          : '$commandDecl { $unmarshalContext; return $callService; },';
    }

    final convert = ser(context);
    final marshalContext = context.initSerContext(
        convert != null, withContext ?? convert.contextAware);

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

    callService = unmarshalContext.isEmpty
        ? '$resDecl = $callService;'
        : '$resDecl; try { $unmarshalContext; $res = $callService; } finally {}';

    if (convert != null) {
      res = isStream
          ? '$res.map(${context.$sr}.${convert.code})'
          : '${context.$sr}.${convert.code}($res)';
    }

    final returnResult = marshalContext.isEmpty
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

    var methodDecl = '${assets._override} $declaration';
    var callWorker = '$workerExecutor($args)';

    final marshalContext = context.initSerContext(
        serialized.needsContext, withContext ?? serialized.contextAware);

    if (!hasReturnValue) {
      return marshalContext.isEmpty
          ? '$methodDecl => $callWorker;'
          : '$methodDecl { $marshalContext; return $callWorker; }';
    }

    final convert = deser(context);
    final unmarshalContext = context.initDeserContext(
        convert.needsContext, withContext ?? convert.contextAware);

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

    callWorker = marshalContext.isEmpty
        ? '$resDecl = $callWorker;'
        : '$resDecl; try { $marshalContext; $res = $callWorker; } finally {}';

    if (convert != null) {
      res = isStream
          ? '$res.map(${context.$dsr}.${convert.code})'
          : '${context.$dsr}.${convert.code}($res)';
    }

    final returnResult = unmarshalContext.isEmpty
        ? 'return $res;'
        : 'try { $unmarshalContext; return $res; } finally {}';

    return '$methodDecl { $callWorker $returnResult }';
  }

  String poolMethod(WorkerAssets assets) =>
      '${assets._override} $declaration => $poolExecutor((w) => w.$name(${parameters.asArguments()}));';

  DeSer? ser(MarshalingContext context) =>
      context.ser(valueType, withContext, resultMarshaler);

  DeSer? deser(MarshalingContext context) =>
      context.deser(valueType, resultMarshaler);
}

extension on SquadronParameters {
  DeSer? ser(MarshalingContext context, bool? withContext) {
    var needsContext = false, contextAware = false;
    final args = StringBuffer();
    for (var param in params) {
      if (param.isCancelationToken) continue;
      final ser = context.ser(param.type, withContext, param.marshaler);
      if (ser == null) {
        args.csv(param.name);
      } else {
        needsContext = true;
        contextAware |= ser.contextAware;
        args.csv('${context.$sr}.${ser.code}(${param.name})');
      }
    }
    return args.isEmpty ? null : DeSer('[$args]', needsContext, contextAware);
  }

  String serializeForActivation(MarshalingContext context) {
    if (params.isEmpty) return '';
    bool? needsContext;
    var contextAware = false;
    final args = StringBuffer();
    for (var param in params) {
      final ser = param.isLocalWorker
          ? null
          : context.ser(param.type, true, param.marshaler);
      if (ser == null) {
        args.csv(param.name);
      } else {
        needsContext = true;
        contextAware |= ser.contextAware;
        args.csv('${context.$sr}.${ser.code}(${param.name})');
      }
    }
    return (needsContext == null)
        ? '[$args]'
        : '''(() {
              ${context.initSerContext(true, contextAware)};
              return [$args];
            })()''';
  }

  DeSer? deser(MarshalingContext context, String req) {
    if (params.isEmpty) return null;
    var needsContext = false, contextAware = false;
    final code = StringBuffer();
    for (var p in params.indexed) {
      final param = p.$2;
      final name = param.isNamed ? '${param.name}:' : '';
      final arg = '$req.args[${p.$1}]';

      if (param.isCancelationToken) {
        code.csv('$name $req.cancelToken');
      } else if (param.isLocalWorker) {
        needsContext = true;
        final service = param.type;
        final ser = context.deser(typeManager.TPlatformChannel);
        final platformChannel =
            (ser == null) ? arg : '${context.$dsr}.${ser.code}($arg)';
        final localService = service.nonNullable.getTypeName(omitPrefix: true);
        final localWorkerClient =
            '${service.prefix}${WorkerAssets.getLocalWorkerClientFor(localService)}($platformChannel)';
        code.csv(service.isNullable
            ? '$name ($arg == null) ? null : $localWorkerClient'
            : '$name $localWorkerClient');
      } else {
        final ser = context.deser(param.type, param.marshaler);
        if (ser == null) {
          code.csv('$name $arg');
        } else {
          needsContext = true;
          contextAware |= ser.contextAware;
          code.csv('$name ${context.$dsr}.${ser.code}($arg)');
        }
      }
    }
    return DeSer(code.toString(), needsContext, contextAware);
  }
}

extension on FieldElement {
  String forwardTo(String target, WorkerAssets assets) {
    final typeName = assets._typeManager.getTypeName(type);
    final override = assets._override;
    return '''
      $override $typeName get $name => $target.$name;
      ${isFinal ? '' : '$override set $name($typeName value) => $target.$name = value;'}
    ''';
  }

  String override(WorkerAssets assets) {
    final typeName = assets._typeManager.getTypeName(type);
    final override = assets._override;
    return '$override ${isFinal ? 'final ' : ''}$typeName $name;';
  }
}

extension on PropertyAccessorElement {
  String get property => isGetter ? name : name.replaceAll('=', '');

  bool get isOperationsMap => property == 'operations';

  String forwardTo(String target, WorkerAssets assets) {
    final type = assets._typeManager.getTypeName(returnType);
    final override = assets._override;
    return isGetter
        ? '$override $type get $property => $target.$property;'
        : '$override set $property($type value) => $target.$property = value;';
  }

  String unimpl(WorkerAssets assets) {
    final type = assets._typeManager.getTypeName(returnType);
    return assets._unimpl(
      isGetter ? '$type get $property' : 'set $property($type value)',
      override: true,
      unused: true,
    );
  }
}
