// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../hello_world.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.1.3
// **************************************************************************

/// WorkerService class for HelloWorld
base class _$HelloWorldWorkerService extends HelloWorld
    implements WorkerService {
  _$HelloWorldWorkerService() : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$sayHelloId: ($) => sayHello(_$X.$impl.$dsr1($.args[0])),
  });

  static const int _$sayHelloId = 1;
}

/// Service initializer for HelloWorld
WorkerService $HelloWorldInitializer(WorkerRequest $$) =>
    _$HelloWorldWorkerService();

/// Worker for HelloWorld
base class HelloWorldWorker extends Worker implements HelloWorld {
  HelloWorldWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($HelloWorldActivator(Squadron.platformType));

  HelloWorldWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($HelloWorldActivator(SquadronPlatformType.vm));

  HelloWorldWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($HelloWorldActivator(SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  HelloWorldWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($HelloWorldActivator(SquadronPlatformType.wasm));

  @override
  Future<String> sayHello([String? name]) =>
      send(_$HelloWorldWorkerService._$sayHelloId, args: [name])
          .then(_$X.$impl.$dsr0);
}

/// Worker pool for HelloWorld
base class HelloWorldWorkerPool extends WorkerPool<HelloWorldWorker>
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

final class _$X {
  _$X._();

  static _$X? _impl;

  static _$X get $impl {
    if (_impl == null) {
      Squadron.onConverterChanged(() => _impl = _$X._());
      _impl = _$X._();
    }
    return _impl!;
  }

  late final $dsr0 = Squadron.converter.value<String>();
  late final $dsr1 = Squadron.converter.nullable($dsr0);
}
