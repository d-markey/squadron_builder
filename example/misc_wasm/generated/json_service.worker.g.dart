// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../json_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.2.0
// **************************************************************************

/// WorkerService class for JsonService
class _$JsonServiceWorkerService extends JsonService
    implements sq.WorkerService {
  _$JsonServiceWorkerService() : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$decodeId: ($) => decode(_$X.$impl.$dsr0($.args[0])),
  });

  static const int _$decodeId = 1;
}

/// Service initializer for JsonService
sq.WorkerService $JsonServiceInitializer(sq.WorkerRequest $$) =>
    _$JsonServiceWorkerService();

/// Worker for JsonService
base class JsonServiceWorker extends sq.Worker implements JsonService {
  JsonServiceWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($JsonServiceActivator(sq.Squadron.platformType));

  JsonServiceWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($JsonServiceActivator(sq.SquadronPlatformType.wasm));

  @override
  Future<dynamic> decode(String source) =>
      send(_$JsonServiceWorkerService._$decodeId, args: [source]);
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

final class _$X {
  _$X._();

  static _$X? _impl;

  static _$X get $impl {
    if (_impl == null) {
      sq.Squadron.onConverterChanged(() => _impl = _$X._());
      _impl = _$X._();
    }
    return _impl!;
  }

  late final $dsr0 = sq.Squadron.converter.value<String>();
}
