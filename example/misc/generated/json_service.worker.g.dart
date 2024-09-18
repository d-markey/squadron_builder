// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../json_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for JsonService
class _$JsonServiceWorkerService extends JsonService
    implements sq.WorkerService {
  _$JsonServiceWorkerService() : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$decodeId: ($in) => decode(_$X.$0($in.args[0])),
  });

  static const int _$decodeId = 1;
}

/// Service initializer for JsonService
sq.WorkerService $JsonServiceInitializer(sq.WorkerRequest $in) =>
    _$JsonServiceWorkerService();

/// Worker for JsonService
class JsonServiceWorker extends sq.Worker implements JsonService {
  JsonServiceWorker({sq.PlatformThreadHook? threadHook})
      : super($JsonServiceActivator, threadHook: threadHook);

  @override
  Future<dynamic> decode(String source) =>
      send(_$JsonServiceWorkerService._$decodeId, args: [source]).then(_$X.$1);
}

/// Worker pool for JsonService
class JsonServiceWorkerPool extends sq.WorkerPool<JsonServiceWorker>
    implements JsonService {
  JsonServiceWorkerPool(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(() => JsonServiceWorker(threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<dynamic> decode(String source) => execute((w) => w.decode(source));
}

class _$X {
  static final $0 = sq.Squadron.converter.value<String>();
  static final $1 = sq.Squadron.converter.value<dynamic>();
}
