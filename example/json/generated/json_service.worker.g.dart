// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../json_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for JsonService
class _$JsonServiceWorkerService extends JsonService implements WorkerService {
  _$JsonServiceWorkerService() : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$loadJsonId: ($) => loadJson(data: $.args[0], fromJson: $.args[1]),
  });

  static const int _$loadJsonId = 1;
}

/// Service initializer for JsonService
WorkerService $JsonServiceInitializer(WorkerRequest startRequest) =>
    _$JsonServiceWorkerService();

/// Worker for JsonService
class JsonServiceWorker extends Worker implements JsonService {
  JsonServiceWorker({PlatformThreadHook? threadHook})
      : super($JsonServiceActivator, threadHook: threadHook);

  @override
  Future<T> loadJson<T>(
          {required String data,
          required T Function(Map<String, dynamic>) fromJson}) =>
      send(_$JsonServiceWorkerService._$loadJsonId, args: [data, fromJson]);

  @override
  // ignore: unused_element
  Logger get _logger => throw UnimplementedError();
}

/// Worker pool for JsonService
class JsonServiceWorkerPool extends WorkerPool<JsonServiceWorker>
    implements JsonService {
  JsonServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook})
      : super(() => JsonServiceWorker(threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<T> loadJson<T>(
          {required String data,
          required T Function(Map<String, dynamic>) fromJson}) =>
      execute((w) => w.loadJson(data: data, fromJson: fromJson));

  @override
  // ignore: unused_element
  Logger get _logger => throw UnimplementedError();
}
