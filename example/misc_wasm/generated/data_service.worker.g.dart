// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../data_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.9
// **************************************************************************

/// WorkerService class for DataService
class _$DataServiceWorkerService extends DataService implements WorkerService {
  _$DataServiceWorkerService() : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$doSomethingId: ($) async => _$X.$1(await doSomething(_$X.$0($.args[0]))),
  });

  static const int _$doSomethingId = 1;
}

/// Service initializer for DataService
WorkerService $DataServiceInitializer(WorkerRequest $$) =>
    _$DataServiceWorkerService();

/// Worker for DataService
base class DataServiceWorker extends Worker implements DataService {
  DataServiceWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($DataServiceActivator(Squadron.platformType));

  DataServiceWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($DataServiceActivator(SquadronPlatformType.wasm));

  @override
  Future<Data> doSomething(Data input) =>
      send(_$DataServiceWorkerService._$doSomethingId, args: [_$X.$1(input)])
          .then(_$X.$0);
}

/// Worker pool for DataService
base class DataServiceWorkerPool extends WorkerPool<DataServiceWorker>
    implements DataService {
  DataServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => DataServiceWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  DataServiceWorkerPool.wasm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => DataServiceWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Future<Data> doSomething(Data input) => execute((w) => w.doSomething(input));
}

sealed class _$X {
  static final $0 = (($) => Data.unmarshal($));
  static final $1 = (($) => ($ as Data).marshal());
}
