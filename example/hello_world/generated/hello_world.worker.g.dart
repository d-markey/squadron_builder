// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../hello_world.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService operations for HelloWorld
extension _$HelloWorld$Operations on HelloWorld {
  OperationsMap _$getOperations() => Map.unmodifiable({
        _$sayHelloId: ($req) async {
          final String $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = await sayHello($mc.$de0($req.args[0]));
          } finally {}
          return $res;
        },
      });

  static const int _$sayHelloId = 1;
}

/// Invoker for HelloWorld, implements the public interface to invoke the
/// remote service.
base mixin _$HelloWorld$Invoker on Invoker implements HelloWorld {
  @override
  Future<String> sayHello([String? name]) async {
    final dynamic $res = await send(
      _$HelloWorld$Operations._$sayHelloId,
      args: [name],
    );
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de1($res);
    } finally {}
  }
}

/// Facade for HelloWorld, implements other details of the service not related to
/// invoking the remote service.
base mixin _$HelloWorld$Facade implements HelloWorld {}

/// WorkerService class for HelloWorld
base class _$HelloWorld$WorkerService extends HelloWorld
    implements WorkerService {
  _$HelloWorld$WorkerService() : super();

  OperationsMap? _operations;

  @override
  OperationsMap get operations => (_operations ??= _$getOperations());
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
}

/// Worker pool for HelloWorld
base class HelloWorldWorkerPool extends WorkerPool<HelloWorldWorker>
    with _$HelloWorld$Facade
    implements HelloWorld {
  HelloWorldWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => HelloWorldWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  HelloWorldWorkerPool.vm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => HelloWorldWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  HelloWorldWorkerPool.js(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => HelloWorldWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  HelloWorldWorkerPool.wasm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => HelloWorldWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Future<String> sayHello([String? name]) => execute((w) => w.sayHello(name));
}

final class _$X extends MarshalingContext {
  _$X({super.contextAware});
  late final $de0 = nvalue<String>();
  late final $de1 = value<String>();
}
