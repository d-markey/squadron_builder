// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../sample_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.5.0
// **************************************************************************

/// WorkerService class for SampleService
class _$SampleServiceWorkerService extends SampleService
    implements WorkerService {
  _$SampleServiceWorkerService() : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {
    _$computeId: ($) async =>
        (await compute(DataIn.unmarshal($.args[0]))).marshall()
  };

  static const int _$computeId = 1;
}

/// Service initializer for SampleService
WorkerService $SampleServiceInitializer(WorkerRequest startRequest) =>
    _$SampleServiceWorkerService();

/// Operations map for SampleService
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$SampleServiceOperations anymore.')
mixin $SampleServiceOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for SampleService
class SampleServiceWorker extends Worker implements SampleService {
  SampleServiceWorker({PlatformWorkerHook? platformWorkerHook})
      : super($SampleServiceActivator, platformWorkerHook: platformWorkerHook);

  @override
  Future<DataOut> compute(DataIn input) =>
      send(_$SampleServiceWorkerService._$computeId, args: [input.marshal()])
          .then((_) => DataOut.unmarshall(_));
}

/// Worker pool for SampleService
class SampleServiceWorkerPool extends WorkerPool<SampleServiceWorker>
    implements SampleService {
  SampleServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(() => SampleServiceWorker(platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<DataOut> compute(DataIn input) => execute((w) => w.compute(input));
}
