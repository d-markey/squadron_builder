// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../data_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService operations for DataService
extension _$DataService$Operations on DataService {
  OperationsMap _$getOperations() => Map.unmodifiable({
        _$doSomethingId: ($req) async {
          final Data $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = await doSomething($mc.$de0($req.args[0]));
          } finally {}
          try {
            final $mc = _$X(contextAware: false);
            return $mc.$se1($res);
          } finally {}
        },
      });

  static const int _$doSomethingId = 1;
}

/// Invoker for DataService, implements the public interface to invoke the
/// remote service.
mixin _$DataService$Invoker on Invoker implements DataService {
  @override
  Future<Data> doSomething(Data input) async {
    final dynamic $res;
    try {
      final $mc = _$X(contextAware: false);
      $res = await send(
        _$DataService$Operations._$doSomethingId,
        args: [$mc.$se1(input)],
      );
    } finally {}
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de0($res);
    } finally {}
  }
}

/// Facade for DataService, implements other details of the service not related to
/// invoking the remote service.
mixin _$DataService$Facade implements DataService {}

/// WorkerService class for DataService
class _$DataService$WorkerService extends DataService implements WorkerService {
  _$DataService$WorkerService() : super();

  OperationsMap? _operations;

  @override
  OperationsMap get operations => (_operations ??= _$getOperations());
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

  DataServiceWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($DataServiceActivator(SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);
}

/// Worker pool for DataService
base class DataServiceWorkerPool extends WorkerPool<DataServiceWorker>
    with _$DataService$Facade
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

final class _$X extends MarshalingContext {
  _$X({super.contextAware});
  late final $de0 = (($_) => Data.unmarshal($_));
  late final $se1 = (($_) => ($_ as Data).marshal());
}
