// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../int_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 8.0.0 (Squadron 7.1.2+1)
// Generated: 2025-09-21 21:58:23.067002Z
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
base class _$IntServiceWorker extends Worker
    with _$IntService$Invoker, _$IntService$Facade
    implements IntService {
  _$IntServiceWorker({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $IntServiceActivator(Squadron.platformType),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$IntServiceWorker.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $IntServiceActivator(SquadronPlatformType.vm),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  @override
  List? getStartArgs() => null;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for IntService
base class IntServiceWorker with Releasable implements _$IntServiceWorker {
  IntServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
  }

  IntServiceWorker({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$IntServiceWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  IntServiceWorker.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$IntServiceWorker.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  final _$IntServiceWorker _$worker;

  static final Finalizer<_$IntServiceWorker> _finalizer =
      Finalizer<_$IntServiceWorker>((w) {
        try {
          _finalizer.detach(w._$detachToken);
          w.release();
        } catch (_) {
          // finalizers must not throw
        }
      });

  @override
  void release() {
    try {
      _$worker.release();
      super.release();
    } catch (_) {
      // release should not throw
    }
  }

  @override
  List? getStartArgs() => null;

  @override
  Future<int> defaultIfNull(int? x, [int def = 0]) =>
      _$worker.defaultIfNull(x, def);

  @override
  Future<int?> evenOrNull(int x) => _$worker.evenOrNull(x);

  @override
  Future<int> identity(int x) => _$worker.identity(x);

  @override
  ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  bool get isStopped => _$worker.isStopped;

  @override
  // ignore: deprecated_member_use
  WorkerStat get stats => _$worker.stats;

  @override
  WorkerStat getStats() => _$worker.getStats();

  @override
  Future<Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([TaskTerminatedException? ex]) => _$worker.terminate(ex);

  @override
  Channel? getSharedChannel() => _$worker.getSharedChannel();

  @override
  Future<dynamic> send(
    int command, {
    List args = const [],
    CancelationToken? token,
    bool inspectRequest = false,
    bool inspectResponse = false,
  }) => _$worker.send(
    command,
    args: args,
    token: token,
    inspectRequest: inspectRequest,
    inspectResponse: inspectResponse,
  );

  @override
  Stream<dynamic> stream(
    int command, {
    List args = const [],
    CancelationToken? token,
    bool inspectRequest = false,
    bool inspectResponse = false,
  }) => _$worker.stream(
    command,
    args: args,
    token: token,
    inspectRequest: inspectRequest,
    inspectResponse: inspectResponse,
  );

  @override
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final OperationsMap operations = WorkerService.noOperations;
}

/// Worker pool for IntService
base class _$IntServiceWorkerPool extends WorkerPool<IntServiceWorker>
    with _$IntService$Facade
    implements IntService {
  _$IntServiceWorkerPool({
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

  _$IntServiceWorkerPool.vm({
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

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for IntService
base class IntServiceWorkerPool
    with Releasable
    implements _$IntServiceWorkerPool {
  IntServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  IntServiceWorkerPool({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$IntServiceWorkerPool(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  IntServiceWorkerPool.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$IntServiceWorkerPool.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  final _$IntServiceWorkerPool _$pool;

  static final Finalizer<_$IntServiceWorkerPool> _finalizer =
      Finalizer<_$IntServiceWorkerPool>((p) {
        try {
          _finalizer.detach(p._$detachToken);
          p.release();
        } catch (_) {
          // finalizers must not throw
        }
      });

  @override
  void release() {
    try {
      _$pool.release();
      super.release();
    } catch (_) {
      // release should not throw
    }
  }

  @override
  Future<int> defaultIfNull(int? x, [int def = 0]) =>
      _$pool.defaultIfNull(x, def);

  @override
  Future<int?> evenOrNull(int x) => _$pool.evenOrNull(x);

  @override
  Future<int> identity(int x) => _$pool.identity(x);

  @override
  ExceptionManager get exceptionManager => _$pool.exceptionManager;

  @override
  Logger? get channelLogger => _$pool.channelLogger;

  @override
  set channelLogger(Logger? value) => _$pool.channelLogger = value;

  @override
  ConcurrencySettings get concurrencySettings => _$pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _$pool.fullStats;

  @override
  int get pendingWorkload => _$pool.pendingWorkload;

  @override
  int get maxSize => _$pool.maxSize;

  @override
  int get size => _$pool.size;

  @override
  Iterable<WorkerStat> get stats => _$pool.stats;

  @override
  bool get stopped => _$pool.stopped;

  @override
  void cancelAll([String? message]) => _$pool.cancelAll(message);

  @override
  void cancel(Task task, [String? message]) => _$pool.cancel(task, message);

  @override
  FutureOr<void> start() => _$pool.start();

  @override
  int stop([bool Function(IntServiceWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(void Function(WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener({
    void Function(WorkerStat, bool)? listener,
    Object? token,
  }) => _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
    Future<T> Function(IntServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
    Stream<T> Function(IntServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.stream<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStreamTask<T>(
    Stream<T> Function(IntServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleValueTask<T>(
    Future<T> Function(IntServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final OperationsMap operations = WorkerService.noOperations;
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<int>();
  late final $1 = Converter.allowNull($0);
}
