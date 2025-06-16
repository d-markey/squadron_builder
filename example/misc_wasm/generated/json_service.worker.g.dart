// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../json_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.1.4 (Squadron 7.1.1)
// **************************************************************************

/// Command ids used in operations map
const int _$decodeId = 1;

/// WorkerService operations for JsonService
extension on JsonService {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$decodeId: ($req) async {
          final dynamic $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await decode($dsr.$0($req.args[0]));
          } finally {}
          return $res;
        },
      });
}

/// Invoker for JsonService, implements the public interface to invoke the
/// remote service.
mixin _$JsonService$Invoker on sq.Invoker implements JsonService {
  @override
  Future<dynamic> decode(String source) => send(_$decodeId, args: [source]);
}

/// Facade for JsonService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$JsonService$Facade implements JsonService {}

/// WorkerService class for JsonService
class _$JsonService$WorkerService extends JsonService
    implements sq.WorkerService {
  _$JsonService$WorkerService() : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for JsonService
sq.WorkerService $JsonServiceInitializer(sq.WorkerRequest $req) =>
    _$JsonService$WorkerService();

/// Worker for JsonService
base class JsonServiceWorker extends sq.Worker
    with _$JsonService$Invoker, _$JsonService$Facade
    implements JsonService {
  JsonServiceWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($JsonServiceActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  JsonServiceWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($JsonServiceActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  @override
  List? getStartArgs() => null;
}

/// Worker pool for JsonService
base class JsonServiceWorkerPool extends sq.WorkerPool<JsonServiceWorker>
    with _$JsonService$Facade
    implements JsonService {
  JsonServiceWorkerPool(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => JsonServiceWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  JsonServiceWorkerPool.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => JsonServiceWorker.wasm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  Future<dynamic> decode(String source) => execute((w) => w.decode(source));
}

final class _$Deser extends sq.MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<String>();
}
