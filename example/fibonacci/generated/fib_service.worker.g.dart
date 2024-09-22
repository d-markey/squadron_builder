// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fib_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for FibService
class _$FibServiceWorkerService extends FibService implements WorkerService {
  _$FibServiceWorkerService() : super();

  @dc.override
  late final dc.Map<dc.int, CommandHandler> operations =
      dc.Map.unmodifiable(<dc.int, CommandHandler>{
    _$fibonacciId: ($) => fibonacci(_$X.$0($.args[0])),
  });

  static const dc.int _$fibonacciId = 1;
}

/// Service initializer for FibService
WorkerService $FibServiceInitializer(WorkerRequest $$) =>
    _$FibServiceWorkerService();

/// Worker for FibService
base class _$FibServiceWorker extends Worker implements FibService {
  _$FibServiceWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($FibServiceActivator(Squadron.platformType));

  _$FibServiceWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($FibServiceActivator(SquadronPlatformType.vm));

  _$FibServiceWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($FibServiceActivator(SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  @dc.override
  Future<dc.int> fibonacci(dc.int i) =>
      send(_$FibServiceWorkerService._$fibonacciId,
              args: [i], inspectRequest: true, inspectResponse: true)
          .then(_$X.$0);

  final dc.Object _detachToken = dc.Object();
}

/// Finalizable worker wrapper for FibService
base class FibServiceWorker with Releasable implements _$FibServiceWorker {
  FibServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  FibServiceWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : this._(_$FibServiceWorker(
            threadHook: threadHook, exceptionManager: exceptionManager));

  FibServiceWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : this._(_$FibServiceWorker.vm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  FibServiceWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : this._(_$FibServiceWorker.js(
            threadHook: threadHook, exceptionManager: exceptionManager));

  final _$FibServiceWorker _$worker;

  static final dc.Finalizer<_$FibServiceWorker> _finalizer =
      dc.Finalizer<_$FibServiceWorker>((w) {
    try {
      _finalizer.detach(w._detachToken);
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
  Future<dc.int> fibonacci(dc.int i) => _$worker.fibonacci(i);

  @dc.override
  dc.List get args => _$worker.args;

  @dc.override
  ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @dc.override
  Logger? get channelLogger => _$worker.channelLogger;

  @dc.override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @dc.override
  dc.Duration get idleTime => _$worker.idleTime;

  @dc.override
  dc.bool get isStopped => _$worker.isStopped;

  @dc.override
  dc.bool get isConnected => _$worker.isConnected;

  @dc.override
  dc.int get maxWorkload => _$worker.maxWorkload;

  @dc.override
  WorkerStat get stats => _$worker.stats;

  @dc.override
  dc.String get status => _$worker.status;

  @dc.override
  dc.int get totalErrors => _$worker.totalErrors;

  @dc.override
  dc.int get totalWorkload => _$worker.totalWorkload;

  @dc.override
  dc.Duration get upTime => _$worker.upTime;

  @dc.override
  dc.int get workload => _$worker.workload;

  @dc.override
  Future<Channel> start() => _$worker.start();

  @dc.override
  void stop() => _$worker.stop();

  @dc.override
  Channel? getSharedChannel() => _$worker.getSharedChannel();

  @dc.override
  Future<dc.dynamic> send(dc.int command,
          {dc.List args = const [],
          CancelationToken? token,
          dc.bool inspectRequest = false,
          dc.bool inspectResponse = false}) =>
      _$worker.send(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @dc.override
  Stream<dc.dynamic> stream(dc.int command,
          {dc.List args = const [],
          CancelationToken? token,
          dc.bool inspectRequest = false,
          dc.bool inspectResponse = false}) =>
      _$worker.stream(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @dc.override
  dc.Object get _detachToken => _$worker._detachToken;

  @dc.override
  final dc.Map<dc.int, CommandHandler> operations = WorkerService.noOperations;
}

/// Worker pool for FibService
base class _$FibServiceWorkerPool extends WorkerPool<FibServiceWorker>
    implements FibService {
  _$FibServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => FibServiceWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$FibServiceWorkerPool.vm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => FibServiceWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$FibServiceWorkerPool.js(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => FibServiceWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @dc.override
  Future<dc.int> fibonacci(dc.int i) => execute((w) => w.fibonacci(i));

  final dc.Object _detachToken = dc.Object();
}

/// Finalizable worker pool wrapper for FibService
base class FibServiceWorkerPool
    with Releasable
    implements _$FibServiceWorkerPool {
  FibServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  FibServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$FibServiceWorkerPool(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  FibServiceWorkerPool.vm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$FibServiceWorkerPool.vm(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  FibServiceWorkerPool.js(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$FibServiceWorkerPool.js(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$FibServiceWorkerPool _$pool;

  static final dc.Finalizer<_$FibServiceWorkerPool> _finalizer =
      dc.Finalizer<_$FibServiceWorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
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
  dc.int get maxConcurrency => _$pool.maxConcurrency;

  @dc.override
  dc.int get maxParallel => _$pool.maxParallel;

  @dc.override
  dc.int get maxSize => _$pool.maxSize;

  @dc.override
  dc.int get maxWorkers => _$pool.maxWorkers;

  @dc.override
  dc.int get maxWorkload => _$pool.maxWorkload;

  @dc.override
  dc.int get minWorkers => _$pool.minWorkers;

  @dc.override
  dc.int get pendingWorkload => _$pool.pendingWorkload;

  @dc.override
  dc.int get size => _$pool.size;

  @dc.override
  dc.Iterable<WorkerStat> get stats => _$pool.stats;

  @dc.override
  dc.bool get stopped => _$pool.stopped;

  @dc.override
  dc.int get totalErrors => _$pool.totalErrors;

  @dc.override
  dc.int get totalWorkload => _$pool.totalWorkload;

  @dc.override
  dc.int get workload => _$pool.workload;

  @dc.override
  void cancel([Task? task, dc.String? message]) => _$pool.cancel(task, message);

  @dc.override
  FutureOr<void> start() => _$pool.start();

  @dc.override
  dc.int stop([dc.bool Function(FibServiceWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @dc.override
  dc.Object registerWorkerPoolListener(
          void Function(FibServiceWorker worker, dc.bool removed) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @dc.override
  void unregisterWorkerPoolListener(
          {void Function(FibServiceWorker worker, dc.bool removed)? listener,
          dc.Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @dc.override
  Future<T> execute<T>(Future<T> Function(FibServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @dc.override
  Stream<T> stream<T>(Stream<T> Function(FibServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @dc.override
  StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(FibServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @dc.override
  ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(FibServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @dc.override
  dc.Object get _detachToken => _$pool._detachToken;

  @dc.override
  final dc.Map<dc.int, CommandHandler> operations = WorkerService.noOperations;
}

class _$X {
  static final $0 = Squadron.converter.value<dc.int>();
}
