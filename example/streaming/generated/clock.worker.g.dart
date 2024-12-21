// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../clock.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.1.3
// **************************************************************************

/// WorkerService class for Clock
class _$ClockWorkerService extends Clock implements WorkerService {
  _$ClockWorkerService() : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$infiniteClockId: ($) =>
        infiniteClock(periodInMs: _$X.$impl.$dsr0($.args[0])),
  });

  static const int _$infiniteClockId = 1;
}

/// Service initializer for Clock
WorkerService $ClockInitializer(WorkerRequest $$) => _$ClockWorkerService();

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
  Stream<int> infiniteClock({int periodInMs = 1000}) =>
      stream(_$ClockWorkerService._$infiniteClockId, args: [periodInMs])
          .map(_$X.$impl.$dsr0);
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

final class _$X {
  _$X._();

  static _$X? _impl;

  static _$X get $impl {
    if (_impl == null) {
      Squadron.onConverterChanged(() => _impl = _$X._());
      _impl = _$X._();
    }
    return _impl!;
  }

  late final $dsr0 = Squadron.converter.value<int>();
}
