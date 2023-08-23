// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../stream_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.4.2
// **************************************************************************

/// WorkerService class for StreamService
class _$StreamServiceWorkerService extends StreamService
    implements WorkerService {
  _$StreamServiceWorkerService() : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$clockId: ($) => clock(frequency: $.args[0], token: $.cancelToken),
  });

  static const int _$clockId = 1;
}

/// Service initializer for StreamService
WorkerService $StreamServiceInitializer(WorkerRequest startRequest) =>
    _$StreamServiceWorkerService();

/// Operations map for StreamService
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$StreamServiceOperations anymore.')
mixin $StreamServiceOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for StreamService
class StreamServiceWorker extends Worker implements StreamService {
  StreamServiceWorker({PlatformWorkerHook? platformWorkerHook})
      : super($StreamServiceActivator, platformWorkerHook: platformWorkerHook);

  @override
  Stream<int> clock({int frequency = 1, CancellationToken? token}) =>
      stream(_$StreamServiceWorkerService._$clockId,
          args: [frequency], token: token);
}

/// Worker pool for StreamService
class StreamServiceWorkerPool extends WorkerPool<StreamServiceWorker>
    implements StreamService {
  StreamServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(() => StreamServiceWorker(platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Stream<int> clock({int frequency = 1, CancellationToken? token}) =>
      stream((w) => w.clock(frequency: frequency, token: token));
}
