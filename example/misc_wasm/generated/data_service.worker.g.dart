// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../data_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService class for DataService
class _$DataServiceWorkerService extends DataService implements WorkerService {
  _$DataServiceWorkerService() : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$doSomethingId: ($req_) async {
      Data $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = await doSomething(
          (($_) => Data.unmarshal($_))($req_.args[0]),
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return (($_) => ($_ as Data).marshal())($res_);
      } finally {}
    },
  });

  static const int _$doSomethingId = 1;
}

/// Service initializer for DataService
WorkerService $DataServiceInitializer(WorkerRequest $req_) {
  // ignore: unused_local_variable
  final $mc = MarshalingContext();
  return _$DataServiceWorkerService();
}

/// Worker for DataService
base class DataServiceWorker extends Worker implements DataService {
  DataServiceWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($DataServiceActivator(Squadron.platformType));

  DataServiceWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($DataServiceActivator(SquadronPlatformType.wasm));

  @override
  Future<Data> doSomething(Data input) async {
    dynamic $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      $res_ = await send(
        _$DataServiceWorkerService._$doSomethingId,
        args: [
          (($_) => ($_ as Data).marshal())(input),
        ],
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      return (($_) => Data.unmarshal($_))($res_);
    } finally {}
  }
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
