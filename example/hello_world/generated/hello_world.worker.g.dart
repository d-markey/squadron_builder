// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../hello_world.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.4.2
// **************************************************************************

/// WorkerService class for HelloWorld
class _$HelloWorldWorkerService extends HelloWorld implements WorkerService {
  _$HelloWorldWorkerService() : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$helloId: ($) => hello($.args[0]),
  });

  static const int _$helloId = 1;
}

/// Service initializer for HelloWorld
WorkerService $HelloWorldInitializer(WorkerRequest startRequest) =>
    _$HelloWorldWorkerService();

/// Operations map for HelloWorld
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$HelloWorldOperations anymore.')
mixin $HelloWorldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for HelloWorld
class HelloWorldWorker extends Worker implements HelloWorld {
  HelloWorldWorker({PlatformWorkerHook? platformWorkerHook})
      : super($HelloWorldActivator, platformWorkerHook: platformWorkerHook);

  @override
  Future<String> hello([String? name]) =>
      send(_$HelloWorldWorkerService._$helloId, args: [name]);
}

/// Worker pool for HelloWorld
class HelloWorldWorkerPool extends WorkerPool<HelloWorldWorker>
    implements HelloWorld {
  HelloWorldWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(() => HelloWorldWorker(platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<String> hello([String? name]) => execute((w) => w.hello(name));
}
