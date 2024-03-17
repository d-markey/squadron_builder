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
    _$clockId: ($) => clock(frequency: $.args[0], token: $.args[1]),
    _$infiniteClockId: ($) => infiniteClock(frequency: $.args[0]),
  });

  static const int _$clockId = 1;
  static const int _$infiniteClockId = 2;
}

/// Service initializer for StreamService
WorkerService $StreamServiceInitializer(WorkerRequest startRequest) =>
    _$StreamServiceWorkerService();

/// Worker for StreamService
class StreamServiceWorker extends Worker implements StreamService {
  StreamServiceWorker({PlatformThreadHook? threadHook})
      : super($StreamServiceActivator, threadHook: threadHook);

  @override
  Stream<int> clock({int frequency = 1, CancelationToken? token}) =>
      stream(_$StreamServiceWorkerService._$clockId, args: [frequency, token]);

  @override
  Stream<int> infiniteClock({int frequency = 1}) =>
      stream(_$StreamServiceWorkerService._$infiniteClockId, args: [frequency]);
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
