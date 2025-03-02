// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../sample_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService class for SampleService
class _$SampleServiceWorkerService extends SampleService
    implements WorkerService {
  _$SampleServiceWorkerService() : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$computeId: ($req_) async {
      DataOut $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = await compute(
          (($_) => DataIn.unmarshal($_, context: $mc))($req_.args[0]),
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return (($_) => ($_ as DataOut).marshal($mc))($res_);
      } finally {}
    },
  });

  static const int _$computeId = 1;
}

/// Service initializer for SampleService
WorkerService $SampleServiceInitializer(WorkerRequest $req_) {
  // ignore: unused_local_variable
  final $mc = MarshalingContext();
  return _$SampleServiceWorkerService();
}

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
  Future<DataOut> compute(DataIn input) async {
    dynamic $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      $res_ = await send(
        _$SampleServiceWorkerService._$computeId,
        args: [
          (($_) => ($_ as DataIn).marshal(context: $mc))(input),
        ],
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      return (($_) => DataOut.unmarshal($_, $mc))($res_);
    } finally {}
  }
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
