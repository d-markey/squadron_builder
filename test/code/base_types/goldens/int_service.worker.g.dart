// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../int_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 8.0.0 (Squadron 7.1.2+1)
// Generated: 2025-09-21 16:24:37.236912Z
// **************************************************************************

/// Command ids used in operations map
const int _$defaultIfNullId = 1;
const int _$evenOrNullId = 2;
const int _$identityId = 3;

/// WorkerService operations for IntService
extension on IntService {
  OperationsMap _$getOperations() => OperationsMap({
    _$defaultIfNullId: ($req) async {
      final int $res;
      try {
        final $dsr = _$Deser(contextAware: false);
        $res = await defaultIfNull(
          $dsr.$1($req.args[0]),
          $dsr.$0($req.args[1]),
        );
      } finally {}
      return $res;
    },
    _$evenOrNullId: ($req) async {
      final int? $res;
      try {
        final $dsr = _$Deser(contextAware: false);
        $res = await evenOrNull($dsr.$0($req.args[0]));
      } finally {}
      return $res;
    },
    _$identityId: ($req) async {
      final int $res;
      try {
        final $dsr = _$Deser(contextAware: false);
        $res = await identity($dsr.$0($req.args[0]));
      } finally {}
      return $res;
    },
  });
}

/// Invoker for IntService, implements the public interface to invoke the
/// remote service.
mixin _$IntService$Invoker on Invoker implements IntService {
  @override
  Future<int> defaultIfNull(int? x, [int def = 0]) async {
    final dynamic $res = await send(_$defaultIfNullId, args: [x, def]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$0($res);
    } finally {}
  }

  @override
  Future<int?> evenOrNull(int x) async {
    final dynamic $res = await send(_$evenOrNullId, args: [x]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$1($res);
    } finally {}
  }

  @override
  Future<int> identity(int x) async {
    final dynamic $res = await send(_$identityId, args: [x]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$0($res);
    } finally {}
  }
}

/// Facade for IntService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$IntService$Facade implements IntService {}

/// WorkerService class for IntService
class _$IntService$WorkerService extends IntService implements WorkerService {
  _$IntService$WorkerService() : super();

  @override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for IntService
WorkerService $IntServiceInitializer(WorkerRequest $req) =>
    _$IntService$WorkerService();

/// Worker for IntService
base class IntServiceWorker extends Worker
    with _$IntService$Invoker, _$IntService$Facade
    implements IntService {
  IntServiceWorker({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $IntServiceActivator(Squadron.platformType),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  IntServiceWorker.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $IntServiceActivator(SquadronPlatformType.vm),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  @override
  List? getStartArgs() => null;
}

/// Worker pool for IntService
base class IntServiceWorkerPool extends WorkerPool<IntServiceWorker>
    with _$IntService$Facade
    implements IntService {
  IntServiceWorkerPool({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => IntServiceWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  IntServiceWorkerPool.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => IntServiceWorker.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  @override
  Future<int> defaultIfNull(int? x, [int def = 0]) =>
      execute((w) => w.defaultIfNull(x, def));

  @override
  Future<int?> evenOrNull(int x) => execute((w) => w.evenOrNull(x));

  @override
  Future<int> identity(int x) => execute((w) => w.identity(x));
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<int>();
  late final $1 = Converter.allowNull($0);
}