// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fib_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.5.0
// **************************************************************************

/// WorkerService class for FibService
class _$FibServiceWorkerService extends FibService implements WorkerService {
  _$FibServiceWorkerService() : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {
    _$fibonacciId: ($) => fibonacci($.args[0])
  };

  static const int _$fibonacciId = 1;
}

/// Service initializer for FibService
WorkerService $FibServiceInitializer(WorkerRequest startRequest) =>
    _$FibServiceWorkerService();

/// Operations map for FibService
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$FibServiceOperations anymore.')
mixin $FibServiceOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for FibService
class FibServiceWorker extends Worker implements FibService {
  FibServiceWorker({PlatformWorkerHook? platformWorkerHook})
      : super($FibServiceActivator, platformWorkerHook: platformWorkerHook);

  @override
  Future<int> fibonacci(int i) =>
      send(_$FibServiceWorkerService._$fibonacciId, args: [i]);
}

/// Worker pool for FibService
class FibServiceWorkerPool extends WorkerPool<FibServiceWorker>
    implements FibService {
  FibServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(() => FibServiceWorker(platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<int> fibonacci(int i) => execute((w) => w.fibonacci(i));
}
