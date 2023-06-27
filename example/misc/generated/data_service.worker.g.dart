// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../data_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.5.0
// **************************************************************************

/// WorkerService class for DataService
class _$DataServiceWorkerService extends DataService implements WorkerService {
  _$DataServiceWorkerService() : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {
    _$doSomethingId: ($) async =>
        (await doSomething(Data.unmarshall($.args[0]))).marshall()
  };

  static const int _$doSomethingId = 1;
}

/// Service initializer for DataService
WorkerService $DataServiceInitializer(WorkerRequest startRequest) =>
    _$DataServiceWorkerService();

/// Operations map for DataService
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$DataServiceOperations anymore.')
mixin $DataServiceOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for DataService
class DataServiceWorker extends Worker implements DataService {
  DataServiceWorker({PlatformWorkerHook? platformWorkerHook})
      : super($DataServiceActivator, platformWorkerHook: platformWorkerHook);

  @override
  Future<Data> doSomething(Data input) =>
      send(_$DataServiceWorkerService._$doSomethingId, args: [input.marshall()])
          .then((_) => Data.unmarshall(_));
}

/// Worker pool for DataService
class DataServiceWorkerPool extends WorkerPool<DataServiceWorker>
    implements DataService {
  DataServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(() => DataServiceWorker(platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<Data> doSomething(Data input) => execute((w) => w.doSomething(input));
}
