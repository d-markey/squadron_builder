// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../datetime_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 8.0.0 (Squadron 7.1.2+1)
// Generated: 2025-09-21 19:33:00.562082Z
// **************************************************************************

/// Command ids used in operations map
const int _$defaultIfNullId = 1;
const int _$identityId = 2;
const int _$nullOnSundayId = 3;

/// WorkerService operations for DateTimeService
extension on DateTimeService {
  OperationsMap _$getOperations() => OperationsMap({
    _$defaultIfNullId: ($req) async {
      final DateTime $res;
      try {
        final $dsr = _$Deser(contextAware: false);
        $res = await defaultIfNull(
          $dsr.$1($req.args[0]),
          $dsr.$0($req.args[1]),
        );
      } finally {}
      return $res;
    },
    _$identityId: ($req) async {
      final DateTime $res;
      try {
        final $dsr = _$Deser(contextAware: false);
        $res = await identity($dsr.$0($req.args[0]));
      } finally {}
      return $res;
    },
    _$nullOnSundayId: ($req) async {
      final DateTime? $res;
      try {
        final $dsr = _$Deser(contextAware: false);
        $res = await nullOnSunday($dsr.$0($req.args[0]));
      } finally {}
      return $res;
    },
  });
}

/// Invoker for DateTimeService, implements the public interface to invoke the
/// remote service.
mixin _$DateTimeService$Invoker on Invoker implements DateTimeService {
  @override
  Future<DateTime> defaultIfNull(DateTime? x, [DateTime def = 0]) async {
    final dynamic $res = await send(_$defaultIfNullId, args: [x, def]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$0($res);
    } finally {}
  }

  @override
  Future<DateTime> identity(DateTime x) async {
    final dynamic $res = await send(_$identityId, args: [x]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$0($res);
    } finally {}
  }

  @override
  Future<DateTime?> nullOnSunday(DateTime x) async {
    final dynamic $res = await send(_$nullOnSundayId, args: [x]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$1($res);
    } finally {}
  }
}

/// Facade for DateTimeService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$DateTimeService$Facade implements DateTimeService {}

/// WorkerService class for DateTimeService
class _$DateTimeService$WorkerService extends DateTimeService
    implements WorkerService {
  _$DateTimeService$WorkerService() : super();

  @override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for DateTimeService
WorkerService $DateTimeServiceInitializer(WorkerRequest $req) =>
    _$DateTimeService$WorkerService();

/// Worker for DateTimeService
base class DateTimeServiceWorker extends Worker
    with _$DateTimeService$Invoker, _$DateTimeService$Facade
    implements DateTimeService {
  DateTimeServiceWorker({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $DateTimeServiceActivator(Squadron.platformType),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  DateTimeServiceWorker.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $DateTimeServiceActivator(SquadronPlatformType.vm),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  DateTimeServiceWorker.js({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $DateTimeServiceActivator(SquadronPlatformType.js),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  DateTimeServiceWorker.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $DateTimeServiceActivator(SquadronPlatformType.wasm),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  @override
  List? getStartArgs() => null;
}

/// Worker pool for DateTimeService
base class DateTimeServiceWorkerPool extends WorkerPool<DateTimeServiceWorker>
    with _$DateTimeService$Facade
    implements DateTimeService {
  DateTimeServiceWorkerPool({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => DateTimeServiceWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  DateTimeServiceWorkerPool.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => DateTimeServiceWorker.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  DateTimeServiceWorkerPool.js({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => DateTimeServiceWorker.js(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  DateTimeServiceWorkerPool.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => DateTimeServiceWorker.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  @override
  Future<DateTime> defaultIfNull(DateTime? x, [DateTime def = 0]) =>
      execute((w) => w.defaultIfNull(x, def));

  @override
  Future<DateTime> identity(DateTime x) => execute((w) => w.identity(x));

  @override
  Future<DateTime?> nullOnSunday(DateTime x) =>
      execute((w) => w.nullOnSunday(x));
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<DateTime>();
  late final $1 = Converter.allowNull($0);
}