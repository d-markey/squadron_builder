// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../clock.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService class for Clock
class _$ClockWorkerService extends Clock implements WorkerService {
  _$ClockWorkerService() : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$infiniteClockId: ($req_) {
      Stream<int> $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = infiniteClock(
          periodInMs: $mc.value<int>()($req_.args[0]),
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return $res_;
      } finally {}
    },
  });

  static const int _$infiniteClockId = 1;
}

/// Service initializer for Clock
WorkerService $ClockInitializer(WorkerRequest $req_) {
  // ignore: unused_local_variable
  final $mc = MarshalingContext();
  return _$ClockWorkerService();
}

/// Worker for Clock
base class ClockWorker extends Worker implements Clock {
  ClockWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($ClockActivator(Squadron.platformType));

  ClockWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($ClockActivator(SquadronPlatformType.vm));

  ClockWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($ClockActivator(SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  ClockWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($ClockActivator(SquadronPlatformType.wasm));

  @override
  Stream<int> infiniteClock({int periodInMs = 1000}) {
    Stream $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      $res_ = stream(
        _$ClockWorkerService._$infiniteClockId,
        args: [
          periodInMs,
        ],
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      return $res_.map($mc.value<int>());
    } finally {}
  }
}

/// Worker pool for Clock
base class ClockWorkerPool extends WorkerPool<ClockWorker> implements Clock {
  ClockWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => ClockWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  ClockWorkerPool.vm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => ClockWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  ClockWorkerPool.js(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => ClockWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  ClockWorkerPool.wasm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => ClockWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Stream<int> infiniteClock({int periodInMs = 1000}) =>
      stream((w) => w.infiniteClock(periodInMs: periodInMs));
}
