// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of '../fib_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 9.0.0+2 (Squadron 7.4.0)
// **************************************************************************

// dart format width=80
/// Command ids used in operations map
const dc.int _$fibonacciId = 1;

/// WorkerService operations for FibService
extension on FibService {
  OperationsMap _$getOperations() => OperationsMap({
    _$fibonacciId: ($req) async {
      final dc.int $res;
      try {
        final $dsr = _$Deser(contextAware: false);
        $res = await fibonacci($dsr.$0($req.args[0]));
      } finally {}
      return $res;
    },
  });
}

/// Invoker for FibService, implements the public interface to invoke the
/// remote service.
mixin _$FibService$Invoker on Invoker implements FibService {
  @dc.override
  Future<dc.int> fibonacci(dc.int i) async {
    final dc.dynamic $res = await send(_$fibonacciId, args: [i]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$0($res);
    } finally {}
  }
}

/// Facade for FibService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$FibService$Facade implements FibService {
  @dc.override
  // ignore: unused_element
  dc.int get x => throw dc.UnimplementedError();
}

/// WorkerClient for FibService
final class $FibService$Client extends WorkerClient
    with _$FibService$Invoker, _$FibService$Facade
    implements FibService {
  $FibService$Client(PlatformChannel channelInfo)
    : super(Channel.deserialize(channelInfo)!);
}

/// Local worker extension for FibService
extension $FibServiceLocalWorkerExt on FibService {
  // Get a fresh local worker instance.
  LocalWorker<FibService> getLocalWorker([
    ExceptionManager? exceptionManager,
  ]) => LocalWorker.create(this, _$getOperations(), exceptionManager);
}

/// WorkerService class for FibService
class _$FibService$WorkerService extends FibService implements WorkerService {
  _$FibService$WorkerService() : super();

