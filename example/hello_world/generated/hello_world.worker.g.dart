// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../hello_world.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.1.1 (Squadron 7.1.1)
// **************************************************************************

/// Command ids used in operations map
const int _$sayHelloId = 1;

/// WorkerService operations for HelloWorld
extension on HelloWorld {
  OperationsMap _$getOperations() => OperationsMap({
        _$sayHelloId: ($req) async {
          final String $res;
          try {
            final $dsr = _$Deser(contextAware: true);
            $res = await sayHello($dsr.$1($req.args[0]));
          } finally {}
          return $res;
        },
      });
}

/// Invoker for HelloWorld, implements the public interface to invoke the
/// remote service.
base mixin _$HelloWorld$Invoker on Invoker implements HelloWorld {
  @override
  Future<String> sayHello([String? name]) async {
    final dynamic $res = await send(_$sayHelloId, args: [name]);
    try {
      final $dsr = _$Deser(contextAware: true);
      return $dsr.$0($res);
    } finally {}
  }
}

/// Facade for HelloWorld, implements other details of the service unrelated to
/// invoking the remote service.
base mixin _$HelloWorld$Facade implements HelloWorld {}

/// WorkerService class for HelloWorld
base class _$HelloWorld$WorkerService extends HelloWorld
    implements WorkerService {
  _$HelloWorld$WorkerService() : super();

  @override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for HelloWorld
WorkerService $HelloWorldInitializer(WorkerRequest $req) =>
    _$HelloWorld$WorkerService();

/// Worker for HelloWorld
base class HelloWorldWorker extends Worker
    with _$HelloWorld$Invoker, _$HelloWorld$Facade
    implements HelloWorld {
  HelloWorldWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($HelloWorldActivator(Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  HelloWorldWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($HelloWorldActivator(SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  HelloWorldWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($HelloWorldActivator(SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  HelloWorldWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($HelloWorldActivator(SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  @override
  List? getStartArgs() => null;
}

/// Worker pool for HelloWorld
base class HelloWorldWorkerPool extends WorkerPool<HelloWorldWorker>
    with _$HelloWorld$Facade
    implements HelloWorld {
  HelloWorldWorkerPool(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => HelloWorldWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  HelloWorldWorkerPool.vm(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => HelloWorldWorker.vm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  HelloWorldWorkerPool.js(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => HelloWorldWorker.js(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  HelloWorldWorkerPool.wasm(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => HelloWorldWorker.wasm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  Future<String> sayHello([String? name]) => execute((w) => w.sayHello(name));
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<String>();
  late final $1 = Converter.allowNull($0);
}
