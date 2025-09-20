// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of '../json_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 8.0.0 (Squadron 7.1.2+1)
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
base class _$JsonServiceWorker extends sq.Worker
    with _$JsonService$Invoker, _$JsonService$Facade
    implements JsonService {
  _$JsonServiceWorker({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
  }) : super(
         $JsonServiceActivator(sq.Squadron.platformType),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$JsonServiceWorker.vm({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
  }) : super(
         $JsonServiceActivator(sq.SquadronPlatformType.vm),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$JsonServiceWorker.js({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
  }) : super(
         $JsonServiceActivator(sq.SquadronPlatformType.js),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$JsonServiceWorker.wasm({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
  }) : super(
         $JsonServiceActivator(sq.SquadronPlatformType.wasm),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  @override
  List? getStartArgs() => null;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for JsonService
base class JsonServiceWorker with Releasable implements _$JsonServiceWorker {
  JsonServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
  }

  JsonServiceWorker({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
  }) : this._(
         _$JsonServiceWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  JsonServiceWorker.vm({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
  }) : this._(
         _$JsonServiceWorker.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  JsonServiceWorker.js({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
  }) : this._(
         _$JsonServiceWorker.js(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  JsonServiceWorker.wasm({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
  }) : this._(
         _$JsonServiceWorker.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  final _$JsonServiceWorker _$worker;

  static final Finalizer<_$JsonServiceWorker> _finalizer =
      Finalizer<_$JsonServiceWorker>((w) {
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
  Future<dynamic> decode(String source) => _$worker.decode(source);

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

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
  sq.WorkerStat get stats => _$worker.stats;

  @override
  sq.WorkerStat getStats() => _$worker.getStats();

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

  @override
  sq.Channel? getSharedChannel() => _$worker.getSharedChannel();

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
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for JsonService
base class _$JsonServiceWorkerPool extends sq.WorkerPool<JsonServiceWorker>
    with _$JsonService$Facade
    implements JsonService {
  _$JsonServiceWorkerPool({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
    sq.ConcurrencySettings? concurrencySettings,
  }) : super(
         (sq.ExceptionManager exceptionManager) => JsonServiceWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  _$JsonServiceWorkerPool.vm({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
    sq.ConcurrencySettings? concurrencySettings,
  }) : super(
         (sq.ExceptionManager exceptionManager) => JsonServiceWorker.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  _$JsonServiceWorkerPool.js({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
    sq.ConcurrencySettings? concurrencySettings,
  }) : super(
         (sq.ExceptionManager exceptionManager) => JsonServiceWorker.js(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  _$JsonServiceWorkerPool.wasm({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
    sq.ConcurrencySettings? concurrencySettings,
  }) : super(
         (sq.ExceptionManager exceptionManager) => JsonServiceWorker.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  @override
  Future<dynamic> decode(String source) => execute((w) => w.decode(source));

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for JsonService
base class JsonServiceWorkerPool
    with Releasable
    implements _$JsonServiceWorkerPool {
  JsonServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  JsonServiceWorkerPool({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
    sq.ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$JsonServiceWorkerPool(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  JsonServiceWorkerPool.vm({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
    sq.ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$JsonServiceWorkerPool.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  JsonServiceWorkerPool.js({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
    sq.ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$JsonServiceWorkerPool.js(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  JsonServiceWorkerPool.wasm({
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
    sq.ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$JsonServiceWorkerPool.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  final _$JsonServiceWorkerPool _$pool;

  static final Finalizer<_$JsonServiceWorkerPool> _finalizer =
      Finalizer<_$JsonServiceWorkerPool>((p) {
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
  Future<dynamic> decode(String source) => _$pool.decode(source);

  @override
  sq.ExceptionManager get exceptionManager => _$pool.exceptionManager;

  @override
  Logger? get channelLogger => _$pool.channelLogger;

  @override
  set channelLogger(Logger? value) => _$pool.channelLogger = value;

  @override
  sq.ConcurrencySettings get concurrencySettings => _$pool.concurrencySettings;

  @override
  Iterable<sq.WorkerStat> get fullStats => _$pool.fullStats;

  @override
  int get pendingWorkload => _$pool.pendingWorkload;

  @override
  int get maxSize => _$pool.maxSize;

  @override
  int get size => _$pool.size;

  @override
  Iterable<sq.WorkerStat> get stats => _$pool.stats;

  @override
  bool get stopped => _$pool.stopped;

  @override
  void cancelAll([String? message]) => _$pool.cancelAll(message);

  @override
  void cancel(sq.Task task, [String? message]) => _$pool.cancel(task, message);

  @override
  FutureOr<void> start() => _$pool.start();

  @override
  int stop([bool Function(JsonServiceWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
    void Function(sq.WorkerStat, bool) listener,
  ) => _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener({
    void Function(sq.WorkerStat, bool)? listener,
    Object? token,
  }) => _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
    Future<T> Function(JsonServiceWorker worker) task, {
    sq.PerfCounter? counter,
  }) => _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
    Stream<T> Function(JsonServiceWorker worker) task, {
    sq.PerfCounter? counter,
  }) => _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
    Stream<T> Function(JsonServiceWorker worker) task, {
    sq.PerfCounter? counter,
  }) => _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
    Future<T> Function(JsonServiceWorker worker) task, {
    sq.PerfCounter? counter,
  }) => _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

final class _$Deser extends sq.MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<String>();
}