  @dc.override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for FibService
WorkerService $FibServiceInitializer(WorkerRequest $req) =>
    _$FibService$WorkerService();

/// Worker for FibService
base class _$FibServiceWorker extends Worker
    with _$FibService$Invoker, _$FibService$Facade
    implements FibService {
  _$FibServiceWorker({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $FibServiceActivator(Squadron.platformType),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$FibServiceWorker.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $FibServiceActivator(SquadronPlatformType.vm),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$FibServiceWorker.js({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $FibServiceActivator(SquadronPlatformType.js),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  @dc.override
  dc.List? getStartArgs() => null;

  final _$detachToken = dc.Object();
}

/// Finalizable worker wrapper for FibService
base class FibServiceWorker with Releasable implements _$FibServiceWorker {
  FibServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
  }

  FibServiceWorker({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$FibServiceWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  FibServiceWorker.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$FibServiceWorker.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  FibServiceWorker.js({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$FibServiceWorker.js(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  final _$FibServiceWorker _$worker;

  static final dc.Finalizer<_$FibServiceWorker> _finalizer =
      dc.Finalizer<_$FibServiceWorker>((w) {
        try {
          _finalizer.detach(w._$detachToken);
          w.release();
        } catch (_) {
          // finalizers must not throw
        }
      });

  @dc.override
  void release() {
    try {
      _$worker.release();
      super.release();
    } catch (_) {
      // release should not throw
    }
  }

  @dc.override
  dc.List? getStartArgs() => null;

  @dc.override
  Future<dc.int> fibonacci(dc.int i) => _$worker.fibonacci(i);

  @dc.override
  dc.int get x => _$worker.x;

  @dc.override
  ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @dc.override
  Logger? get channelLogger => _$worker.channelLogger;

  @dc.override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @dc.override
  dc.bool get isConnected => _$worker.isConnected;

  @dc.override
  dc.bool get isStopped => _$worker.isStopped;

  @dc.override
  // ignore: deprecated_member_use
  WorkerStat get stats => _$worker.stats;

  @dc.override
  WorkerStat getStats() => _$worker.getStats();

  @dc.override
  Future<Channel> start() => _$worker.start();

  @dc.override
  void stop() => _$worker.stop();

  @dc.override
  void terminate([TaskTerminatedException? ex]) => _$worker.terminate(ex);

  @dc.override
  Channel? getSharedChannel() => _$worker.getSharedChannel();

  @dc.override
  Future<dc.dynamic> send(
    dc.int command, {
    dc.List args = const [],
    CancelationToken? token,
    dc.bool inspectRequest = false,
    dc.bool inspectResponse = false,
  }) => _$worker.send(
    command,
    args: args,
    token: token,
    inspectRequest: inspectRequest,
    inspectResponse: inspectResponse,
  );

  @dc.override
  Stream<dc.dynamic> stream(
    dc.int command, {
    dc.List args = const [],
    CancelationToken? token,
    dc.bool inspectRequest = false,
    dc.bool inspectResponse = false,
  }) => _$worker.stream(
    command,
    args: args,
    token: token,
    inspectRequest: inspectRequest,
    inspectResponse: inspectResponse,
  );

  @dc.override
  dc.Object get _$detachToken => _$worker._$detachToken;

  @dc.override
  final OperationsMap operations = WorkerService.noOperations;
}

/// Worker pool for FibService
base class _$FibServiceWorkerPool extends WorkerPool<FibServiceWorker>
    with _$FibService$Facade
    implements FibService {
  _$FibServiceWorkerPool({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => FibServiceWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  _$FibServiceWorkerPool.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => FibServiceWorker.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  _$FibServiceWorkerPool.js({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => FibServiceWorker.js(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  @dc.override
  Future<dc.int> fibonacci(dc.int i) => execute((w) => w.fibonacci(i));

  final _$detachToken = dc.Object();
}

/// Finalizable worker pool wrapper for FibService
base class FibServiceWorkerPool
    with Releasable
    implements _$FibServiceWorkerPool {
  FibServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  FibServiceWorkerPool({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$FibServiceWorkerPool(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  FibServiceWorkerPool.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$FibServiceWorkerPool.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  FibServiceWorkerPool.js({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$FibServiceWorkerPool.js(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  final _$FibServiceWorkerPool _$pool;

  static final dc.Finalizer<_$FibServiceWorkerPool> _finalizer =
      dc.Finalizer<_$FibServiceWorkerPool>((p) {
        try {
          _finalizer.detach(p._$detachToken);
          p.release();
        } catch (_) {
          // finalizers must not throw
        }
      });

  @dc.override
  void release() {
    try {
      _$pool.release();
      super.release();
    } catch (_) {
      // release should not throw
    }
  }

  @dc.override
  Future<dc.int> fibonacci(dc.int i) => _$pool.fibonacci(i);

  @dc.override
  dc.int get x => _$pool.x;

  @dc.override
  ExceptionManager get exceptionManager => _$pool.exceptionManager;

  @dc.override
  Logger? get channelLogger => _$pool.channelLogger;

  @dc.override
  set channelLogger(Logger? value) => _$pool.channelLogger = value;

  @dc.override
  ConcurrencySettings get concurrencySettings => _$pool.concurrencySettings;

  @dc.override
  dc.Iterable<WorkerStat> get fullStats => _$pool.fullStats;

  @dc.override
  dc.int get pendingWorkload => _$pool.pendingWorkload;

  @dc.override
  dc.int get maxSize => _$pool.maxSize;

  @dc.override
  dc.int get size => _$pool.size;

  @dc.override
  dc.Iterable<WorkerStat> get stats => _$pool.stats;

  @dc.override
  dc.bool get stopped => _$pool.stopped;

  @dc.override
  void cancelAll([dc.String? message]) => _$pool.cancelAll(message);

  @dc.override
  void cancel(Task task, [dc.String? message]) => _$pool.cancel(task, message);

  @dc.override
  FutureOr<void> start() => _$pool.start();

  @dc.override
  dc.int stop([dc.bool Function(FibServiceWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @dc.override
  void terminate([TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @dc.override
  dc.Object registerWorkerPoolListener(
    void Function(WorkerStat, dc.bool) listener,
  ) => _$pool.registerWorkerPoolListener(listener);

  @dc.override
  void unregisterWorkerPoolListener({
    void Function(WorkerStat, dc.bool)? listener,
    dc.Object? token,
  }) => _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @dc.override
  Future<T> execute<T>(
    Future<T> Function(FibServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.execute<T>(task, counter: counter);

  @dc.override
  Stream<T> stream<T>(
    Stream<T> Function(FibServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.stream<T>(task, counter: counter);

  @dc.override
  StreamTask<T> scheduleStreamTask<T>(
    Stream<T> Function(FibServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.scheduleStreamTask<T>(task, counter: counter);

  @dc.override
  ValueTask<T> scheduleValueTask<T>(
    Future<T> Function(FibServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.scheduleValueTask<T>(task, counter: counter);

  @dc.override
  dc.Object get _$detachToken => _$pool._$detachToken;

  @dc.override
  final OperationsMap operations = WorkerService.noOperations;
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<dc.int>();
}
