// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../test_services.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for TestParameterLess
class _$TestParameterLessWorkerService extends TestParameterLess
    implements sq.WorkerService {
  _$TestParameterLessWorkerService() : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestParameterLess
sq.WorkerService $TestParameterLessInitializer(sq.WorkerRequest $$) =>
    _$TestParameterLessWorkerService();

/// Worker for TestParameterLess
base class _$TestParameterLessWorker extends sq.Worker
    implements TestParameterLess {
  _$TestParameterLessWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.Squadron.platformType));

  _$TestParameterLessWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.SquadronPlatformType.vm));

  _$TestParameterLessWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestParameterLessWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.SquadronPlatformType.wasm));

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestParameterLess
base class TestParameterLessWorker
    with Releasable
    implements _$TestParameterLessWorker {
  TestParameterLessWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestParameterLessWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestParameterLessWorker(
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestParameterLessWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestParameterLessWorker.vm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestParameterLessWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestParameterLessWorker.js(
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestParameterLessWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestParameterLessWorker.wasm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  final _$TestParameterLessWorker _$worker;

  static final Finalizer<_$TestParameterLessWorker> _finalizer =
      Finalizer<_$TestParameterLessWorker>((w) {
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

/// Worker pool for TestParameterLess
base class _$TestParameterLessWorkerPool extends sq
    .WorkerPool<TestParameterLessWorker> implements TestParameterLess {
  _$TestParameterLessWorkerPool(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestParameterLessWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestParameterLessWorkerPool.vm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestParameterLessWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestParameterLessWorkerPool.js(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestParameterLessWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestParameterLessWorkerPool.wasm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestParameterLessWorker.wasm(
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestParameterLess
base class TestParameterLessWorkerPool
    with Releasable
    implements _$TestParameterLessWorkerPool {
  TestParameterLessWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestParameterLessWorkerPool(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestParameterLessWorkerPool(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestParameterLessWorkerPool.vm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestParameterLessWorkerPool.vm(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestParameterLessWorkerPool.js(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestParameterLessWorkerPool.js(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestParameterLessWorkerPool.wasm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestParameterLessWorkerPool.wasm(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestParameterLessWorkerPool _$pool;

  static final Finalizer<_$TestParameterLessWorkerPool> _finalizer =
      Finalizer<_$TestParameterLessWorkerPool>((p) {
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
  int stop([bool Function(TestParameterLessWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestParameterLessWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestParameterLessWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestParameterLessWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestParameterLessWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestParameterLessWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestParameterLessWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestReqPositional
class _$TestReqPositionalWorkerService extends TestReqPositional
    implements sq.WorkerService {
  _$TestReqPositionalWorkerService(super.arg1) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestReqPositional
sq.WorkerService $TestReqPositionalInitializer(sq.WorkerRequest $$) =>
    _$TestReqPositionalWorkerService(_$X.$0($$.args[0]));

/// Worker for TestReqPositional
base class _$TestReqPositionalWorker extends sq.Worker
    implements TestReqPositional {
  _$TestReqPositionalWorker(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestReqPositionalWorker.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestReqPositionalWorker.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestReqPositionalWorker.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestReqPositional
base class TestReqPositionalWorker
    with Releasable
    implements _$TestReqPositionalWorker {
  TestReqPositionalWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestReqPositionalWorker(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalWorker(arg1,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestReqPositionalWorker.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalWorker.vm(arg1,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestReqPositionalWorker.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalWorker.js(arg1,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestReqPositionalWorker.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalWorker.wasm(arg1,
            threadHook: threadHook, exceptionManager: exceptionManager));

  final _$TestReqPositionalWorker _$worker;

  static final Finalizer<_$TestReqPositionalWorker> _finalizer =
      Finalizer<_$TestReqPositionalWorker>((w) {
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

/// Worker pool for TestReqPositional
base class _$TestReqPositionalWorkerPool extends sq
    .WorkerPool<TestReqPositionalWorker> implements TestReqPositional {
  _$TestReqPositionalWorkerPool(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestReqPositionalWorker(
              arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestReqPositionalWorkerPool.vm(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestReqPositionalWorker.vm(
              arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestReqPositionalWorkerPool.js(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestReqPositionalWorker.js(
              arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestReqPositionalWorkerPool.wasm(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalWorker.wasm(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestReqPositional
base class TestReqPositionalWorkerPool
    with Releasable
    implements _$TestReqPositionalWorkerPool {
  TestReqPositionalWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestReqPositionalWorkerPool(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalWorkerPool(arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestReqPositionalWorkerPool.vm(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalWorkerPool.vm(arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestReqPositionalWorkerPool.js(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalWorkerPool.js(arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestReqPositionalWorkerPool.wasm(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalWorkerPool.wasm(arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestReqPositionalWorkerPool _$pool;

  static final Finalizer<_$TestReqPositionalWorkerPool> _finalizer =
      Finalizer<_$TestReqPositionalWorkerPool>((p) {
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
  int stop([bool Function(TestReqPositionalWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestReqPositionalWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestReqPositionalWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestReqPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestReqPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestReqPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestReqPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptNullPositional
class _$TestOptNullPositionalWorkerService extends TestOptNullPositional
    implements sq.WorkerService {
  _$TestOptNullPositionalWorkerService([super.arg1]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullPositional
sq.WorkerService $TestOptNullPositionalInitializer(sq.WorkerRequest $$) =>
    _$TestOptNullPositionalWorkerService(_$X.$1($$.args[0]));

/// Worker for TestOptNullPositional
base class _$TestOptNullPositionalWorker extends sq.Worker
    implements TestOptNullPositional {
  _$TestOptNullPositionalWorker(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptNullPositionalWorker.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptNullPositionalWorker.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalWorker.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullPositional
base class TestOptNullPositionalWorker
    with Releasable
    implements _$TestOptNullPositionalWorker {
  TestOptNullPositionalWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptNullPositionalWorker(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(
            _$TestOptNullPositionalWorker(arg1, threadHook, exceptionManager));

  TestOptNullPositionalWorker.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalWorker.vm(
            arg1, threadHook, exceptionManager));

  TestOptNullPositionalWorker.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalWorker.js(
            arg1, threadHook, exceptionManager));

  TestOptNullPositionalWorker.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalWorker.wasm(
            arg1, threadHook, exceptionManager));

  final _$TestOptNullPositionalWorker _$worker;

  static final Finalizer<_$TestOptNullPositionalWorker> _finalizer =
      Finalizer<_$TestOptNullPositionalWorker>((w) {
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

/// Worker pool for TestOptNullPositional
base class _$TestOptNullPositionalWorkerPool extends sq
    .WorkerPool<TestOptNullPositionalWorker> implements TestOptNullPositional {
  _$TestOptNullPositionalWorkerPool(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalWorker(arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullPositionalWorkerPool.vm(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullPositionalWorkerPool.js(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullPositionalWorkerPool.wasm(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullPositional
base class TestOptNullPositionalWorkerPool
    with Releasable
    implements _$TestOptNullPositionalWorkerPool {
  TestOptNullPositionalWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptNullPositionalWorkerPool(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalWorkerPool(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullPositionalWorkerPool.vm(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalWorkerPool.vm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullPositionalWorkerPool.js(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalWorkerPool.js(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullPositionalWorkerPool.wasm(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalWorkerPool.wasm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  final _$TestOptNullPositionalWorkerPool _$pool;

  static final Finalizer<_$TestOptNullPositionalWorkerPool> _finalizer =
      Finalizer<_$TestOptNullPositionalWorkerPool>((p) {
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
  int stop([bool Function(TestOptNullPositionalWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptNullPositionalWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestOptNullPositionalWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptNullPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptNullPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptNullPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptNullPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptDefPositional
class _$TestOptDefPositionalWorkerService extends TestOptDefPositional
    implements sq.WorkerService {
  _$TestOptDefPositionalWorkerService([super.arg1 = 0]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefPositional
sq.WorkerService $TestOptDefPositionalInitializer(sq.WorkerRequest $$) =>
    _$TestOptDefPositionalWorkerService(_$X.$0($$.args[0]));

/// Worker for TestOptDefPositional
base class _$TestOptDefPositionalWorker extends sq.Worker
    implements TestOptDefPositional {
  _$TestOptDefPositionalWorker(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptDefPositionalWorker.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptDefPositionalWorker.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalWorker.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptDefPositional
base class TestOptDefPositionalWorker
    with Releasable
    implements _$TestOptDefPositionalWorker {
  TestOptDefPositionalWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptDefPositionalWorker(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(
            _$TestOptDefPositionalWorker(arg1, threadHook, exceptionManager));

  TestOptDefPositionalWorker.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalWorker.vm(
            arg1, threadHook, exceptionManager));

  TestOptDefPositionalWorker.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalWorker.js(
            arg1, threadHook, exceptionManager));

  TestOptDefPositionalWorker.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalWorker.wasm(
            arg1, threadHook, exceptionManager));

  final _$TestOptDefPositionalWorker _$worker;

  static final Finalizer<_$TestOptDefPositionalWorker> _finalizer =
      Finalizer<_$TestOptDefPositionalWorker>((w) {
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

/// Worker pool for TestOptDefPositional
base class _$TestOptDefPositionalWorkerPool extends sq
    .WorkerPool<TestOptDefPositionalWorker> implements TestOptDefPositional {
  _$TestOptDefPositionalWorkerPool(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalWorker(arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefPositionalWorkerPool.vm(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalWorker.vm(arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefPositionalWorkerPool.js(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalWorker.js(arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefPositionalWorkerPool.wasm(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptDefPositional
base class TestOptDefPositionalWorkerPool
    with Releasable
    implements _$TestOptDefPositionalWorkerPool {
  TestOptDefPositionalWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptDefPositionalWorkerPool(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalWorkerPool(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptDefPositionalWorkerPool.vm(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalWorkerPool.vm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptDefPositionalWorkerPool.js(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalWorkerPool.js(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptDefPositionalWorkerPool.wasm(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalWorkerPool.wasm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  final _$TestOptDefPositionalWorkerPool _$pool;

  static final Finalizer<_$TestOptDefPositionalWorkerPool> _finalizer =
      Finalizer<_$TestOptDefPositionalWorkerPool>((p) {
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
  int stop([bool Function(TestOptDefPositionalWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptDefPositionalWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestOptDefPositionalWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptDefPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptDefPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptDefPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptDefPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptNullDefPositional
class _$TestOptNullDefPositionalWorkerService extends TestOptNullDefPositional
    implements sq.WorkerService {
  _$TestOptNullDefPositionalWorkerService([super.arg1 = 0]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositional
sq.WorkerService $TestOptNullDefPositionalInitializer(sq.WorkerRequest $$) =>
    _$TestOptNullDefPositionalWorkerService(_$X.$1($$.args[0]));

/// Worker for TestOptNullDefPositional
base class _$TestOptNullDefPositionalWorker extends sq.Worker
    implements TestOptNullDefPositional {
  _$TestOptNullDefPositionalWorker(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullDefPositionalActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptNullDefPositionalWorker.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullDefPositionalActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptNullDefPositionalWorker.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullDefPositionalActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalWorker.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullDefPositionalActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullDefPositional
base class TestOptNullDefPositionalWorker
    with Releasable
    implements _$TestOptNullDefPositionalWorker {
  TestOptNullDefPositionalWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptNullDefPositionalWorker(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalWorker(
            arg1, threadHook, exceptionManager));

  TestOptNullDefPositionalWorker.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalWorker.vm(
            arg1, threadHook, exceptionManager));

  TestOptNullDefPositionalWorker.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalWorker.js(
            arg1, threadHook, exceptionManager));

  TestOptNullDefPositionalWorker.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalWorker.wasm(
            arg1, threadHook, exceptionManager));

  final _$TestOptNullDefPositionalWorker _$worker;

  static final Finalizer<_$TestOptNullDefPositionalWorker> _finalizer =
      Finalizer<_$TestOptNullDefPositionalWorker>((w) {
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

/// Worker pool for TestOptNullDefPositional
base class _$TestOptNullDefPositionalWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalWorker>
    implements TestOptNullDefPositional {
  _$TestOptNullDefPositionalWorkerPool(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalWorker(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefPositionalWorkerPool.vm(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefPositionalWorkerPool.js(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefPositionalWorkerPool.wasm(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullDefPositional
base class TestOptNullDefPositionalWorkerPool
    with Releasable
    implements _$TestOptNullDefPositionalWorkerPool {
  TestOptNullDefPositionalWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptNullDefPositionalWorkerPool(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalWorkerPool(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullDefPositionalWorkerPool.vm(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalWorkerPool.vm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullDefPositionalWorkerPool.js(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalWorkerPool.js(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullDefPositionalWorkerPool.wasm(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalWorkerPool.wasm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  final _$TestOptNullDefPositionalWorkerPool _$pool;

  static final Finalizer<_$TestOptNullDefPositionalWorkerPool> _finalizer =
      Finalizer<_$TestOptNullDefPositionalWorkerPool>((p) {
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
  int stop([bool Function(TestOptNullDefPositionalWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptNullDefPositionalWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestOptNullDefPositionalWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptNullDefPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptNullDefPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptNullDefPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptNullDefPositionalWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestReqPositionalField
class _$TestReqPositionalFieldWorkerService extends TestReqPositionalField
    implements sq.WorkerService {
  _$TestReqPositionalFieldWorkerService(super.arg1) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestReqPositionalField
sq.WorkerService $TestReqPositionalFieldInitializer(sq.WorkerRequest $$) =>
    _$TestReqPositionalFieldWorkerService(_$X.$0($$.args[0]));

/// Worker for TestReqPositionalField
base class _$TestReqPositionalFieldWorker extends sq.Worker
    implements TestReqPositionalField {
  _$TestReqPositionalFieldWorker(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestReqPositionalFieldWorker.vm(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestReqPositionalFieldWorker.js(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestReqPositionalFieldWorker.wasm(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalFieldActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  final int arg1;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestReqPositionalField
base class TestReqPositionalFieldWorker
    with Releasable
    implements _$TestReqPositionalFieldWorker {
  TestReqPositionalFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestReqPositionalFieldWorker(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalFieldWorker(arg1,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestReqPositionalFieldWorker.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalFieldWorker.vm(arg1,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestReqPositionalFieldWorker.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalFieldWorker.js(arg1,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestReqPositionalFieldWorker.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalFieldWorker.wasm(arg1,
            threadHook: threadHook, exceptionManager: exceptionManager));

  @override
  int get arg1 => _$worker.arg1;

  final _$TestReqPositionalFieldWorker _$worker;

  static final Finalizer<_$TestReqPositionalFieldWorker> _finalizer =
      Finalizer<_$TestReqPositionalFieldWorker>((w) {
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

/// Worker pool for TestReqPositionalField
base class _$TestReqPositionalFieldWorkerPool
    extends sq.WorkerPool<TestReqPositionalFieldWorker>
    implements TestReqPositionalField {
  _$TestReqPositionalFieldWorkerPool(this.arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalFieldWorker(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestReqPositionalFieldWorkerPool.vm(this.arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalFieldWorker.vm(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestReqPositionalFieldWorkerPool.js(this.arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalFieldWorker.js(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestReqPositionalFieldWorkerPool.wasm(this.arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalFieldWorker.wasm(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final int arg1;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestReqPositionalField
base class TestReqPositionalFieldWorkerPool
    with Releasable
    implements _$TestReqPositionalFieldWorkerPool {
  TestReqPositionalFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestReqPositionalFieldWorkerPool(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalFieldWorkerPool(arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestReqPositionalFieldWorkerPool.vm(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalFieldWorkerPool.vm(arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestReqPositionalFieldWorkerPool.js(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalFieldWorkerPool.js(arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestReqPositionalFieldWorkerPool.wasm(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalFieldWorkerPool.wasm(arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  @override
  int get arg1 => _$pool.arg1;

  final _$TestReqPositionalFieldWorkerPool _$pool;

  static final Finalizer<_$TestReqPositionalFieldWorkerPool> _finalizer =
      Finalizer<_$TestReqPositionalFieldWorkerPool>((p) {
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
  int stop([bool Function(TestReqPositionalFieldWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestReqPositionalFieldWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestReqPositionalFieldWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestReqPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestReqPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestReqPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestReqPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptNullPositionalField
class _$TestOptNullPositionalFieldWorkerService
    extends TestOptNullPositionalField implements sq.WorkerService {
  _$TestOptNullPositionalFieldWorkerService([super.arg1]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullPositionalField
sq.WorkerService $TestOptNullPositionalFieldInitializer(sq.WorkerRequest $$) =>
    _$TestOptNullPositionalFieldWorkerService(_$X.$1($$.args[0]));

/// Worker for TestOptNullPositionalField
base class _$TestOptNullPositionalFieldWorker extends sq.Worker
    implements TestOptNullPositionalField {
  _$TestOptNullPositionalFieldWorker(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptNullPositionalFieldWorker.vm(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptNullPositionalFieldWorker.js(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalFieldWorker.wasm(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullPositionalFieldActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  final int? arg1;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullPositionalField
base class TestOptNullPositionalFieldWorker
    with Releasable
    implements _$TestOptNullPositionalFieldWorker {
  TestOptNullPositionalFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptNullPositionalFieldWorker(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalFieldWorker(
            arg1, threadHook, exceptionManager));

  TestOptNullPositionalFieldWorker.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalFieldWorker.vm(
            arg1, threadHook, exceptionManager));

  TestOptNullPositionalFieldWorker.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalFieldWorker.js(
            arg1, threadHook, exceptionManager));

  TestOptNullPositionalFieldWorker.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalFieldWorker.wasm(
            arg1, threadHook, exceptionManager));

  @override
  int? get arg1 => _$worker.arg1;

  final _$TestOptNullPositionalFieldWorker _$worker;

  static final Finalizer<_$TestOptNullPositionalFieldWorker> _finalizer =
      Finalizer<_$TestOptNullPositionalFieldWorker>((w) {
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

/// Worker pool for TestOptNullPositionalField
base class _$TestOptNullPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptNullPositionalFieldWorker>
    implements TestOptNullPositionalField {
  _$TestOptNullPositionalFieldWorkerPool(
      [this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalFieldWorker(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullPositionalFieldWorkerPool.vm(
      [this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalFieldWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullPositionalFieldWorkerPool.js(
      [this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalFieldWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullPositionalFieldWorkerPool.wasm(
      [this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalFieldWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final int? arg1;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullPositionalField
base class TestOptNullPositionalFieldWorkerPool
    with Releasable
    implements _$TestOptNullPositionalFieldWorkerPool {
  TestOptNullPositionalFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptNullPositionalFieldWorkerPool(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalFieldWorkerPool(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullPositionalFieldWorkerPool.vm(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalFieldWorkerPool.vm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullPositionalFieldWorkerPool.js(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalFieldWorkerPool.js(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullPositionalFieldWorkerPool.wasm(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalFieldWorkerPool.wasm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  @override
  int? get arg1 => _$pool.arg1;

  final _$TestOptNullPositionalFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullPositionalFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptNullPositionalFieldWorkerPool>((p) {
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
  int stop(
          [bool Function(TestOptNullPositionalFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptNullPositionalFieldWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestOptNullPositionalFieldWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptNullPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptNullPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptNullPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptNullPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptDefPositionalField
class _$TestOptDefPositionalFieldWorkerService extends TestOptDefPositionalField
    implements sq.WorkerService {
  _$TestOptDefPositionalFieldWorkerService([super.arg1 = 0]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefPositionalField
sq.WorkerService $TestOptDefPositionalFieldInitializer(sq.WorkerRequest $$) =>
    _$TestOptDefPositionalFieldWorkerService(_$X.$0($$.args[0]));

/// Worker for TestOptDefPositionalField
base class _$TestOptDefPositionalFieldWorker extends sq.Worker
    implements TestOptDefPositionalField {
  _$TestOptDefPositionalFieldWorker(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptDefPositionalFieldWorker.vm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptDefPositionalFieldWorker.js(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalFieldWorker.wasm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalFieldActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  final int arg1;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptDefPositionalField
base class TestOptDefPositionalFieldWorker
    with Releasable
    implements _$TestOptDefPositionalFieldWorker {
  TestOptDefPositionalFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptDefPositionalFieldWorker(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalFieldWorker(
            arg1, threadHook, exceptionManager));

  TestOptDefPositionalFieldWorker.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalFieldWorker.vm(
            arg1, threadHook, exceptionManager));

  TestOptDefPositionalFieldWorker.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalFieldWorker.js(
            arg1, threadHook, exceptionManager));

  TestOptDefPositionalFieldWorker.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalFieldWorker.wasm(
            arg1, threadHook, exceptionManager));

  @override
  int get arg1 => _$worker.arg1;

  final _$TestOptDefPositionalFieldWorker _$worker;

  static final Finalizer<_$TestOptDefPositionalFieldWorker> _finalizer =
      Finalizer<_$TestOptDefPositionalFieldWorker>((w) {
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

/// Worker pool for TestOptDefPositionalField
base class _$TestOptDefPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptDefPositionalFieldWorker>
    implements TestOptDefPositionalField {
  _$TestOptDefPositionalFieldWorkerPool(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalFieldWorker(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefPositionalFieldWorkerPool.vm(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalFieldWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefPositionalFieldWorkerPool.js(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalFieldWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefPositionalFieldWorkerPool.wasm(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalFieldWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final int arg1;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptDefPositionalField
base class TestOptDefPositionalFieldWorkerPool
    with Releasable
    implements _$TestOptDefPositionalFieldWorkerPool {
  TestOptDefPositionalFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptDefPositionalFieldWorkerPool(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalFieldWorkerPool(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptDefPositionalFieldWorkerPool.vm(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalFieldWorkerPool.vm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptDefPositionalFieldWorkerPool.js(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalFieldWorkerPool.js(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptDefPositionalFieldWorkerPool.wasm(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalFieldWorkerPool.wasm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  @override
  int get arg1 => _$pool.arg1;

  final _$TestOptDefPositionalFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptDefPositionalFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptDefPositionalFieldWorkerPool>((p) {
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
  int stop(
          [bool Function(TestOptDefPositionalFieldWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptDefPositionalFieldWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestOptDefPositionalFieldWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptDefPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptDefPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptDefPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptDefPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptNullDefPositionalField
class _$TestOptNullDefPositionalFieldWorkerService
    extends TestOptNullDefPositionalField implements sq.WorkerService {
  _$TestOptNullDefPositionalFieldWorkerService([super.arg1 = 0]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositionalField
sq.WorkerService $TestOptNullDefPositionalFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestOptNullDefPositionalFieldWorkerService(_$X.$1($$.args[0]));

/// Worker for TestOptNullDefPositionalField
base class _$TestOptNullDefPositionalFieldWorker extends sq.Worker
    implements TestOptNullDefPositionalField {
  _$TestOptNullDefPositionalFieldWorker(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullDefPositionalFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptNullDefPositionalFieldWorker.vm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptNullDefPositionalFieldWorker.js(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalFieldWorker.wasm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  final int? arg1;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullDefPositionalField
base class TestOptNullDefPositionalFieldWorker
    with Releasable
    implements _$TestOptNullDefPositionalFieldWorker {
  TestOptNullDefPositionalFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptNullDefPositionalFieldWorker(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalFieldWorker(
            arg1, threadHook, exceptionManager));

  TestOptNullDefPositionalFieldWorker.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalFieldWorker.vm(
            arg1, threadHook, exceptionManager));

  TestOptNullDefPositionalFieldWorker.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalFieldWorker.js(
            arg1, threadHook, exceptionManager));

  TestOptNullDefPositionalFieldWorker.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalFieldWorker.wasm(
            arg1, threadHook, exceptionManager));

  @override
  int? get arg1 => _$worker.arg1;

  final _$TestOptNullDefPositionalFieldWorker _$worker;

  static final Finalizer<_$TestOptNullDefPositionalFieldWorker> _finalizer =
      Finalizer<_$TestOptNullDefPositionalFieldWorker>((w) {
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

/// Worker pool for TestOptNullDefPositionalField
base class _$TestOptNullDefPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalFieldWorker>
    implements TestOptNullDefPositionalField {
  _$TestOptNullDefPositionalFieldWorkerPool(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalFieldWorker(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefPositionalFieldWorkerPool.vm(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalFieldWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefPositionalFieldWorkerPool.js(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalFieldWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefPositionalFieldWorkerPool.wasm(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalFieldWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final int? arg1;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullDefPositionalField
base class TestOptNullDefPositionalFieldWorkerPool
    with Releasable
    implements _$TestOptNullDefPositionalFieldWorkerPool {
  TestOptNullDefPositionalFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptNullDefPositionalFieldWorkerPool(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalFieldWorkerPool(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullDefPositionalFieldWorkerPool.vm(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalFieldWorkerPool.vm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullDefPositionalFieldWorkerPool.js(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalFieldWorkerPool.js(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullDefPositionalFieldWorkerPool.wasm(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalFieldWorkerPool.wasm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  @override
  int? get arg1 => _$pool.arg1;

  final _$TestOptNullDefPositionalFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullDefPositionalFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptNullDefPositionalFieldWorkerPool>((p) {
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
  int stop(
          [bool Function(TestOptNullDefPositionalFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(
                  TestOptNullDefPositionalFieldWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(
                  TestOptNullDefPositionalFieldWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptNullDefPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptNullDefPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptNullDefPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptNullDefPositionalFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestReqPositionalPrivateField
class _$TestReqPositionalPrivateFieldWorkerService
    extends TestReqPositionalPrivateField implements sq.WorkerService {
  _$TestReqPositionalPrivateFieldWorkerService(super.arg1) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestReqPositionalPrivateField
sq.WorkerService $TestReqPositionalPrivateFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestReqPositionalPrivateFieldWorkerService(_$X.$0($$.args[0]));

/// Worker for TestReqPositionalPrivateField
base class _$TestReqPositionalPrivateFieldWorker extends sq.Worker
    implements TestReqPositionalPrivateField {
  _$TestReqPositionalPrivateFieldWorker(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalPrivateFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestReqPositionalPrivateFieldWorker.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestReqPositionalPrivateFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestReqPositionalPrivateFieldWorker.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestReqPositionalPrivateFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestReqPositionalPrivateFieldWorker.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestReqPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestReqPositionalPrivateField
base class TestReqPositionalPrivateFieldWorker
    with Releasable
    implements _$TestReqPositionalPrivateFieldWorker {
  TestReqPositionalPrivateFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestReqPositionalPrivateFieldWorker(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalPrivateFieldWorker(arg1,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestReqPositionalPrivateFieldWorker.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalPrivateFieldWorker.vm(arg1,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestReqPositionalPrivateFieldWorker.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalPrivateFieldWorker.js(arg1,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestReqPositionalPrivateFieldWorker.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalPrivateFieldWorker.wasm(arg1,
            threadHook: threadHook, exceptionManager: exceptionManager));

  final _$TestReqPositionalPrivateFieldWorker _$worker;

  static final Finalizer<_$TestReqPositionalPrivateFieldWorker> _finalizer =
      Finalizer<_$TestReqPositionalPrivateFieldWorker>((w) {
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
  int get _arg1 => _$worker._arg1;

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

/// Worker pool for TestReqPositionalPrivateField
base class _$TestReqPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestReqPositionalPrivateFieldWorker>
    implements TestReqPositionalPrivateField {
  _$TestReqPositionalPrivateFieldWorkerPool(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalPrivateFieldWorker(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestReqPositionalPrivateFieldWorkerPool.vm(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalPrivateFieldWorker.vm(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestReqPositionalPrivateFieldWorkerPool.js(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalPrivateFieldWorker.js(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestReqPositionalPrivateFieldWorkerPool.wasm(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalPrivateFieldWorker.wasm(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestReqPositionalPrivateField
base class TestReqPositionalPrivateFieldWorkerPool
    with Releasable
    implements _$TestReqPositionalPrivateFieldWorkerPool {
  TestReqPositionalPrivateFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestReqPositionalPrivateFieldWorkerPool(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalPrivateFieldWorkerPool(arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestReqPositionalPrivateFieldWorkerPool.vm(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalPrivateFieldWorkerPool.vm(arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestReqPositionalPrivateFieldWorkerPool.js(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalPrivateFieldWorkerPool.js(arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestReqPositionalPrivateFieldWorkerPool.wasm(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestReqPositionalPrivateFieldWorkerPool.wasm(arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestReqPositionalPrivateFieldWorkerPool _$pool;

  static final Finalizer<_$TestReqPositionalPrivateFieldWorkerPool> _finalizer =
      Finalizer<_$TestReqPositionalPrivateFieldWorkerPool>((p) {
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
  int get _arg1 => _$pool._arg1;

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
  int stop(
          [bool Function(TestReqPositionalPrivateFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(
                  TestReqPositionalPrivateFieldWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(
                  TestReqPositionalPrivateFieldWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestReqPositionalPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestReqPositionalPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestReqPositionalPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestReqPositionalPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptNullPositionalPrivateField
class _$TestOptNullPositionalPrivateFieldWorkerService
    extends TestOptNullPositionalPrivateField implements sq.WorkerService {
  _$TestOptNullPositionalPrivateFieldWorkerService([super.arg1]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullPositionalPrivateField
sq.WorkerService $TestOptNullPositionalPrivateFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestOptNullPositionalPrivateFieldWorkerService(_$X.$1($$.args[0]));

/// Worker for TestOptNullPositionalPrivateField
base class _$TestOptNullPositionalPrivateFieldWorker extends sq.Worker
    implements TestOptNullPositionalPrivateField {
  _$TestOptNullPositionalPrivateFieldWorker(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptNullPositionalPrivateFieldWorker.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptNullPositionalPrivateFieldWorker.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalPrivateFieldWorker.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullPositionalPrivateField
base class TestOptNullPositionalPrivateFieldWorker
    with Releasable
    implements _$TestOptNullPositionalPrivateFieldWorker {
  TestOptNullPositionalPrivateFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptNullPositionalPrivateFieldWorker(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalPrivateFieldWorker(
            arg1, threadHook, exceptionManager));

  TestOptNullPositionalPrivateFieldWorker.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalPrivateFieldWorker.vm(
            arg1, threadHook, exceptionManager));

  TestOptNullPositionalPrivateFieldWorker.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalPrivateFieldWorker.js(
            arg1, threadHook, exceptionManager));

  TestOptNullPositionalPrivateFieldWorker.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalPrivateFieldWorker.wasm(
            arg1, threadHook, exceptionManager));

  final _$TestOptNullPositionalPrivateFieldWorker _$worker;

  static final Finalizer<_$TestOptNullPositionalPrivateFieldWorker> _finalizer =
      Finalizer<_$TestOptNullPositionalPrivateFieldWorker>((w) {
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
  int? get _arg1 => _$worker._arg1;

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

/// Worker pool for TestOptNullPositionalPrivateField
base class _$TestOptNullPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullPositionalPrivateFieldWorker>
    implements TestOptNullPositionalPrivateField {
  _$TestOptNullPositionalPrivateFieldWorkerPool(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalPrivateFieldWorker(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullPositionalPrivateFieldWorkerPool.vm(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalPrivateFieldWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullPositionalPrivateFieldWorkerPool.js(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalPrivateFieldWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullPositionalPrivateFieldWorkerPool.wasm(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalPrivateFieldWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullPositionalPrivateField
base class TestOptNullPositionalPrivateFieldWorkerPool
    with Releasable
    implements _$TestOptNullPositionalPrivateFieldWorkerPool {
  TestOptNullPositionalPrivateFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptNullPositionalPrivateFieldWorkerPool(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalPrivateFieldWorkerPool(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullPositionalPrivateFieldWorkerPool.vm(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalPrivateFieldWorkerPool.vm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullPositionalPrivateFieldWorkerPool.js(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalPrivateFieldWorkerPool.js(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullPositionalPrivateFieldWorkerPool.wasm(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullPositionalPrivateFieldWorkerPool.wasm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  final _$TestOptNullPositionalPrivateFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullPositionalPrivateFieldWorkerPool>
      _finalizer =
      Finalizer<_$TestOptNullPositionalPrivateFieldWorkerPool>((p) {
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
  int? get _arg1 => _$pool._arg1;

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
  int stop(
          [bool Function(TestOptNullPositionalPrivateFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(
                  TestOptNullPositionalPrivateFieldWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(
                  TestOptNullPositionalPrivateFieldWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptNullPositionalPrivateFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptNullPositionalPrivateFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptNullPositionalPrivateFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptNullPositionalPrivateFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptDefPositionalPrivateField
class _$TestOptDefPositionalPrivateFieldWorkerService
    extends TestOptDefPositionalPrivateField implements sq.WorkerService {
  _$TestOptDefPositionalPrivateFieldWorkerService([super.arg1 = 0]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefPositionalPrivateField
sq.WorkerService $TestOptDefPositionalPrivateFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestOptDefPositionalPrivateFieldWorkerService(_$X.$0($$.args[0]));

/// Worker for TestOptDefPositionalPrivateField
base class _$TestOptDefPositionalPrivateFieldWorker extends sq.Worker
    implements TestOptDefPositionalPrivateField {
  _$TestOptDefPositionalPrivateFieldWorker(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptDefPositionalPrivateFieldWorker.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptDefPositionalPrivateFieldWorker.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalPrivateFieldWorker.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptDefPositionalPrivateField
base class TestOptDefPositionalPrivateFieldWorker
    with Releasable
    implements _$TestOptDefPositionalPrivateFieldWorker {
  TestOptDefPositionalPrivateFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptDefPositionalPrivateFieldWorker(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalPrivateFieldWorker(
            arg1, threadHook, exceptionManager));

  TestOptDefPositionalPrivateFieldWorker.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalPrivateFieldWorker.vm(
            arg1, threadHook, exceptionManager));

  TestOptDefPositionalPrivateFieldWorker.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalPrivateFieldWorker.js(
            arg1, threadHook, exceptionManager));

  TestOptDefPositionalPrivateFieldWorker.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalPrivateFieldWorker.wasm(
            arg1, threadHook, exceptionManager));

  final _$TestOptDefPositionalPrivateFieldWorker _$worker;

  static final Finalizer<_$TestOptDefPositionalPrivateFieldWorker> _finalizer =
      Finalizer<_$TestOptDefPositionalPrivateFieldWorker>((w) {
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
  int get _arg1 => _$worker._arg1;

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

/// Worker pool for TestOptDefPositionalPrivateField
base class _$TestOptDefPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptDefPositionalPrivateFieldWorker>
    implements TestOptDefPositionalPrivateField {
  _$TestOptDefPositionalPrivateFieldWorkerPool(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalPrivateFieldWorker(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefPositionalPrivateFieldWorkerPool.vm(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalPrivateFieldWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefPositionalPrivateFieldWorkerPool.js(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalPrivateFieldWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefPositionalPrivateFieldWorkerPool.wasm(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalPrivateFieldWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptDefPositionalPrivateField
base class TestOptDefPositionalPrivateFieldWorkerPool
    with Releasable
    implements _$TestOptDefPositionalPrivateFieldWorkerPool {
  TestOptDefPositionalPrivateFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptDefPositionalPrivateFieldWorkerPool(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalPrivateFieldWorkerPool(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptDefPositionalPrivateFieldWorkerPool.vm(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalPrivateFieldWorkerPool.vm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptDefPositionalPrivateFieldWorkerPool.js(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalPrivateFieldWorkerPool.js(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptDefPositionalPrivateFieldWorkerPool.wasm(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptDefPositionalPrivateFieldWorkerPool.wasm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  final _$TestOptDefPositionalPrivateFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptDefPositionalPrivateFieldWorkerPool>
      _finalizer = Finalizer<_$TestOptDefPositionalPrivateFieldWorkerPool>((p) {
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
  int get _arg1 => _$pool._arg1;

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
  int stop(
          [bool Function(TestOptDefPositionalPrivateFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(
                  TestOptDefPositionalPrivateFieldWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(
                  TestOptDefPositionalPrivateFieldWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptDefPositionalPrivateFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptDefPositionalPrivateFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptDefPositionalPrivateFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptDefPositionalPrivateFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptNullDefPositionalPrivateField
class _$TestOptNullDefPositionalPrivateFieldWorkerService
    extends TestOptNullDefPositionalPrivateField implements sq.WorkerService {
  _$TestOptNullDefPositionalPrivateFieldWorkerService([super.arg1 = 0])
      : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositionalPrivateField
sq.WorkerService $TestOptNullDefPositionalPrivateFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestOptNullDefPositionalPrivateFieldWorkerService(_$X.$1($$.args[0]));

/// Worker for TestOptNullDefPositionalPrivateField
base class _$TestOptNullDefPositionalPrivateFieldWorker extends sq.Worker
    implements TestOptNullDefPositionalPrivateField {
  _$TestOptNullDefPositionalPrivateFieldWorker(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptNullDefPositionalPrivateFieldWorker.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptNullDefPositionalPrivateFieldWorker.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalPrivateFieldWorker.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullDefPositionalPrivateField
base class TestOptNullDefPositionalPrivateFieldWorker
    with Releasable
    implements _$TestOptNullDefPositionalPrivateFieldWorker {
  TestOptNullDefPositionalPrivateFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptNullDefPositionalPrivateFieldWorker(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalPrivateFieldWorker(
            arg1, threadHook, exceptionManager));

  TestOptNullDefPositionalPrivateFieldWorker.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalPrivateFieldWorker.vm(
            arg1, threadHook, exceptionManager));

  TestOptNullDefPositionalPrivateFieldWorker.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalPrivateFieldWorker.js(
            arg1, threadHook, exceptionManager));

  TestOptNullDefPositionalPrivateFieldWorker.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalPrivateFieldWorker.wasm(
            arg1, threadHook, exceptionManager));

  final _$TestOptNullDefPositionalPrivateFieldWorker _$worker;

  static final Finalizer<_$TestOptNullDefPositionalPrivateFieldWorker>
      _finalizer = Finalizer<_$TestOptNullDefPositionalPrivateFieldWorker>((w) {
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
  int? get _arg1 => _$worker._arg1;

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

/// Worker pool for TestOptNullDefPositionalPrivateField
base class _$TestOptNullDefPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalPrivateFieldWorker>
    implements TestOptNullDefPositionalPrivateField {
  _$TestOptNullDefPositionalPrivateFieldWorkerPool(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalPrivateFieldWorker(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefPositionalPrivateFieldWorkerPool.vm(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalPrivateFieldWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefPositionalPrivateFieldWorkerPool.js(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalPrivateFieldWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefPositionalPrivateFieldWorkerPool.wasm(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalPrivateFieldWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullDefPositionalPrivateField
base class TestOptNullDefPositionalPrivateFieldWorkerPool
    with Releasable
    implements _$TestOptNullDefPositionalPrivateFieldWorkerPool {
  TestOptNullDefPositionalPrivateFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptNullDefPositionalPrivateFieldWorkerPool(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalPrivateFieldWorkerPool(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullDefPositionalPrivateFieldWorkerPool.vm(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalPrivateFieldWorkerPool.vm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullDefPositionalPrivateFieldWorkerPool.js(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalPrivateFieldWorkerPool.js(
            arg1, concurrencySettings, threadHook, exceptionManager));

  TestOptNullDefPositionalPrivateFieldWorkerPool.wasm(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$TestOptNullDefPositionalPrivateFieldWorkerPool.wasm(
            arg1, concurrencySettings, threadHook, exceptionManager));

  final _$TestOptNullDefPositionalPrivateFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullDefPositionalPrivateFieldWorkerPool>
      _finalizer =
      Finalizer<_$TestOptNullDefPositionalPrivateFieldWorkerPool>((p) {
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
  int? get _arg1 => _$pool._arg1;

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
  int stop(
          [bool Function(TestOptNullDefPositionalPrivateFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptNullDefPositionalPrivateFieldWorker worker,
                  bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestOptNullDefPositionalPrivateFieldWorker worker,
                  bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptNullDefPositionalPrivateFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptNullDefPositionalPrivateFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptNullDefPositionalPrivateFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptNullDefPositionalPrivateFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptNullNamed
class _$TestOptNullNamedWorkerService extends TestOptNullNamed
    implements sq.WorkerService {
  _$TestOptNullNamedWorkerService({super.arg1}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullNamed
sq.WorkerService $TestOptNullNamedInitializer(sq.WorkerRequest $$) =>
    _$TestOptNullNamedWorkerService(arg1: _$X.$1($$.args[0]));

/// Worker for TestOptNullNamed
base class _$TestOptNullNamedWorker extends sq.Worker
    implements TestOptNullNamed {
  _$TestOptNullNamedWorker(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptNullNamedWorker.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptNullNamedWorker.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullNamedWorker.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullNamed
base class TestOptNullNamedWorker
    with Releasable
    implements _$TestOptNullNamedWorker {
  TestOptNullNamedWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptNullNamedWorker(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedWorker(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedWorker.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedWorker.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedWorker.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedWorker.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedWorker.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedWorker.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestOptNullNamedWorker _$worker;

  static final Finalizer<_$TestOptNullNamedWorker> _finalizer =
      Finalizer<_$TestOptNullNamedWorker>((w) {
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

/// Worker pool for TestOptNullNamed
base class _$TestOptNullNamedWorkerPool
    extends sq.WorkerPool<TestOptNullNamedWorker> implements TestOptNullNamed {
  _$TestOptNullNamedWorkerPool(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptNullNamedWorker(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullNamedWorkerPool.vm(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptNullNamedWorker.vm(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullNamedWorkerPool.js(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptNullNamedWorker.js(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullNamedWorkerPool.wasm(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptNullNamedWorker.wasm(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullNamed
base class TestOptNullNamedWorkerPool
    with Releasable
    implements _$TestOptNullNamedWorkerPool {
  TestOptNullNamedWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptNullNamedWorkerPool(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedWorkerPool(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedWorkerPool.vm(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedWorkerPool.vm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedWorkerPool.js(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedWorkerPool.js(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedWorkerPool.wasm(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedWorkerPool.wasm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestOptNullNamedWorkerPool _$pool;

  static final Finalizer<_$TestOptNullNamedWorkerPool> _finalizer =
      Finalizer<_$TestOptNullNamedWorkerPool>((p) {
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
  int stop([bool Function(TestOptNullNamedWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptNullNamedWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestOptNullNamedWorker worker, bool removed)? listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestOptNullNamedWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestOptNullNamedWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptNullNamedWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptNullNamedWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptDefNamed
class _$TestOptDefNamedWorkerService extends TestOptDefNamed
    implements sq.WorkerService {
  _$TestOptDefNamedWorkerService({super.arg1 = 0}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefNamed
sq.WorkerService $TestOptDefNamedInitializer(sq.WorkerRequest $$) =>
    _$TestOptDefNamedWorkerService(arg1: _$X.$0($$.args[0]));

/// Worker for TestOptDefNamed
base class _$TestOptDefNamedWorker extends sq.Worker
    implements TestOptDefNamed {
  _$TestOptDefNamedWorker(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptDefNamedWorker.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptDefNamedWorker.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptDefNamedWorker.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptDefNamed
base class TestOptDefNamedWorker
    with Releasable
    implements _$TestOptDefNamedWorker {
  TestOptDefNamedWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptDefNamedWorker(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedWorker(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedWorker.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedWorker.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedWorker.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedWorker.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedWorker.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedWorker.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestOptDefNamedWorker _$worker;

  static final Finalizer<_$TestOptDefNamedWorker> _finalizer =
      Finalizer<_$TestOptDefNamedWorker>((w) {
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

/// Worker pool for TestOptDefNamed
base class _$TestOptDefNamedWorkerPool
    extends sq.WorkerPool<TestOptDefNamedWorker> implements TestOptDefNamed {
  _$TestOptDefNamedWorkerPool(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptDefNamedWorker(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefNamedWorkerPool.vm(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptDefNamedWorker.vm(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefNamedWorkerPool.js(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptDefNamedWorker.js(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefNamedWorkerPool.wasm(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptDefNamedWorker.wasm(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptDefNamed
base class TestOptDefNamedWorkerPool
    with Releasable
    implements _$TestOptDefNamedWorkerPool {
  TestOptDefNamedWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptDefNamedWorkerPool(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedWorkerPool(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedWorkerPool.vm(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedWorkerPool.vm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedWorkerPool.js(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedWorkerPool.js(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedWorkerPool.wasm(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedWorkerPool.wasm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestOptDefNamedWorkerPool _$pool;

  static final Finalizer<_$TestOptDefNamedWorkerPool> _finalizer =
      Finalizer<_$TestOptDefNamedWorkerPool>((p) {
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
  int stop([bool Function(TestOptDefNamedWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptDefNamedWorker worker, bool removed) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestOptDefNamedWorker worker, bool removed)? listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestOptDefNamedWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestOptDefNamedWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptDefNamedWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptDefNamedWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptNullDefNamed
class _$TestOptNullDefNamedWorkerService extends TestOptNullDefNamed
    implements sq.WorkerService {
  _$TestOptNullDefNamedWorkerService({super.arg1 = 0}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamed
sq.WorkerService $TestOptNullDefNamedInitializer(sq.WorkerRequest $$) =>
    _$TestOptNullDefNamedWorkerService(arg1: _$X.$1($$.args[0]));

/// Worker for TestOptNullDefNamed
base class _$TestOptNullDefNamedWorker extends sq.Worker
    implements TestOptNullDefNamed {
  _$TestOptNullDefNamedWorker(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptNullDefNamedWorker.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptNullDefNamedWorker.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedWorker.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullDefNamed
base class TestOptNullDefNamedWorker
    with Releasable
    implements _$TestOptNullDefNamedWorker {
  TestOptNullDefNamedWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptNullDefNamedWorker(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedWorker(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedWorker.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedWorker.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedWorker.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedWorker.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedWorker.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedWorker.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestOptNullDefNamedWorker _$worker;

  static final Finalizer<_$TestOptNullDefNamedWorker> _finalizer =
      Finalizer<_$TestOptNullDefNamedWorker>((w) {
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

/// Worker pool for TestOptNullDefNamed
base class _$TestOptNullDefNamedWorkerPool extends sq
    .WorkerPool<TestOptNullDefNamedWorker> implements TestOptNullDefNamed {
  _$TestOptNullDefNamedWorkerPool(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptNullDefNamedWorker(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefNamedWorkerPool.vm(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedWorker.vm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefNamedWorkerPool.js(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedWorker.js(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefNamedWorkerPool.wasm(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedWorker.wasm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullDefNamed
base class TestOptNullDefNamedWorkerPool
    with Releasable
    implements _$TestOptNullDefNamedWorkerPool {
  TestOptNullDefNamedWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptNullDefNamedWorkerPool(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedWorkerPool(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedWorkerPool.vm(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedWorkerPool.vm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedWorkerPool.js(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedWorkerPool.js(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedWorkerPool.wasm(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedWorkerPool.wasm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestOptNullDefNamedWorkerPool _$pool;

  static final Finalizer<_$TestOptNullDefNamedWorkerPool> _finalizer =
      Finalizer<_$TestOptNullDefNamedWorkerPool>((p) {
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
  int stop([bool Function(TestOptNullDefNamedWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptNullDefNamedWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestOptNullDefNamedWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptNullDefNamedWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestOptNullDefNamedWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptNullDefNamedWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptNullDefNamedWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptNullNamedField
class _$TestOptNullNamedFieldWorkerService extends TestOptNullNamedField
    implements sq.WorkerService {
  _$TestOptNullNamedFieldWorkerService({super.arg1}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullNamedField
sq.WorkerService $TestOptNullNamedFieldInitializer(sq.WorkerRequest $$) =>
    _$TestOptNullNamedFieldWorkerService(arg1: _$X.$1($$.args[0]));

/// Worker for TestOptNullNamedField
base class _$TestOptNullNamedFieldWorker extends sq.Worker
    implements TestOptNullNamedField {
  _$TestOptNullNamedFieldWorker(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptNullNamedFieldWorker.vm(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptNullNamedFieldWorker.js(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullNamedFieldWorker.wasm(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedFieldActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  final int? arg1;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullNamedField
base class TestOptNullNamedFieldWorker
    with Releasable
    implements _$TestOptNullNamedFieldWorker {
  TestOptNullNamedFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptNullNamedFieldWorker(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedFieldWorker(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedFieldWorker.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedFieldWorker.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedFieldWorker.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedFieldWorker.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedFieldWorker.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedFieldWorker.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  @override
  int? get arg1 => _$worker.arg1;

  final _$TestOptNullNamedFieldWorker _$worker;

  static final Finalizer<_$TestOptNullNamedFieldWorker> _finalizer =
      Finalizer<_$TestOptNullNamedFieldWorker>((w) {
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

/// Worker pool for TestOptNullNamedField
base class _$TestOptNullNamedFieldWorkerPool extends sq
    .WorkerPool<TestOptNullNamedFieldWorker> implements TestOptNullNamedField {
  _$TestOptNullNamedFieldWorkerPool(
      {this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptNullNamedFieldWorker(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullNamedFieldWorkerPool.vm(
      {this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullNamedFieldWorker.vm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullNamedFieldWorkerPool.js(
      {this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullNamedFieldWorker.js(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullNamedFieldWorkerPool.wasm(
      {this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullNamedFieldWorker.wasm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final int? arg1;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullNamedField
base class TestOptNullNamedFieldWorkerPool
    with Releasable
    implements _$TestOptNullNamedFieldWorkerPool {
  TestOptNullNamedFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptNullNamedFieldWorkerPool(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedFieldWorkerPool(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedFieldWorkerPool.vm(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedFieldWorkerPool.vm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedFieldWorkerPool.js(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedFieldWorkerPool.js(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedFieldWorkerPool.wasm(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedFieldWorkerPool.wasm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  @override
  int? get arg1 => _$pool.arg1;

  final _$TestOptNullNamedFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullNamedFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptNullNamedFieldWorkerPool>((p) {
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
  int stop([bool Function(TestOptNullNamedFieldWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptNullNamedFieldWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestOptNullNamedFieldWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptNullNamedFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptNullNamedFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptNullNamedFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptNullNamedFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptDefNamedField
class _$TestOptDefNamedFieldWorkerService extends TestOptDefNamedField
    implements sq.WorkerService {
  _$TestOptDefNamedFieldWorkerService({super.arg1 = 0}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefNamedField
sq.WorkerService $TestOptDefNamedFieldInitializer(sq.WorkerRequest $$) =>
    _$TestOptDefNamedFieldWorkerService(arg1: _$X.$0($$.args[0]));

/// Worker for TestOptDefNamedField
base class _$TestOptDefNamedFieldWorker extends sq.Worker
    implements TestOptDefNamedField {
  _$TestOptDefNamedFieldWorker(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptDefNamedFieldWorker.vm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptDefNamedFieldWorker.js(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptDefNamedFieldWorker.wasm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedFieldActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  final int arg1;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptDefNamedField
base class TestOptDefNamedFieldWorker
    with Releasable
    implements _$TestOptDefNamedFieldWorker {
  TestOptDefNamedFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptDefNamedFieldWorker(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedFieldWorker(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedFieldWorker.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedFieldWorker.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedFieldWorker.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedFieldWorker.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedFieldWorker.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedFieldWorker.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  @override
  int get arg1 => _$worker.arg1;

  final _$TestOptDefNamedFieldWorker _$worker;

  static final Finalizer<_$TestOptDefNamedFieldWorker> _finalizer =
      Finalizer<_$TestOptDefNamedFieldWorker>((w) {
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

/// Worker pool for TestOptDefNamedField
base class _$TestOptDefNamedFieldWorkerPool extends sq
    .WorkerPool<TestOptDefNamedFieldWorker> implements TestOptDefNamedField {
  _$TestOptDefNamedFieldWorkerPool(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptDefNamedFieldWorker(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefNamedFieldWorkerPool.vm(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefNamedFieldWorker.vm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefNamedFieldWorkerPool.js(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefNamedFieldWorker.js(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefNamedFieldWorkerPool.wasm(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefNamedFieldWorker.wasm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final int arg1;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptDefNamedField
base class TestOptDefNamedFieldWorkerPool
    with Releasable
    implements _$TestOptDefNamedFieldWorkerPool {
  TestOptDefNamedFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptDefNamedFieldWorkerPool(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedFieldWorkerPool(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedFieldWorkerPool.vm(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedFieldWorkerPool.vm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedFieldWorkerPool.js(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedFieldWorkerPool.js(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedFieldWorkerPool.wasm(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedFieldWorkerPool.wasm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  @override
  int get arg1 => _$pool.arg1;

  final _$TestOptDefNamedFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptDefNamedFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptDefNamedFieldWorkerPool>((p) {
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
  int stop([bool Function(TestOptDefNamedFieldWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptDefNamedFieldWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestOptDefNamedFieldWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptDefNamedFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptDefNamedFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptDefNamedFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptDefNamedFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptNullDefNamedField
class _$TestOptNullDefNamedFieldWorkerService extends TestOptNullDefNamedField
    implements sq.WorkerService {
  _$TestOptNullDefNamedFieldWorkerService({super.arg1 = 0}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamedField
sq.WorkerService $TestOptNullDefNamedFieldInitializer(sq.WorkerRequest $$) =>
    _$TestOptNullDefNamedFieldWorkerService(arg1: _$X.$1($$.args[0]));

/// Worker for TestOptNullDefNamedField
base class _$TestOptNullDefNamedFieldWorker extends sq.Worker
    implements TestOptNullDefNamedField {
  _$TestOptNullDefNamedFieldWorker(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptNullDefNamedFieldWorker.vm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptNullDefNamedFieldWorker.js(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedFieldWorker.wasm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedFieldActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  final int? arg1;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullDefNamedField
base class TestOptNullDefNamedFieldWorker
    with Releasable
    implements _$TestOptNullDefNamedFieldWorker {
  TestOptNullDefNamedFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptNullDefNamedFieldWorker(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedFieldWorker(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedFieldWorker.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedFieldWorker.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedFieldWorker.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedFieldWorker.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedFieldWorker.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedFieldWorker.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  @override
  int? get arg1 => _$worker.arg1;

  final _$TestOptNullDefNamedFieldWorker _$worker;

  static final Finalizer<_$TestOptNullDefNamedFieldWorker> _finalizer =
      Finalizer<_$TestOptNullDefNamedFieldWorker>((w) {
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

/// Worker pool for TestOptNullDefNamedField
base class _$TestOptNullDefNamedFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedFieldWorker>
    implements TestOptNullDefNamedField {
  _$TestOptNullDefNamedFieldWorkerPool(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedFieldWorker(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefNamedFieldWorkerPool.vm(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedFieldWorker.vm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefNamedFieldWorkerPool.js(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedFieldWorker.js(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefNamedFieldWorkerPool.wasm(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedFieldWorker.wasm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final int? arg1;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullDefNamedField
base class TestOptNullDefNamedFieldWorkerPool
    with Releasable
    implements _$TestOptNullDefNamedFieldWorkerPool {
  TestOptNullDefNamedFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptNullDefNamedFieldWorkerPool(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedFieldWorkerPool(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedFieldWorkerPool.vm(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedFieldWorkerPool.vm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedFieldWorkerPool.js(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedFieldWorkerPool.js(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedFieldWorkerPool.wasm(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedFieldWorkerPool.wasm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  @override
  int? get arg1 => _$pool.arg1;

  final _$TestOptNullDefNamedFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullDefNamedFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptNullDefNamedFieldWorkerPool>((p) {
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
  int stop([bool Function(TestOptNullDefNamedFieldWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptNullDefNamedFieldWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestOptNullDefNamedFieldWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptNullDefNamedFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptNullDefNamedFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptNullDefNamedFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptNullDefNamedFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptNullNamedPrivateField
class _$TestOptNullNamedPrivateFieldWorkerService
    extends TestOptNullNamedPrivateField implements sq.WorkerService {
  _$TestOptNullNamedPrivateFieldWorkerService({super.arg1}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullNamedPrivateField
sq.WorkerService $TestOptNullNamedPrivateFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestOptNullNamedPrivateFieldWorkerService(arg1: _$X.$1($$.args[0]));

/// Worker for TestOptNullNamedPrivateField
base class _$TestOptNullNamedPrivateFieldWorker extends sq.Worker
    implements TestOptNullNamedPrivateField {
  _$TestOptNullNamedPrivateFieldWorker(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedPrivateFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptNullNamedPrivateFieldWorker.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullNamedPrivateFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptNullNamedPrivateFieldWorker.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullNamedPrivateFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullNamedPrivateFieldWorker.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullNamedPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullNamedPrivateField
base class TestOptNullNamedPrivateFieldWorker
    with Releasable
    implements _$TestOptNullNamedPrivateFieldWorker {
  TestOptNullNamedPrivateFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptNullNamedPrivateFieldWorker(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedPrivateFieldWorker(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedPrivateFieldWorker.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedPrivateFieldWorker.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedPrivateFieldWorker.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedPrivateFieldWorker.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedPrivateFieldWorker.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedPrivateFieldWorker.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestOptNullNamedPrivateFieldWorker _$worker;

  static final Finalizer<_$TestOptNullNamedPrivateFieldWorker> _finalizer =
      Finalizer<_$TestOptNullNamedPrivateFieldWorker>((w) {
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
  int? get _arg1 => _$worker._arg1;

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

/// Worker pool for TestOptNullNamedPrivateField
base class _$TestOptNullNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullNamedPrivateFieldWorker>
    implements TestOptNullNamedPrivateField {
  _$TestOptNullNamedPrivateFieldWorkerPool(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullNamedPrivateFieldWorker(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullNamedPrivateFieldWorkerPool.vm(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullNamedPrivateFieldWorker.vm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullNamedPrivateFieldWorkerPool.js(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullNamedPrivateFieldWorker.js(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullNamedPrivateFieldWorkerPool.wasm(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullNamedPrivateFieldWorker.wasm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullNamedPrivateField
base class TestOptNullNamedPrivateFieldWorkerPool
    with Releasable
    implements _$TestOptNullNamedPrivateFieldWorkerPool {
  TestOptNullNamedPrivateFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptNullNamedPrivateFieldWorkerPool(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedPrivateFieldWorkerPool(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedPrivateFieldWorkerPool.vm(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedPrivateFieldWorkerPool.vm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedPrivateFieldWorkerPool.js(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedPrivateFieldWorkerPool.js(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullNamedPrivateFieldWorkerPool.wasm(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullNamedPrivateFieldWorkerPool.wasm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestOptNullNamedPrivateFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullNamedPrivateFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptNullNamedPrivateFieldWorkerPool>((p) {
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
  int? get _arg1 => _$pool._arg1;

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
  int stop(
          [bool Function(TestOptNullNamedPrivateFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptNullNamedPrivateFieldWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(
                  TestOptNullNamedPrivateFieldWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptNullNamedPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptNullNamedPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptNullNamedPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptNullNamedPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptDefNamedPrivateField
class _$TestOptDefNamedPrivateFieldWorkerService
    extends TestOptDefNamedPrivateField implements sq.WorkerService {
  _$TestOptDefNamedPrivateFieldWorkerService({super.arg1 = 0}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefNamedPrivateField
sq.WorkerService $TestOptDefNamedPrivateFieldInitializer(sq.WorkerRequest $$) =>
    _$TestOptDefNamedPrivateFieldWorkerService(arg1: _$X.$0($$.args[0]));

/// Worker for TestOptDefNamedPrivateField
base class _$TestOptDefNamedPrivateFieldWorker extends sq.Worker
    implements TestOptDefNamedPrivateField {
  _$TestOptDefNamedPrivateFieldWorker(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedPrivateFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptDefNamedPrivateFieldWorker.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedPrivateFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptDefNamedPrivateFieldWorker.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedPrivateFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptDefNamedPrivateFieldWorker.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptDefNamedPrivateFieldActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptDefNamedPrivateField
base class TestOptDefNamedPrivateFieldWorker
    with Releasable
    implements _$TestOptDefNamedPrivateFieldWorker {
  TestOptDefNamedPrivateFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptDefNamedPrivateFieldWorker(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedPrivateFieldWorker(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedPrivateFieldWorker.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedPrivateFieldWorker.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedPrivateFieldWorker.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedPrivateFieldWorker.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedPrivateFieldWorker.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedPrivateFieldWorker.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestOptDefNamedPrivateFieldWorker _$worker;

  static final Finalizer<_$TestOptDefNamedPrivateFieldWorker> _finalizer =
      Finalizer<_$TestOptDefNamedPrivateFieldWorker>((w) {
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
  int get _arg1 => _$worker._arg1;

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

/// Worker pool for TestOptDefNamedPrivateField
base class _$TestOptDefNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptDefNamedPrivateFieldWorker>
    implements TestOptDefNamedPrivateField {
  _$TestOptDefNamedPrivateFieldWorkerPool(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefNamedPrivateFieldWorker(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefNamedPrivateFieldWorkerPool.vm(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefNamedPrivateFieldWorker.vm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefNamedPrivateFieldWorkerPool.js(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefNamedPrivateFieldWorker.js(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptDefNamedPrivateFieldWorkerPool.wasm(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefNamedPrivateFieldWorker.wasm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptDefNamedPrivateField
base class TestOptDefNamedPrivateFieldWorkerPool
    with Releasable
    implements _$TestOptDefNamedPrivateFieldWorkerPool {
  TestOptDefNamedPrivateFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptDefNamedPrivateFieldWorkerPool(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedPrivateFieldWorkerPool(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedPrivateFieldWorkerPool.vm(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedPrivateFieldWorkerPool.vm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedPrivateFieldWorkerPool.js(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedPrivateFieldWorkerPool.js(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptDefNamedPrivateFieldWorkerPool.wasm(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptDefNamedPrivateFieldWorkerPool.wasm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestOptDefNamedPrivateFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptDefNamedPrivateFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptDefNamedPrivateFieldWorkerPool>((p) {
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
  int get _arg1 => _$pool._arg1;

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
  int stop(
          [bool Function(TestOptDefNamedPrivateFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptDefNamedPrivateFieldWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(
                  TestOptDefNamedPrivateFieldWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptDefNamedPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptDefNamedPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptDefNamedPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptDefNamedPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptNullDefNamedPrivateField
class _$TestOptNullDefNamedPrivateFieldWorkerService
    extends TestOptNullDefNamedPrivateField implements sq.WorkerService {
  _$TestOptNullDefNamedPrivateFieldWorkerService({super.arg1 = 0}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamedPrivateField
sq.WorkerService $TestOptNullDefNamedPrivateFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestOptNullDefNamedPrivateFieldWorkerService(arg1: _$X.$1($$.args[0]));

/// Worker for TestOptNullDefNamedPrivateField
base class _$TestOptNullDefNamedPrivateFieldWorker extends sq.Worker
    implements TestOptNullDefNamedPrivateField {
  _$TestOptNullDefNamedPrivateFieldWorker(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  _$TestOptNullDefNamedPrivateFieldWorker.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [arg1]);

  _$TestOptNullDefNamedPrivateFieldWorker.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedPrivateFieldWorker.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullDefNamedPrivateField
base class TestOptNullDefNamedPrivateFieldWorker
    with Releasable
    implements _$TestOptNullDefNamedPrivateFieldWorker {
  TestOptNullDefNamedPrivateFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptNullDefNamedPrivateFieldWorker(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateFieldWorker(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedPrivateFieldWorker.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateFieldWorker.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedPrivateFieldWorker.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateFieldWorker.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedPrivateFieldWorker.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateFieldWorker.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestOptNullDefNamedPrivateFieldWorker _$worker;

  static final Finalizer<_$TestOptNullDefNamedPrivateFieldWorker> _finalizer =
      Finalizer<_$TestOptNullDefNamedPrivateFieldWorker>((w) {
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
  int? get _arg1 => _$worker._arg1;

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

/// Worker pool for TestOptNullDefNamedPrivateField
base class _$TestOptNullDefNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedPrivateFieldWorker>
    implements TestOptNullDefNamedPrivateField {
  _$TestOptNullDefNamedPrivateFieldWorkerPool(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedPrivateFieldWorker(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefNamedPrivateFieldWorkerPool.vm(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedPrivateFieldWorker.vm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefNamedPrivateFieldWorkerPool.js(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedPrivateFieldWorker.js(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefNamedPrivateFieldWorkerPool.wasm(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedPrivateFieldWorker.wasm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullDefNamedPrivateField
base class TestOptNullDefNamedPrivateFieldWorkerPool
    with Releasable
    implements _$TestOptNullDefNamedPrivateFieldWorkerPool {
  TestOptNullDefNamedPrivateFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptNullDefNamedPrivateFieldWorkerPool(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateFieldWorkerPool(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedPrivateFieldWorkerPool.vm(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateFieldWorkerPool.vm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedPrivateFieldWorkerPool.js(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateFieldWorkerPool.js(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedPrivateFieldWorkerPool.wasm(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateFieldWorkerPool.wasm(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestOptNullDefNamedPrivateFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullDefNamedPrivateFieldWorkerPool>
      _finalizer = Finalizer<_$TestOptNullDefNamedPrivateFieldWorkerPool>((p) {
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
  int? get _arg1 => _$pool._arg1;

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
  int stop(
          [bool Function(TestOptNullDefNamedPrivateFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(
                  TestOptNullDefNamedPrivateFieldWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(
                  TestOptNullDefNamedPrivateFieldWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestOptNullDefNamedPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestOptNullDefNamedPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestOptNullDefNamedPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestOptNullDefNamedPrivateFieldWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestPrefixedImportType
class _$TestPrefixedImportTypeWorkerService extends TestPrefixedImportType
    implements sq.WorkerService {
  _$TestPrefixedImportTypeWorkerService(super.typedData) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$getTypedDataId: ($) async => _$X.$3(await getTypedData()),
  });

  static const int _$getTypedDataId = 1;
}

/// Service initializer for TestPrefixedImportType
sq.WorkerService $TestPrefixedImportTypeInitializer(sq.WorkerRequest $$) =>
    _$TestPrefixedImportTypeWorkerService(_$X.$4($$.args[0]));

/// Worker for TestPrefixedImportType
base class _$TestPrefixedImportTypeWorker extends sq.Worker
    implements TestPrefixedImportType {
  _$TestPrefixedImportTypeWorker(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestPrefixedImportTypeActivator(sq.Squadron.platformType),
            args: [_$X.$2(typedData)]);

  _$TestPrefixedImportTypeWorker.vm(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.vm),
            args: [_$X.$2(typedData)]);

  _$TestPrefixedImportTypeWorker.js(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.js),
            args: [_$X.$2(typedData)],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestPrefixedImportTypeWorker.wasm(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.wasm),
            args: [_$X.$2(typedData)]);

  @override
  final typed_data.Int8List typedData;

  @override
  Future<typed_data.Int8List?> getTypedData() =>
      send(_$TestPrefixedImportTypeWorkerService._$getTypedDataId,
              args: [], inspectRequest: true, inspectResponse: true)
          .then(_$X.$5);

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestPrefixedImportType
base class TestPrefixedImportTypeWorker
    with Releasable
    implements _$TestPrefixedImportTypeWorker {
  TestPrefixedImportTypeWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestPrefixedImportTypeWorker(typed_data.Int8List typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestPrefixedImportTypeWorker(typedData,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestPrefixedImportTypeWorker.vm(typed_data.Int8List typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestPrefixedImportTypeWorker.vm(typedData,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestPrefixedImportTypeWorker.js(typed_data.Int8List typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestPrefixedImportTypeWorker.js(typedData,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestPrefixedImportTypeWorker.wasm(typed_data.Int8List typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestPrefixedImportTypeWorker.wasm(typedData,
            threadHook: threadHook, exceptionManager: exceptionManager));

  @override
  typed_data.Int8List get typedData => _$worker.typedData;

  final _$TestPrefixedImportTypeWorker _$worker;

  static final Finalizer<_$TestPrefixedImportTypeWorker> _finalizer =
      Finalizer<_$TestPrefixedImportTypeWorker>((w) {
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
  Future<typed_data.Int8List?> getTypedData() => _$worker.getTypedData();

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

/// Worker pool for TestPrefixedImportType
base class _$TestPrefixedImportTypeWorkerPool
    extends sq.WorkerPool<TestPrefixedImportTypeWorker>
    implements TestPrefixedImportType {
  _$TestPrefixedImportTypeWorkerPool(this.typedData,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestPrefixedImportTypeWorker(typedData,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestPrefixedImportTypeWorkerPool.vm(this.typedData,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestPrefixedImportTypeWorker.vm(typedData,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestPrefixedImportTypeWorkerPool.js(this.typedData,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestPrefixedImportTypeWorker.js(typedData,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestPrefixedImportTypeWorkerPool.wasm(this.typedData,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestPrefixedImportTypeWorker.wasm(typedData,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final typed_data.Int8List typedData;

  @override
  Future<typed_data.Int8List?> getTypedData() =>
      execute((w) => w.getTypedData());

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestPrefixedImportType
base class TestPrefixedImportTypeWorkerPool
    with Releasable
    implements _$TestPrefixedImportTypeWorkerPool {
  TestPrefixedImportTypeWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestPrefixedImportTypeWorkerPool(typed_data.Int8List typedData,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestPrefixedImportTypeWorkerPool(typedData,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestPrefixedImportTypeWorkerPool.vm(typed_data.Int8List typedData,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestPrefixedImportTypeWorkerPool.vm(typedData,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestPrefixedImportTypeWorkerPool.js(typed_data.Int8List typedData,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestPrefixedImportTypeWorkerPool.js(typedData,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestPrefixedImportTypeWorkerPool.wasm(typed_data.Int8List typedData,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestPrefixedImportTypeWorkerPool.wasm(typedData,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  @override
  typed_data.Int8List get typedData => _$pool.typedData;

  final _$TestPrefixedImportTypeWorkerPool _$pool;

  static final Finalizer<_$TestPrefixedImportTypeWorkerPool> _finalizer =
      Finalizer<_$TestPrefixedImportTypeWorkerPool>((p) {
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
  Future<typed_data.Int8List?> getTypedData() => _$pool.getTypedData();

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
  int stop([bool Function(TestPrefixedImportTypeWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestPrefixedImportTypeWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestPrefixedImportTypeWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestPrefixedImportTypeWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestPrefixedImportTypeWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestPrefixedImportTypeWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestPrefixedImportTypeWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestOptNullDefNamedPrivateNonFinalField
class _$TestOptNullDefNamedPrivateNonFinalFieldWorkerService
    extends TestOptNullDefNamedPrivateNonFinalField
    implements sq.WorkerService {
  _$TestOptNullDefNamedPrivateNonFinalFieldWorkerService({super.state = 0})
      : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$getStateId: ($) => getState(),
    _$setStateId: ($) => setState(_$X.$1($.args[0])),
  });

  static const int _$getStateId = 1;
  static const int _$setStateId = 2;
}

/// Service initializer for TestOptNullDefNamedPrivateNonFinalField
sq.WorkerService $TestOptNullDefNamedPrivateNonFinalFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestOptNullDefNamedPrivateNonFinalFieldWorkerService(
        state: _$X.$1($$.args[0]));

/// Worker for TestOptNullDefNamedPrivateNonFinalField
base class _$TestOptNullDefNamedPrivateNonFinalFieldWorker extends sq.Worker
    implements TestOptNullDefNamedPrivateNonFinalField {
  _$TestOptNullDefNamedPrivateNonFinalFieldWorker(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.Squadron.platformType),
            args: [state]);

  _$TestOptNullDefNamedPrivateNonFinalFieldWorker.vm(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [state]);

  _$TestOptNullDefNamedPrivateNonFinalFieldWorker.js(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.SquadronPlatformType.js),
            args: [state],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedPrivateNonFinalFieldWorker.wasm(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [state]);

  @override
  Future<int?> getState() =>
      send(_$TestOptNullDefNamedPrivateNonFinalFieldWorkerService._$getStateId,
              args: [], inspectRequest: true, inspectResponse: true)
          .then(_$X.$1);

  @override
  Future<void> setState(int? state) =>
      send(_$TestOptNullDefNamedPrivateNonFinalFieldWorkerService._$setStateId,
              args: [state], inspectRequest: true, inspectResponse: true)
          .then(_$X.$6);

  @override
  // ignore: unused_element
  int? get _state => throw UnimplementedError();

  @override
  // ignore: unused_element
  set _state(void value) => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullDefNamedPrivateNonFinalField
base class TestOptNullDefNamedPrivateNonFinalFieldWorker
    with Releasable
    implements _$TestOptNullDefNamedPrivateNonFinalFieldWorker {
  TestOptNullDefNamedPrivateNonFinalFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestOptNullDefNamedPrivateNonFinalFieldWorker(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateNonFinalFieldWorker(
            state: state,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedPrivateNonFinalFieldWorker.vm(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateNonFinalFieldWorker.vm(
            state: state,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedPrivateNonFinalFieldWorker.js(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateNonFinalFieldWorker.js(
            state: state,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedPrivateNonFinalFieldWorker.wasm(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateNonFinalFieldWorker.wasm(
            state: state,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestOptNullDefNamedPrivateNonFinalFieldWorker _$worker;

  static final Finalizer<_$TestOptNullDefNamedPrivateNonFinalFieldWorker>
      _finalizer =
      Finalizer<_$TestOptNullDefNamedPrivateNonFinalFieldWorker>((w) {
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
  Future<int?> getState() => _$worker.getState();

  @override
  Future<void> setState(int? state) => _$worker.setState(state);

  @override
  int? get _state => _$worker._state;

  @override
  set _state(void value) => _$worker._state = value;

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

/// Worker pool for TestOptNullDefNamedPrivateNonFinalField
base class _$TestOptNullDefNamedPrivateNonFinalFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedPrivateNonFinalFieldWorker>
    implements TestOptNullDefNamedPrivateNonFinalField {
  _$TestOptNullDefNamedPrivateNonFinalFieldWorkerPool(
      {int? state = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedPrivateNonFinalFieldWorker(
                  state: state,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefNamedPrivateNonFinalFieldWorkerPool.vm(
      {int? state = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedPrivateNonFinalFieldWorker.vm(
                  state: state,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefNamedPrivateNonFinalFieldWorkerPool.js(
      {int? state = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedPrivateNonFinalFieldWorker.js(
                  state: state,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestOptNullDefNamedPrivateNonFinalFieldWorkerPool.wasm(
      {int? state = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedPrivateNonFinalFieldWorker.wasm(
                  state: state,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Future<int?> getState() => execute((w) => w.getState());

  @override
  Future<void> setState(int? state) => execute((w) => w.setState(state));

  @override
  // ignore: unused_element
  int? get _state => throw UnimplementedError();

  @override
  // ignore: unused_element
  set _state(void value) => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullDefNamedPrivateNonFinalField
base class TestOptNullDefNamedPrivateNonFinalFieldWorkerPool
    with Releasable
    implements _$TestOptNullDefNamedPrivateNonFinalFieldWorkerPool {
  TestOptNullDefNamedPrivateNonFinalFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestOptNullDefNamedPrivateNonFinalFieldWorkerPool(
      {int? state = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateNonFinalFieldWorkerPool(
            state: state,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedPrivateNonFinalFieldWorkerPool.vm(
      {int? state = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateNonFinalFieldWorkerPool.vm(
            state: state,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedPrivateNonFinalFieldWorkerPool.js(
      {int? state = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateNonFinalFieldWorkerPool.js(
            state: state,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestOptNullDefNamedPrivateNonFinalFieldWorkerPool.wasm(
      {int? state = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestOptNullDefNamedPrivateNonFinalFieldWorkerPool.wasm(
            state: state,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestOptNullDefNamedPrivateNonFinalFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullDefNamedPrivateNonFinalFieldWorkerPool>
      _finalizer =
      Finalizer<_$TestOptNullDefNamedPrivateNonFinalFieldWorkerPool>((p) {
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
  Future<int?> getState() => _$pool.getState();

  @override
  Future<void> setState(int? state) => _$pool.setState(state);

  @override
  int? get _state => _$pool._state;

  @override
  set _state(void value) => _$pool._state = value;

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
  int stop(
          [bool Function(TestOptNullDefNamedPrivateNonFinalFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestOptNullDefNamedPrivateNonFinalFieldWorker worker,
                  bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestOptNullDefNamedPrivateNonFinalFieldWorker worker,
                  bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(
                  TestOptNullDefNamedPrivateNonFinalFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(
                  TestOptNullDefNamedPrivateNonFinalFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(
                  TestOptNullDefNamedPrivateNonFinalFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(
                  TestOptNullDefNamedPrivateNonFinalFieldWorker worker)
              task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestInstallable
class _$TestInstallableWorkerService extends TestInstallable
    implements sq.WorkerService {
  _$TestInstallableWorkerService(super.delay) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestInstallable
sq.WorkerService $TestInstallableInitializer(sq.WorkerRequest $$) =>
    _$TestInstallableWorkerService(_$X.$0($$.args[0]));

/// Worker for TestInstallable
base class _$TestInstallableWorker extends sq.Worker
    implements TestInstallable {
  _$TestInstallableWorker(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestInstallableActivator(sq.Squadron.platformType),
            args: [delay]);

  _$TestInstallableWorker.vm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestInstallableActivator(sq.SquadronPlatformType.vm),
            args: [delay]);

  _$TestInstallableWorker.js(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestInstallableActivator(sq.SquadronPlatformType.js),
            args: [delay],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestInstallableWorker.wasm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestInstallableActivator(sq.SquadronPlatformType.wasm),
            args: [delay]);

  @override
  FutureOr<void> install() => throw UnimplementedError();

  @override
  FutureOr<void> uninstall() => throw UnimplementedError();

  @override
  // ignore: unused_element
  int get _delay => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestInstallable
base class TestInstallableWorker
    with Releasable
    implements _$TestInstallableWorker {
  TestInstallableWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestInstallableWorker(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestInstallableWorker(delay,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestInstallableWorker.vm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestInstallableWorker.vm(delay,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestInstallableWorker.js(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestInstallableWorker.js(delay,
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestInstallableWorker.wasm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestInstallableWorker.wasm(delay,
            threadHook: threadHook, exceptionManager: exceptionManager));

  final _$TestInstallableWorker _$worker;

  static final Finalizer<_$TestInstallableWorker> _finalizer =
      Finalizer<_$TestInstallableWorker>((w) {
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
  FutureOr<void> install() => _$worker.install();

  @override
  FutureOr<void> uninstall() => _$worker.uninstall();

  @override
  int get _delay => _$worker._delay;

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

/// Worker pool for TestInstallable
base class _$TestInstallableWorkerPool
    extends sq.WorkerPool<TestInstallableWorker> implements TestInstallable {
  _$TestInstallableWorkerPool(int delay,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestInstallableWorker(delay,
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestInstallableWorkerPool.vm(int delay,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestInstallableWorker.vm(
              delay,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestInstallableWorkerPool.js(int delay,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestInstallableWorker.js(
              delay,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestInstallableWorkerPool.wasm(int delay,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestInstallableWorker.wasm(
              delay,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  FutureOr<void> install() => throw UnimplementedError();

  @override
  FutureOr<void> uninstall() => throw UnimplementedError();

  @override
  // ignore: unused_element
  int get _delay => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestInstallable
base class TestInstallableWorkerPool
    with Releasable
    implements _$TestInstallableWorkerPool {
  TestInstallableWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestInstallableWorkerPool(int delay,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestInstallableWorkerPool(delay,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestInstallableWorkerPool.vm(int delay,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestInstallableWorkerPool.vm(delay,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestInstallableWorkerPool.js(int delay,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestInstallableWorkerPool.js(delay,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestInstallableWorkerPool.wasm(int delay,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestInstallableWorkerPool.wasm(delay,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestInstallableWorkerPool _$pool;

  static final Finalizer<_$TestInstallableWorkerPool> _finalizer =
      Finalizer<_$TestInstallableWorkerPool>((p) {
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
  FutureOr<void> install() => _$pool.install();

  @override
  FutureOr<void> uninstall() => _$pool.uninstall();

  @override
  int get _delay => _$pool._delay;

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
  int stop([bool Function(TestInstallableWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestInstallableWorker worker, bool removed) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestInstallableWorker worker, bool removed)? listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestInstallableWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestInstallableWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestInstallableWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestInstallableWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestRecordTypes
class _$TestRecordTypesWorkerService extends TestRecordTypes
    implements sq.WorkerService {
  _$TestRecordTypesWorkerService() : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$bothId: ($) async => _$X.$8(await both()),
    _$inputId: ($) =>
        input(_$X.$10($.args[0]), _$X.$13($.args[1]), _$X.$14($.args[2])),
    _$namedId: ($) => named().then(_$X.$16),
    _$unnamedId: ($) async => _$X.$17(await unnamed()),
  });

  static const int _$bothId = 1;
  static const int _$inputId = 2;
  static const int _$namedId = 3;
  static const int _$unnamedId = 4;
}

/// Service initializer for TestRecordTypes
sq.WorkerService $TestRecordTypesInitializer(sq.WorkerRequest $$) =>
    _$TestRecordTypesWorkerService();

/// Worker for TestRecordTypes
base class _$TestRecordTypesWorker extends sq.Worker
    implements TestRecordTypes {
  _$TestRecordTypesWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.Squadron.platformType));

  _$TestRecordTypesWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.SquadronPlatformType.vm));

  _$TestRecordTypesWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestRecordTypesWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.SquadronPlatformType.wasm));

  @override
  Future<(int, {List<int> items})> both() =>
      send(_$TestRecordTypesWorkerService._$bothId,
              args: [], inspectRequest: true, inspectResponse: true)
          .then(_$X.$10);

  @override
  Future<bool> input((int, {List<int> items}) both, (int, List<dynamic>) pos,
          ({int count, List<dynamic> items}) named) =>
      send(_$TestRecordTypesWorkerService._$inputId,
              args: [_$X.$8(both), _$X.$17(pos), _$X.$16(named)],
              inspectRequest: true,
              inspectResponse: true)
          .then(_$X.$18);

  @override
  Future<({int count, List<dynamic> items})> named() =>
      send(_$TestRecordTypesWorkerService._$namedId,
              args: [], inspectRequest: true, inspectResponse: true)
          .then(_$X.$14);

  @override
  Future<(int, List<dynamic>)> unnamed() =>
      send(_$TestRecordTypesWorkerService._$unnamedId,
              args: [], inspectRequest: true, inspectResponse: true)
          .then(_$X.$13);

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestRecordTypes
base class TestRecordTypesWorker
    with Releasable
    implements _$TestRecordTypesWorker {
  TestRecordTypesWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestRecordTypesWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRecordTypesWorker(
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestRecordTypesWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRecordTypesWorker.vm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestRecordTypesWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRecordTypesWorker.js(
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestRecordTypesWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRecordTypesWorker.wasm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  final _$TestRecordTypesWorker _$worker;

  static final Finalizer<_$TestRecordTypesWorker> _finalizer =
      Finalizer<_$TestRecordTypesWorker>((w) {
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
  Future<(int, {List<int> items})> both() => _$worker.both();

  @override
  Future<bool> input((int, {List<int> items}) both, (int, List<dynamic>) pos,
          ({int count, List<dynamic> items}) named) =>
      _$worker.input(both, pos, named);

  @override
  Future<({int count, List<dynamic> items})> named() => _$worker.named();

  @override
  Future<(int, List<dynamic>)> unnamed() => _$worker.unnamed();

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

/// Worker pool for TestRecordTypes
base class _$TestRecordTypesWorkerPool
    extends sq.WorkerPool<TestRecordTypesWorker> implements TestRecordTypes {
  _$TestRecordTypesWorkerPool(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestRecordTypesWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestRecordTypesWorkerPool.vm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestRecordTypesWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestRecordTypesWorkerPool.js(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestRecordTypesWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestRecordTypesWorkerPool.wasm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestRecordTypesWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Future<(int, {List<int> items})> both() => execute((w) => w.both());

  @override
  Future<bool> input((int, {List<int> items}) both, (int, List<dynamic>) pos,
          ({int count, List<dynamic> items}) named) =>
      execute((w) => w.input(both, pos, named));

  @override
  Future<({int count, List<dynamic> items})> named() =>
      execute((w) => w.named());

  @override
  Future<(int, List<dynamic>)> unnamed() => execute((w) => w.unnamed());

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestRecordTypes
base class TestRecordTypesWorkerPool
    with Releasable
    implements _$TestRecordTypesWorkerPool {
  TestRecordTypesWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestRecordTypesWorkerPool(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRecordTypesWorkerPool(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestRecordTypesWorkerPool.vm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRecordTypesWorkerPool.vm(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestRecordTypesWorkerPool.js(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRecordTypesWorkerPool.js(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestRecordTypesWorkerPool.wasm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRecordTypesWorkerPool.wasm(
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$TestRecordTypesWorkerPool _$pool;

  static final Finalizer<_$TestRecordTypesWorkerPool> _finalizer =
      Finalizer<_$TestRecordTypesWorkerPool>((p) {
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
  Future<(int, {List<int> items})> both() => _$pool.both();

  @override
  Future<bool> input((int, {List<int> items}) both, (int, List<dynamic>) pos,
          ({int count, List<dynamic> items}) named) =>
      _$pool.input(both, pos, named);

  @override
  Future<({int count, List<dynamic> items})> named() => _$pool.named();

  @override
  Future<(int, List<dynamic>)> unnamed() => _$pool.unnamed();

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
  int stop([bool Function(TestRecordTypesWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestRecordTypesWorker worker, bool removed) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestRecordTypesWorker worker, bool removed)? listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestRecordTypesWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestRecordTypesWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestRecordTypesWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestRecordTypesWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

/// WorkerService class for TestRequiredSuperParam
class _$TestRequiredSuperParamWorkerService extends TestRequiredSuperParam
    implements sq.WorkerService {
  _$TestRequiredSuperParamWorkerService({required super.path}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$clearId: ($) => clear(),
  });

  static const int _$clearId = 1;
}

/// Service initializer for TestRequiredSuperParam
sq.WorkerService $TestRequiredSuperParamInitializer(sq.WorkerRequest $$) =>
    _$TestRequiredSuperParamWorkerService(path: _$X.$19($$.args[0]));

/// Worker for TestRequiredSuperParam
base class _$TestRequiredSuperParamWorker extends sq.Worker
    implements TestRequiredSuperParam {
  _$TestRequiredSuperParamWorker(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRequiredSuperParamActivator(sq.Squadron.platformType),
            args: [path]);

  _$TestRequiredSuperParamWorker.vm(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRequiredSuperParamActivator(sq.SquadronPlatformType.vm),
            args: [path]);

  _$TestRequiredSuperParamWorker.js(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRequiredSuperParamActivator(sq.SquadronPlatformType.js),
            args: [path],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestRequiredSuperParamWorker.wasm(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRequiredSuperParamActivator(sq.SquadronPlatformType.wasm),
            args: [path]);

  @override
  final String path;

  @override
  Future<void> clear() => send(_$TestRequiredSuperParamWorkerService._$clearId,
          args: [], inspectRequest: true, inspectResponse: true)
      .then(_$X.$6);

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestRequiredSuperParam
base class TestRequiredSuperParamWorker
    with Releasable
    implements _$TestRequiredSuperParamWorker {
  TestRequiredSuperParamWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  TestRequiredSuperParamWorker(
      {required String path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRequiredSuperParamWorker(
            path: path,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestRequiredSuperParamWorker.vm(
      {required String path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRequiredSuperParamWorker.vm(
            path: path,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestRequiredSuperParamWorker.js(
      {required String path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRequiredSuperParamWorker.js(
            path: path,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestRequiredSuperParamWorker.wasm(
      {required String path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRequiredSuperParamWorker.wasm(
            path: path,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  @override
  String get path => _$worker.path;

  final _$TestRequiredSuperParamWorker _$worker;

  static final Finalizer<_$TestRequiredSuperParamWorker> _finalizer =
      Finalizer<_$TestRequiredSuperParamWorker>((w) {
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
  Future<void> clear() => _$worker.clear();

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

/// Worker pool for TestRequiredSuperParam
base class _$TestRequiredSuperParamWorkerPool
    extends sq.WorkerPool<TestRequiredSuperParamWorker>
    implements TestRequiredSuperParam {
  _$TestRequiredSuperParamWorkerPool(
      {required this.path,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestRequiredSuperParamWorker(
                  path: path,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestRequiredSuperParamWorkerPool.vm(
      {required this.path,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestRequiredSuperParamWorker.vm(
                  path: path,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestRequiredSuperParamWorkerPool.js(
      {required this.path,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestRequiredSuperParamWorker.js(
                  path: path,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$TestRequiredSuperParamWorkerPool.wasm(
      {required this.path,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestRequiredSuperParamWorker.wasm(
                  path: path,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final String path;

  @override
  Future<void> clear() => execute((w) => w.clear());

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestRequiredSuperParam
base class TestRequiredSuperParamWorkerPool
    with Releasable
    implements _$TestRequiredSuperParamWorkerPool {
  TestRequiredSuperParamWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  TestRequiredSuperParamWorkerPool(
      {required String path,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRequiredSuperParamWorkerPool(
            path: path,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestRequiredSuperParamWorkerPool.vm(
      {required String path,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRequiredSuperParamWorkerPool.vm(
            path: path,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestRequiredSuperParamWorkerPool.js(
      {required String path,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRequiredSuperParamWorkerPool.js(
            path: path,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  TestRequiredSuperParamWorkerPool.wasm(
      {required String path,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestRequiredSuperParamWorkerPool.wasm(
            path: path,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  @override
  String get path => _$pool.path;

  final _$TestRequiredSuperParamWorkerPool _$pool;

  static final Finalizer<_$TestRequiredSuperParamWorkerPool> _finalizer =
      Finalizer<_$TestRequiredSuperParamWorkerPool>((p) {
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
  Future<void> clear() => _$pool.clear();

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
  int stop([bool Function(TestRequiredSuperParamWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestRequiredSuperParamWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestRequiredSuperParamWorker worker, bool removed)?
              listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
          Future<T> Function(TestRequiredSuperParamWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
          Stream<T> Function(TestRequiredSuperParamWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestRequiredSuperParamWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestRequiredSuperParamWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, sq.CommandHandler> operations = sq.WorkerService.noOperations;
}

class _$X {
  static final $0 = sq.Squadron.converter.value<int>();
  static final $1 = sq.Squadron.converter.nullable($0);
  static final $2 = (($) => ($ as typed_data.Int8List).buffer);
  static final $3 = sq.Squadron.converter.nullable($2);
  static final $4 = sq.Squadron.converter.typedData<typed_data.Int8List>();
  static final $5 = sq.Squadron.converter.nullable($4);
  static final $6 = sq.Squadron.converter.value<void>();
  static final $7 = sq.Squadron.converter.list<int>();
  static final $8 = (((int, {List<int> items}) $) => [$.$1, _$X.$7($.items)]);
  static final $9 = sq.Squadron.converter.list<int>(_$X.$0);
  static final $10 = (($) {
    $ as List;
    return (_$X.$0($[0]), items: _$X.$9($[1]));
  });
  static final $11 = sq.Squadron.converter.value<dynamic>();
  static final $12 = sq.Squadron.converter.list<dynamic>(_$X.$11);
  static final $13 = (($) {
    $ as List;
    return (_$X.$0($[0]), _$X.$12($[1]));
  });
  static final $14 = (($) {
    $ as List;
    return (count: _$X.$0($[0]), items: _$X.$12($[1]));
  });
  static final $15 = sq.Squadron.converter.list<dynamic>();
  static final $16 =
      ((({int count, List<dynamic> items}) $) => [$.count, _$X.$15($.items)]);
  static final $17 = (((int, List<dynamic>) $) => [$.$1, _$X.$15($.$2)]);
  static final $18 = sq.Squadron.converter.value<bool>();
  static final $19 = sq.Squadron.converter.value<String>();
}
