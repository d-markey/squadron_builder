// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../stream_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for StreamService
class _$StreamServiceWorkerService extends StreamService
    implements WorkerService {
  _$StreamServiceWorkerService() : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$clockId: ($in) =>
        clock(frequency: _$X.$0($in.args[0]), token: _$X.$2($in.args[1])),
    _$infiniteClockId: ($in) => infiniteClock(frequency: _$X.$0($in.args[0])),
  });

  static const int _$clockId = 1;
  static const int _$infiniteClockId = 2;
}

/// Service initializer for StreamService
WorkerService $StreamServiceInitializer(WorkerRequest $in) =>
    _$StreamServiceWorkerService();

/// Worker for StreamService
class StreamServiceWorker extends Worker implements StreamService {
  StreamServiceWorker({PlatformThreadHook? threadHook})
      : super($StreamServiceActivator, threadHook: threadHook);

  @override
  Stream<int> clock({int frequency = 1, CancelationToken? token}) =>
      stream(_$StreamServiceWorkerService._$clockId, args: [frequency, token])
          .map(_$X.$0);

  @override
  Stream<int> infiniteClock({int frequency = 1}) =>
      stream(_$StreamServiceWorkerService._$infiniteClockId, args: [frequency])
          .map(_$X.$0);
}

/// Worker pool for StreamService
class StreamServiceWorkerPool extends WorkerPool<StreamServiceWorker>
    implements StreamService {
  StreamServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook})
      : super(() => StreamServiceWorker(threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  Stream<int> clock({int frequency = 1, CancelationToken? token}) =>
      stream((w) => w.clock(frequency: frequency, token: token));

  @override
  Stream<int> infiniteClock({int frequency = 1}) =>
      stream((w) => w.infiniteClock(frequency: frequency));
}

class _$X {
  static final $0 = Squadron.converter.value<int>();
  static final $1 = Squadron.converter.value<CancelationToken>();
  static final $2 = Squadron.converter.nullable($1);
}
