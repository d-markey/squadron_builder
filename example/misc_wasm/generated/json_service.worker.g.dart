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
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$decodeId: ($) => decode(_$X.$0($.args[0])),
  });

  static const int _$decodeId = 1;
}

/// Service initializer for JsonService
sq.WorkerService $JsonServiceInitializer(sq.WorkerRequest $$) =>
    _$JsonServiceWorkerService();

/// Worker for JsonService
base class _$JsonServiceWorker extends sq.Worker implements JsonService {
  _$JsonServiceWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($JsonServiceActivator(sq.Squadron.platformType));

  _$JsonServiceWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($JsonServiceActivator(sq.SquadronPlatformType.wasm));

  @override
  Future<dynamic> decode(String source) =>
      send(_$JsonServiceWorkerService._$decodeId,
              args: [source], inspectRequest: true, inspectResponse: true)
          .then(_$X.$1);

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for JsonService
base class JsonServiceWorker with Releasable implements _$JsonServiceWorker {
  JsonServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  JsonServiceWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$JsonServiceWorker(
            threadHook: threadHook, exceptionManager: exceptionManager));

  JsonServiceWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$JsonServiceWorker.wasm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  final _$JsonServiceWorker _$worker;

  static final Finalizer<_$JsonServiceWorker> _finalizer =
      Finalizer<_$JsonServiceWorker>((w) {
    try {
      _finalizer.detach(w._detachToken);
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
  Future<dynamic> decode(String source) => _$worker.decode(source);

  @override
  List get args => _$worker.args;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  Duration get idleTime => _$worker.idleTime;

  @override
  bool get isStopped => _$worker.isStopped;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  int get maxWorkload => _$worker.maxWorkload;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  String get status => _$worker.status;

  @override
  int get totalErrors => _$worker.totalErrors;

  @override
  int get totalWorkload => _$worker.totalWorkload;

  @override
  Duration get upTime => _$worker.upTime;

  @override
  int get workload => _$worker.workload;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  sq.Channel? getSharedChannel() => _$worker.getSharedChannel();

  @override
  Future<dynamic> send(int command,
          {List args = const [],
          CancelationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _$worker.send(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<dynamic> stream(int command,
          {List args = const [],
          CancelationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _$worker.stream(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _$worker._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// Worker pool for JsonService
base class _$JsonServiceWorkerPool extends sq.WorkerPool<JsonServiceWorker>
    implements JsonService {
  _$JsonServiceWorkerPool(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => JsonServiceWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$JsonServiceWorkerPool.wasm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => JsonServiceWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Future<dynamic> decode(String source) => execute((w) => w.decode(source));

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for JsonService
base class JsonServiceWorkerPool
    with Releasable
    implements _$JsonServiceWorkerPool {
  JsonServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  JsonServiceWorkerPool(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$JsonServiceWorkerPool(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  JsonServiceWorkerPool.wasm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$JsonServiceWorkerPool.wasm(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$JsonServiceWorkerPool _$pool;

  static final Finalizer<_$JsonServiceWorkerPool> _finalizer =
      Finalizer<_$JsonServiceWorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
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
  int get maxConcurrency => _$pool.maxConcurrency;

  @override
  int get maxParallel => _$pool.maxParallel;

  @override
  int get maxSize => _$pool.maxSize;

  @override
  int get maxWorkers => _$pool.maxWorkers;

  @override
  int get maxWorkload => _$pool.maxWorkload;

  @override
  int get minWorkers => _$pool.minWorkers;

  @override
  int get pendingWorkload => _$pool.pendingWorkload;

  @override
  int get size => _$pool.size;

  @override
  Iterable<sq.WorkerStat> get stats => _$pool.stats;

  @override
  bool get stopped => _$pool.stopped;

  @override
  int get totalErrors => _$pool.totalErrors;

  @override
  int get totalWorkload => _$pool.totalWorkload;

  @override
  int get workload => _$pool.workload;

  @override
  void cancel([sq.Task? task, String? message]) => _$pool.cancel(task, message);

  @override
  FutureOr<void> start() => _$pool.start();

  @override
  int stop([bool Function(JsonServiceWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(JsonServiceWorker worker, bool removed) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(JsonServiceWorker worker, bool removed)? listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(JsonServiceWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(JsonServiceWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(JsonServiceWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(JsonServiceWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

class _$X {
  static final $0 = sq.Squadron.converter.value<String>();
  static final $1 = sq.Squadron.converter.value<dynamic>();
}
