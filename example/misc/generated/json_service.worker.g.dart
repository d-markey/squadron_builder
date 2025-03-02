// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../json_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService class for JsonService
class _$JsonServiceWorkerService extends JsonService
    implements sq.WorkerService {
  _$JsonServiceWorkerService() : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$decodeId: ($req_) async {
      Object $res_;
      try {
        // ignore: unused_local_variable
        final $mc = sq.MarshalingContext();
        $res_ = await decode(
          $mc.value<String>()($req_.args[0]),
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = sq.MarshalingContext();
        return $res_;
      } finally {}
    },
  });

  static const int _$decodeId = 1;
}

/// Service initializer for JsonService
sq.WorkerService $JsonServiceInitializer(sq.WorkerRequest $req_) {
  // ignore: unused_local_variable
  final $mc = sq.MarshalingContext();
  return _$JsonServiceWorkerService();
}

/// Worker for JsonService
base class JsonServiceWorker extends sq.Worker implements JsonService {
  JsonServiceWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($JsonServiceActivator(sq.Squadron.platformType));

  JsonServiceWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($JsonServiceActivator(sq.SquadronPlatformType.vm));

  JsonServiceWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($JsonServiceActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  JsonServiceWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($JsonServiceActivator(sq.SquadronPlatformType.wasm));

  @override
  Future<Object> decode(String source) async {
    dynamic $res_;
    try {
      // ignore: unused_local_variable
      final $mc = sq.MarshalingContext.none;
      $res_ = await send(
        _$JsonServiceWorkerService._$decodeId,
        args: [
          source,
        ],
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = sq.MarshalingContext.none;
      return $mc.value<Object>()($res_);
    } finally {}
  }
}

/// Worker pool for JsonService
base class JsonServiceWorkerPool extends sq.WorkerPool<JsonServiceWorker>
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

  JsonServiceWorkerPool.vm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => JsonServiceWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  JsonServiceWorkerPool.js(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => JsonServiceWorker.js(
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
  Future<Object> decode(String source) => execute((w) => w.decode(source));
}
