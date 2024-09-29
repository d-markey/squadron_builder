// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fib_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.3
// **************************************************************************

/// WorkerService class for FibService
class _$FibServiceWorkerService extends FibService implements WorkerService {
  _$FibServiceWorkerService() : super();

  @dc.override
  late final dc.Map<dc.int, CommandHandler> operations =
      dc.Map.unmodifiable(<dc.int, CommandHandler>{
    _$fibonacciId: ($) => fibonacci(_$X.$0($.args[0])),
  });

  static const dc.int _$fibonacciId = 1;
}

/// Service initializer for FibService
WorkerService $FibServiceInitializer(WorkerRequest $$) =>
    _$FibServiceWorkerService();

/// Worker for FibService
base class FibServiceWorker extends Worker implements FibService {
  FibServiceWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($FibServiceActivator(Squadron.platformType));

  FibServiceWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($FibServiceActivator(SquadronPlatformType.vm));

  FibServiceWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($FibServiceActivator(SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  @dc.override
  Future<dc.int> fibonacci(dc.int i) =>
      send(_$FibServiceWorkerService._$fibonacciId, args: [i]).then(_$X.$0);
}

/// Worker pool for FibService
base class FibServiceWorkerPool extends WorkerPool<FibServiceWorker>
    implements FibService {
  FibServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => FibServiceWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  FibServiceWorkerPool.vm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => FibServiceWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  FibServiceWorkerPool.js(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => FibServiceWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @dc.override
  Future<dc.int> fibonacci(dc.int i) => execute((w) => w.fibonacci(i));
}

sealed class _$X {
  static final $0 = Squadron.converter.value<dc.int>();
}
