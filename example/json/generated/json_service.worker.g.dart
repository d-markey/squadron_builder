// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../json_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.4.2
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

/// Operations map for JsonService
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$JsonServiceOperations anymore.')
mixin $JsonServiceOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for JsonService
class JsonServiceWorker extends Worker implements JsonService {
  JsonServiceWorker({PlatformWorkerHook? platformWorkerHook})
      : super($JsonServiceActivator, platformWorkerHook: platformWorkerHook);

  @override
  Future<T> loadJson<T>(
          {required String data,
          required T Function(Map<String, Object?>) fromJson}) =>
      send(_$JsonServiceWorkerService._$loadJsonId, args: [data, fromJson]);
}

/// Worker pool for JsonService
class JsonServiceWorkerPool extends WorkerPool<JsonServiceWorker>
    implements JsonService {
  JsonServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(() => JsonServiceWorker(platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<T> loadJson<T>(
          {required String data,
          required T Function(Map<String, Object?>) fromJson}) =>
      execute((w) => w.loadJson(data: data, fromJson: fromJson));
}
