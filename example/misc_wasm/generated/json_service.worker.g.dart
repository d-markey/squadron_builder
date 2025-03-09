// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../json_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService operations for JsonService
extension _$JsonService$Operations on JsonService {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({
        _$decodeId: ($req) async {
          final dynamic $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = await decode($mc.$de0($req.args[0]));
          } finally {}
          return $res;
        },
      });

  static const int _$decodeId = 1;
}

/// Invoker for JsonService, implements the public interface to invoke the
/// remote service.
mixin _$JsonService$Invoker on sq.Invoker implements JsonService {
  @override
  Future<dynamic> decode(String source) async {
    final dynamic $res = await send(
      _$JsonService$Operations._$decodeId,
      args: [source],
    );
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de1($res);
    } finally {}
  }
}

/// Facade for JsonService, implements other details of the service not related to
/// invoking the remote service.
mixin _$JsonService$Facade implements JsonService {}

/// WorkerService class for JsonService
class _$JsonService$WorkerService extends JsonService
    implements sq.WorkerService {
  _$JsonService$WorkerService() : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
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
}

/// Worker pool for JsonService
base class JsonServiceWorkerPool extends sq.WorkerPool<JsonServiceWorker>
    with _$JsonService$Facade
    implements JsonService {
  JsonServiceWorkerPool(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => JsonServiceWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  JsonServiceWorkerPool.wasm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => JsonServiceWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Future<dynamic> decode(String source) => execute((w) => w.decode(source));
}

final class _$X extends sq.MarshalingContext {
  _$X({super.contextAware});
  late final $de0 = value<String>();
  late final $de1 = nvalue<Object>();
}
