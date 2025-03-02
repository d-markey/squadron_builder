// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../hello_world.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService class for HelloWorld
base class _$HelloWorldWorkerService extends HelloWorld
    implements WorkerService {
  _$HelloWorldWorkerService() : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$sayHelloId: ($req_) async {
      String $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = await sayHello(
          $mc.nvalue<String>()($req_.args[0]),
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return $res_;
      } finally {}
    },
  });

  static const int _$sayHelloId = 1;
}

/// Service initializer for HelloWorld
WorkerService $HelloWorldInitializer(WorkerRequest $req_) {
  // ignore: unused_local_variable
  final $mc = MarshalingContext();
  return _$HelloWorldWorkerService();
}

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
  Future<String> sayHello([String? name]) async {
    dynamic $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      $res_ = await send(
        _$HelloWorldWorkerService._$sayHelloId,
        args: [
          name,
        ],
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      return $mc.value<String>()($res_);
    } finally {}
  }
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
