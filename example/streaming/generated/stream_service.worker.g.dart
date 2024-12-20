// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../stream_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.1.1
// **************************************************************************

/// WorkerService class for StreamService
class _$StreamServiceWorkerService extends StreamService
    implements WorkerService {
  _$StreamServiceWorkerService() : super();

  @d.override
  late final d.Map<d.int, CommandHandler> operations =
      d.Map.unmodifiable(<d.int, CommandHandler>{
    _$clockId: ($) =>
        clock(frequency: _$X.$impl.$dsr0($.args[0]), token: $.cancelToken),
    _$infiniteClockId: ($) =>
        infiniteClock(frequency: _$X.$impl.$dsr0($.args[0])),
  });

  static const d.int _$clockId = 1;
  static const d.int _$infiniteClockId = 2;
}

/// Service initializer for StreamService
WorkerService $StreamServiceInitializer(WorkerRequest $$) =>
    _$StreamServiceWorkerService();

/// Worker for StreamService
base class StreamServiceWorker extends Worker implements StreamService {
  StreamServiceWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($StreamServiceActivator(Squadron.platformType));

  StreamServiceWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($StreamServiceActivator(SquadronPlatformType.vm));

  StreamServiceWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($StreamServiceActivator(SquadronPlatformType.wasm));

  @d.override
  Stream<d.int> clock({d.int frequency = 1, CancelationToken? token}) =>
      stream(_$StreamServiceWorkerService._$clockId,
              args: [frequency], token: token)
          .map(_$X.$impl.$dsr0);

  @d.override
  Stream<d.int> infiniteClock({d.int frequency = 1}) =>
      stream(_$StreamServiceWorkerService._$infiniteClockId, args: [frequency])
          .map(_$X.$impl.$dsr0);
}

/// Worker pool for StreamService
base class StreamServiceWorkerPool extends WorkerPool<StreamServiceWorker>
    implements StreamService {
  StreamServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => StreamServiceWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  StreamServiceWorkerPool.vm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => StreamServiceWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  StreamServiceWorkerPool.wasm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => StreamServiceWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @d.override
  Stream<d.int> clock({d.int frequency = 1, CancelationToken? token}) =>
      stream((w) => w.clock(frequency: frequency, token: token));

  @d.override
  Stream<d.int> infiniteClock({d.int frequency = 1}) =>
      stream((w) => w.infiniteClock(frequency: frequency));
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

  late final $dsr0 = Squadron.converter.value<d.int>();
}
