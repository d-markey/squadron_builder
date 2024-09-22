// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../stream_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for StreamService
class _$StreamServiceWorkerService extends StreamService
    implements WorkerService {
  _$StreamServiceWorkerService() : super();

  @d.override
  late final d.Map<d.int, CommandHandler> operations =
      d.Map.unmodifiable(<d.int, CommandHandler>{
    _$clockId: ($) => clock(frequency: _$X.$0($.args[0]), token: $.cancelToken),
    _$infiniteClockId: ($) => infiniteClock(frequency: _$X.$0($.args[0])),
  });

  static const d.int _$clockId = 1;
  static const d.int _$infiniteClockId = 2;
}

/// Service initializer for StreamService
WorkerService $StreamServiceInitializer(WorkerRequest $$) =>
    _$StreamServiceWorkerService();

/// Worker for StreamService
base class _$StreamServiceWorker extends Worker implements StreamService {
  _$StreamServiceWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($StreamServiceActivator(Squadron.platformType));

  _$StreamServiceWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($StreamServiceActivator(SquadronPlatformType.vm));

  _$StreamServiceWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($StreamServiceActivator(SquadronPlatformType.wasm));

  @d.override
  Stream<d.int> clock({d.int frequency = 1, CancelationToken? token}) =>
      stream(_$StreamServiceWorkerService._$clockId,
              args: [frequency],
              token: token,
              inspectRequest: true,
              inspectResponse: true)
          .map(_$X.$0);

  @d.override
  Stream<d.int> infiniteClock({d.int frequency = 1}) =>
      stream(_$StreamServiceWorkerService._$infiniteClockId,
              args: [frequency], inspectRequest: true, inspectResponse: true)
          .map(_$X.$0);

  final d.Object _detachToken = d.Object();
}

