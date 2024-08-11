// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../hello_world.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for HelloWorld
class _$HelloWorldWorkerService extends HelloWorld implements WorkerService {
  _$HelloWorldWorkerService() : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$helloId: ($in) => hello($in.args[0] as String?),
  });

  static const int _$helloId = 1;
}

/// Service initializer for HelloWorld
WorkerService $HelloWorldInitializer(WorkerRequest $in) =>
    _$HelloWorldWorkerService();

/// Worker for HelloWorld
class HelloWorldWorker extends Worker implements HelloWorld {
  HelloWorldWorker({PlatformThreadHook? threadHook})
      : super($HelloWorldActivator, threadHook: threadHook);

  @override
  Future<String> hello([String? name]) =>
      send(_$HelloWorldWorkerService._$helloId, args: [name]);
}

/// Worker pool for HelloWorld
class HelloWorldWorkerPool extends WorkerPool<HelloWorldWorker>
    implements HelloWorld {
  HelloWorldWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook})
      : super(() => HelloWorldWorker(threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<String> hello([String? name]) => execute((w) => w.hello(name));
}
