// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../data_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for DataService
class _$DataServiceWorkerService extends DataService implements WorkerService {
  _$DataServiceWorkerService() : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$doSomethingId: ($in) => doSomething(_$X.$0($in.args[0])),
  });

  static const int _$doSomethingId = 1;
}

/// Service initializer for DataService
WorkerService $DataServiceInitializer(WorkerRequest $in) =>
    _$DataServiceWorkerService();

/// Worker for DataService
class DataServiceWorker extends Worker implements DataService {
  DataServiceWorker({PlatformThreadHook? threadHook})
      : super($DataServiceActivator, threadHook: threadHook);

  @override
  Future<Data> doSomething(Data input) =>
      send(_$DataServiceWorkerService._$doSomethingId, args: [input])
          .then(_$X.$0);
}

/// Worker pool for DataService
class DataServiceWorkerPool extends WorkerPool<DataServiceWorker>
    implements DataService {
  DataServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook})
      : super(() => DataServiceWorker(threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<Data> doSomething(Data input) => execute((w) => w.doSomething(input));
}

class _$X {
  static final $0 = Squadron.converter.value<Data>();
}
