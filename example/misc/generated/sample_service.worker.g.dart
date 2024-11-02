// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../sample_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.1.0
// **************************************************************************

/// WorkerService class for SampleService
class _$SampleServiceWorkerService extends SampleService
    implements WorkerService {
  _$SampleServiceWorkerService() : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$computeId: ($) => compute(_$X.$dsr0($.args[0])).then(_$X.$sr1),
  });

  static const int _$computeId = 1;
}

/// Service initializer for SampleService
WorkerService $SampleServiceInitializer(WorkerRequest $$) =>
    _$SampleServiceWorkerService();

/// Worker for SampleService
base class SampleServiceWorker extends Worker implements SampleService {
  SampleServiceWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($SampleServiceActivator(Squadron.platformType));

  SampleServiceWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($SampleServiceActivator(SquadronPlatformType.vm));

  SampleServiceWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($SampleServiceActivator(SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  SampleServiceWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($SampleServiceActivator(SquadronPlatformType.wasm));

  @override
  Future<DataOut> compute(DataIn input) =>
      send(_$SampleServiceWorkerService._$computeId, args: [_$X.$sr2(input)])
          .then(_$X.$dsr3);
}

/// Worker pool for SampleService
base class SampleServiceWorkerPool extends WorkerPool<SampleServiceWorker>
    implements SampleService {
  SampleServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => SampleServiceWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  SampleServiceWorkerPool.vm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => SampleServiceWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  SampleServiceWorkerPool.js(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => SampleServiceWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  SampleServiceWorkerPool.wasm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => SampleServiceWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Future<DataOut> compute(DataIn input) => execute((w) => w.compute(input));
}

sealed class _$X {
  static final $dsr0 = (($) => DataIn.unmarshal($));
  static final $sr1 = (($) => ($ as DataOut).marshal());
  static final $sr2 = (($) => ($ as DataIn).marshal());
  static final $dsr3 = (($) => DataOut.unmarshal($));
}
