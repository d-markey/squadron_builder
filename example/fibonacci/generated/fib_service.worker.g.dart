// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fib_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for FibService
class _$FibServiceWorkerService extends FibService implements WorkerService {
  _$FibServiceWorkerService() : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$fibonacciId: ($in) => fibonacci(_$X.$0($in.args[0])),
  });

  static const int _$fibonacciId = 1;
}

/// Service initializer for FibService
WorkerService $FibServiceInitializer(WorkerRequest $in) =>
    _$FibServiceWorkerService();

/// Worker for FibService
class FibServiceWorker extends Worker implements FibService {
  FibServiceWorker({PlatformThreadHook? threadHook})
      : super($FibServiceActivator, threadHook: threadHook);

  @override
  Future<int> fibonacci(int i) =>
      send(_$FibServiceWorkerService._$fibonacciId, args: [i]).then(_$X.$0);
}

/// Worker pool for FibService
class FibServiceWorkerPool extends WorkerPool<FibServiceWorker>
    implements FibService {
  FibServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook})
      : super(() => FibServiceWorker(threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<int> fibonacci(int i) => execute((w) => w.fibonacci(i));
}

class _$X {
  static final $0 = Squadron.converter.value<int>();
}
