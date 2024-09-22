// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../hello_world.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for HelloWorld
base class _$HelloWorldWorkerService extends HelloWorld
    implements WorkerService {
  _$HelloWorldWorkerService() : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$helloId: ($) => hello(_$X.$1($.args[0]), $.cancelToken),
  });

  static const int _$helloId = 1;
}

/// Service initializer for HelloWorld
WorkerService $HelloWorldInitializer(WorkerRequest $$) =>
    _$HelloWorldWorkerService();

/// Worker for HelloWorld
base class _$HelloWorldWorker extends Worker implements HelloWorld {
  _$HelloWorldWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($HelloWorldActivator(Squadron.platformType));

  _$HelloWorldWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($HelloWorldActivator(SquadronPlatformType.vm));

  _$HelloWorldWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($HelloWorldActivator(SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$HelloWorldWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($HelloWorldActivator(SquadronPlatformType.wasm));

  @override
  xxx.Future<String?> hello(
          [String? name = 'world', CancelationToken? token]) =>
      send(_$HelloWorldWorkerService._$helloId,
              args: [name],
              token: token,
              inspectRequest: true,
              inspectResponse: true)
          .then(_$X.$1);

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for HelloWorld
base class HelloWorldWorker with Releasable implements _$HelloWorldWorker {
  HelloWorldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  HelloWorldWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : this._(_$HelloWorldWorker(
            threadHook: threadHook, exceptionManager: exceptionManager));

  HelloWorldWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : this._(_$HelloWorldWorker.vm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  HelloWorldWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : this._(_$HelloWorldWorker.js(
            threadHook: threadHook, exceptionManager: exceptionManager));

  HelloWorldWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : this._(_$HelloWorldWorker.wasm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  final _$HelloWorldWorker _$worker;

  static final Finalizer<_$HelloWorldWorker> _finalizer =
      Finalizer<_$HelloWorldWorker>((w) {
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
  xxx.Future<String?> hello(
          [String? name = 'world', CancelationToken? token]) =>
      _$worker.hello(name, token);

  @override
  List get args => _$worker.args;

  @override
  ExceptionManager get exceptionManager => _$worker.exceptionManager;

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
  WorkerStat get stats => _$worker.stats;

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
  xxx.Future<Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  Channel? getSharedChannel() => _$worker.getSharedChannel();

  @override
  xxx.Future<dynamic> send(int command,
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
  xxx.Stream<dynamic> stream(int command,
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
  final Map<int, CommandHandler> operations = WorkerService.noOperations;
}

/// Worker pool for HelloWorld
base class _$HelloWorldWorkerPool extends WorkerPool<HelloWorldWorker>
    implements HelloWorld {
  _$HelloWorldWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => HelloWorldWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$HelloWorldWorkerPool.vm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => HelloWorldWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$HelloWorldWorkerPool.js(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => HelloWorldWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$HelloWorldWorkerPool.wasm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => HelloWorldWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  xxx.Future<String?> hello(
          [String? name = 'world', CancelationToken? token]) =>
      execute((w) => w.hello(name, token));

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for HelloWorld
base class HelloWorldWorkerPool
    with Releasable
    implements _$HelloWorldWorkerPool {
  HelloWorldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  HelloWorldWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$HelloWorldWorkerPool(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  HelloWorldWorkerPool.vm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$HelloWorldWorkerPool.vm(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  HelloWorldWorkerPool.js(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$HelloWorldWorkerPool.js(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  HelloWorldWorkerPool.wasm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$HelloWorldWorkerPool.wasm(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$HelloWorldWorkerPool _$pool;

  static final Finalizer<_$HelloWorldWorkerPool> _finalizer =
      Finalizer<_$HelloWorldWorkerPool>((p) {
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
  xxx.Future<String?> hello(
          [String? name = 'world', CancelationToken? token]) =>
      _$pool.hello(name, token);

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
  Iterable<WorkerStat> get stats => _$pool.stats;

  @override
  bool get stopped => _$pool.stopped;

  @override
  int get totalErrors => _$pool.totalErrors;

  @override
  int get totalWorkload => _$pool.totalWorkload;

  @override
  int get workload => _$pool.workload;

  @override
  void cancel([Task? task, String? message]) => _$pool.cancel(task, message);

  @override
  xxx.FutureOr<void> start() => _$pool.start();

  @override
  int stop([bool Function(HelloWorldWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(HelloWorldWorker worker, bool removed) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(HelloWorldWorker worker, bool removed)? listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  xxx.Future<T> execute<T>(xxx.Future<T> Function(HelloWorldWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  xxx.Stream<T> stream<T>(xxx.Stream<T> Function(HelloWorldWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStreamTask<T>(
          xxx.Stream<T> Function(HelloWorldWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleValueTask<T>(
          xxx.Future<T> Function(HelloWorldWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, CommandHandler> operations = WorkerService.noOperations;
}

class _$X {
  static final $0 = Squadron.converter.value<String>();
  static final $1 = Squadron.converter.nullable($0);
}