/// Finalizable worker wrapper for StreamService
base class StreamServiceWorker
    with Releasable
    implements _$StreamServiceWorker {
  StreamServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  StreamServiceWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : this._(_$StreamServiceWorker(
            threadHook: threadHook, exceptionManager: exceptionManager));

  StreamServiceWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : this._(_$StreamServiceWorker.vm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  StreamServiceWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : this._(_$StreamServiceWorker.wasm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  final _$StreamServiceWorker _$worker;

  static final d.Finalizer<_$StreamServiceWorker> _finalizer =
      d.Finalizer<_$StreamServiceWorker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.release();
    } catch (_) {
      // finalizers must not throw
    }
  });

  @d.override
  void release() {
    try {
      _$worker.release();
      super.release();
    } catch (_) {
      // release should not throw
    }
  }

  @d.override
  Stream<d.int> clock({d.int frequency = 1, CancelationToken? token}) =>
      _$worker.clock(frequency: frequency, token: token);

  @d.override
  Stream<d.int> infiniteClock({d.int frequency = 1}) =>
      _$worker.infiniteClock(frequency: frequency);

  @d.override
  d.List get args => _$worker.args;

  @d.override
  ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @d.override
  Logger? get channelLogger => _$worker.channelLogger;

  @d.override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @d.override
  d.Duration get idleTime => _$worker.idleTime;

  @d.override
  d.bool get isStopped => _$worker.isStopped;

  @d.override
  d.bool get isConnected => _$worker.isConnected;

  @d.override
  d.int get maxWorkload => _$worker.maxWorkload;

  @d.override
  WorkerStat get stats => _$worker.stats;

  @d.override
  d.String get status => _$worker.status;

  @d.override
  d.int get totalErrors => _$worker.totalErrors;

  @d.override
  d.int get totalWorkload => _$worker.totalWorkload;

  @d.override
  d.Duration get upTime => _$worker.upTime;

  @d.override
  d.int get workload => _$worker.workload;

  @d.override
  Future<Channel> start() => _$worker.start();

  @d.override
  void stop() => _$worker.stop();

  @d.override
  Channel? getSharedChannel() => _$worker.getSharedChannel();

  @d.override
  Future<d.dynamic> send(d.int command,
          {d.List args = const [],
          CancelationToken? token,
          d.bool inspectRequest = false,
          d.bool inspectResponse = false}) =>
      _$worker.send(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @d.override
  Stream<d.dynamic> stream(d.int command,
          {d.List args = const [],
          CancelationToken? token,
          d.bool inspectRequest = false,
          d.bool inspectResponse = false}) =>
      _$worker.stream(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @d.override
  d.Object get _detachToken => _$worker._detachToken;

  @d.override
  final d.Map<d.int, CommandHandler> operations = WorkerService.noOperations;
}

/// Worker pool for StreamService
base class _$StreamServiceWorkerPool extends WorkerPool<StreamServiceWorker>
    implements StreamService {
  _$StreamServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => StreamServiceWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$StreamServiceWorkerPool.vm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => StreamServiceWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$StreamServiceWorkerPool.wasm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => StreamServiceWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @d.override
  Stream<d.int> clock({d.int frequency = 1, CancelationToken? token}) =>
      stream((w) => w.clock(frequency: frequency, token: token));

  @d.override
  Stream<d.int> infiniteClock({d.int frequency = 1}) =>
      stream((w) => w.infiniteClock(frequency: frequency));

  final d.Object _detachToken = d.Object();
}

/// Finalizable worker pool wrapper for StreamService
base class StreamServiceWorkerPool
    with Releasable
    implements _$StreamServiceWorkerPool {
  StreamServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  StreamServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$StreamServiceWorkerPool(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  StreamServiceWorkerPool.vm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$StreamServiceWorkerPool.vm(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  StreamServiceWorkerPool.wasm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$StreamServiceWorkerPool.wasm(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$StreamServiceWorkerPool _$pool;

  static final d.Finalizer<_$StreamServiceWorkerPool> _finalizer =
      d.Finalizer<_$StreamServiceWorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.release();
    } catch (_) {
      // finalizers must not throw
    }
  });

  @d.override
  void release() {
    try {
      _$pool.release();
      super.release();
    } catch (_) {
      // release should not throw
    }
  }

  @d.override
  Stream<d.int> clock({d.int frequency = 1, CancelationToken? token}) =>
      _$pool.clock(frequency: frequency, token: token);

  @d.override
  Stream<d.int> infiniteClock({d.int frequency = 1}) =>
      _$pool.infiniteClock(frequency: frequency);

  @d.override
  ExceptionManager get exceptionManager => _$pool.exceptionManager;

  @d.override
  Logger? get channelLogger => _$pool.channelLogger;

  @d.override
  set channelLogger(Logger? value) => _$pool.channelLogger = value;

  @d.override
  ConcurrencySettings get concurrencySettings => _$pool.concurrencySettings;

  @d.override
  d.Iterable<WorkerStat> get fullStats => _$pool.fullStats;

  @d.override
  d.int get maxConcurrency => _$pool.maxConcurrency;

  @d.override
  d.int get maxParallel => _$pool.maxParallel;

  @d.override
  d.int get maxSize => _$pool.maxSize;

  @d.override
  d.int get maxWorkers => _$pool.maxWorkers;

  @d.override
  d.int get maxWorkload => _$pool.maxWorkload;

  @d.override
  d.int get minWorkers => _$pool.minWorkers;

  @d.override
  d.int get pendingWorkload => _$pool.pendingWorkload;

  @d.override
  d.int get size => _$pool.size;

  @d.override
  d.Iterable<WorkerStat> get stats => _$pool.stats;

  @d.override
  d.bool get stopped => _$pool.stopped;

  @d.override
  d.int get totalErrors => _$pool.totalErrors;

  @d.override
  d.int get totalWorkload => _$pool.totalWorkload;

  @d.override
  d.int get workload => _$pool.workload;

  @d.override
  void cancel([Task? task, d.String? message]) => _$pool.cancel(task, message);

  @d.override
  FutureOr<void> start() => _$pool.start();

  @d.override
  d.int stop([d.bool Function(StreamServiceWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @d.override
  d.Object registerWorkerPoolListener(
          void Function(StreamServiceWorker worker, d.bool removed) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @d.override
  void unregisterWorkerPoolListener(
          {void Function(StreamServiceWorker worker, d.bool removed)? listener,
          d.Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @d.override
  Future<T> execute<T>(Future<T> Function(StreamServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @d.override
  Stream<T> stream<T>(Stream<T> Function(StreamServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @d.override
  StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(StreamServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @d.override
  ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(StreamServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @d.override
  d.Object get _detachToken => _$pool._detachToken;

  @d.override
  final d.Map<d.int, CommandHandler> operations = WorkerService.noOperations;
}

class _$X {
  static final $0 = Squadron.converter.value<d.int>();
}
