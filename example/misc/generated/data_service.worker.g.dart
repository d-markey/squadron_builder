// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../data_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.1.1 (Squadron 7.1.1)
// **************************************************************************

/// Command ids used in operations map
const int _$doSomethingId = 1;

/// WorkerService operations for DataService
extension on DataService {
  OperationsMap _$getOperations() => OperationsMap({
        _$doSomethingId: ($req) async {
          final Data $res;
          try {
            final $dsr = _$Deser(contextAware: true);
            $res = await doSomething($dsr.$0($req.args[0]));
          } finally {}
          try {
            final $sr = _$Ser(contextAware: true);
            return $sr.$0($res);
          } finally {}
        },
      });
}

/// Invoker for DataService, implements the public interface to invoke the
/// remote service.
mixin _$DataService$Invoker on Invoker implements DataService {
  @override
  Future<Data> doSomething(Data input) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: true);
      $res = await send(_$doSomethingId, args: [$sr.$0(input)]);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: true);
      return $dsr.$0($res);
    } finally {}
  }
}

/// Facade for DataService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$DataService$Facade implements DataService {}

/// WorkerService class for DataService
class _$DataService$WorkerService extends DataService implements WorkerService {
  _$DataService$WorkerService() : super();

  @override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for DataService
WorkerService $DataServiceInitializer(WorkerRequest $req) =>
    _$DataService$WorkerService();

/// Worker for DataService
base class DataServiceWorker extends Worker
    with _$DataService$Invoker, _$DataService$Facade
    implements DataService {
  DataServiceWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($DataServiceActivator(Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  DataServiceWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($DataServiceActivator(SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  DataServiceWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($DataServiceActivator(SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  DataServiceWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($DataServiceActivator(SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  @override
  List? getStartArgs() => null;
}

/// Worker pool for DataService
base class DataServiceWorkerPool extends WorkerPool<DataServiceWorker>
    with _$DataService$Facade
    implements DataService {
  DataServiceWorkerPool(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => DataServiceWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  DataServiceWorkerPool.vm(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => DataServiceWorker.vm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  DataServiceWorkerPool.js(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => DataServiceWorker.js(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  DataServiceWorkerPool.wasm(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => DataServiceWorker.wasm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  Future<Data> doSomething(Data input) => execute((w) => w.doSomething(input));
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = (($) => ext_d.DataMarshalerExt.unmarshal($, this));
}

final class _$Ser extends MarshalingContext {
  _$Ser({super.contextAware});
  late final $0 = (($) => ($ as Data).marshal(this));
}
