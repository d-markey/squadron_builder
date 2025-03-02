// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fib_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService class for FibService
class _$FibServiceWorkerService extends FibService implements WorkerService {
  _$FibServiceWorkerService() : super();

  @dc.override
  late final dc.Map<dc.int, CommandHandler> operations =
      dc.Map.unmodifiable(<dc.int, CommandHandler>{
    _$fibonacciId: ($req_) async {
      dc.int $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = await fibonacci(
          $mc.value<dc.int>()($req_.args[0]),
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return $res_;
      } finally {}
    },
  });

  static const dc.int _$fibonacciId = 1;
}

/// Service initializer for FibService
WorkerService $FibServiceInitializer(WorkerRequest $req_) {
  // ignore: unused_local_variable
  final $mc = MarshalingContext();
  return _$FibServiceWorkerService();
}

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
  Future<dc.int> fibonacci(dc.int i) async {
    dc.dynamic $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      $res_ = await send(
        _$FibServiceWorkerService._$fibonacciId,
        args: [
          i,
        ],
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      return $mc.value<dc.int>()($res_);
    } finally {}
  }
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
