// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../test_services.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.1.0 (Squadron 7.1.0)
// **************************************************************************

/// Command ids used in operations map

/// WorkerService operations for TestParameterLess
extension on TestParameterLess {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestParameterLess, implements the public interface to invoke the
/// remote service.
mixin _$TestParameterLess$Invoker on sq.Invoker implements TestParameterLess {}

/// Facade for TestParameterLess, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestParameterLess$Facade implements TestParameterLess {}

/// WorkerService class for TestParameterLess
class _$TestParameterLess$WorkerService extends TestParameterLess
    implements sq.WorkerService {
  _$TestParameterLess$WorkerService() : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestParameterLess
sq.WorkerService $TestParameterLessInitializer(sq.WorkerRequest $req) =>
    _$TestParameterLess$WorkerService();

/// Worker for TestParameterLess
base class _$TestParameterLessWorker extends sq.Worker
    with _$TestParameterLess$Invoker, _$TestParameterLess$Facade
    implements TestParameterLess {
  _$TestParameterLessWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestParameterLessWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestParameterLessWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestParameterLessWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  @override
  List? getStartArgs() => null;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestParameterLess
base class TestParameterLessWorker
    with Releasable
    implements _$TestParameterLessWorker {
  TestParameterLessWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestParameterLess
base class _$TestParameterLessWorkerPool
    extends sq.WorkerPool<TestParameterLessWorker>
    with _$TestParameterLess$Facade
    implements TestParameterLess {
  _$TestParameterLessWorkerPool(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestParameterLessWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestParameterLessWorkerPool.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestParameterLessWorker.vm(
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestParameterLessWorkerPool.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestParameterLessWorker.js(
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestParameterLessWorkerPool.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestParameterLessWorker.wasm(
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestParameterLess
base class TestParameterLessWorkerPool
    with Releasable
    implements _$TestParameterLessWorkerPool {
  TestParameterLessWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestParameterLessWorkerPool(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestParameterLessWorkerPool(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestParameterLessWorkerPool.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestParameterLessWorkerPool.vm(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestParameterLessWorkerPool.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestParameterLessWorkerPool.js(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestParameterLessWorkerPool.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestParameterLessWorkerPool.wasm(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$TestParameterLessWorkerPool _$pool;

  static final Finalizer<_$TestParameterLessWorkerPool> _finalizer =
      Finalizer<_$TestParameterLessWorkerPool>((p) {
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
  int stop([bool Function(TestParameterLessWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestReqPositional
extension on TestReqPositional {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestReqPositional, implements the public interface to invoke the
/// remote service.
mixin _$TestReqPositional$Invoker on sq.Invoker implements TestReqPositional {}

/// Facade for TestReqPositional, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestReqPositional$Facade implements TestReqPositional {}

/// WorkerService class for TestReqPositional
class _$TestReqPositional$WorkerService extends TestReqPositional
    implements sq.WorkerService {
  _$TestReqPositional$WorkerService(super.arg1) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestReqPositional
sq.WorkerService $TestReqPositionalInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestReqPositional$WorkerService($dsr.$0($req.args[0]));
}

/// Worker for TestReqPositional
base class _$TestReqPositionalWorker extends sq.Worker
    with _$TestReqPositional$Invoker, _$TestReqPositional$Facade
    implements TestReqPositional {
  _$TestReqPositionalWorker(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestReqPositionalActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestReqPositionalWorker.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestReqPositionalActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestReqPositionalWorker.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestReqPositionalActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestReqPositionalWorker.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestReqPositionalActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestReqPositional
base class TestReqPositionalWorker
    with Releasable
    implements _$TestReqPositionalWorker {
  TestReqPositionalWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestReqPositional
base class _$TestReqPositionalWorkerPool
    extends sq.WorkerPool<TestReqPositionalWorker>
    with _$TestReqPositional$Facade
    implements TestReqPositional {
  _$TestReqPositionalWorkerPool(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestReqPositionalWorker(
                arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestReqPositionalWorkerPool.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalWorker.vm(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestReqPositionalWorkerPool.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalWorker.js(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestReqPositionalWorkerPool.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalWorker.wasm(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestReqPositional
base class TestReqPositionalWorkerPool
    with Releasable
    implements _$TestReqPositionalWorkerPool {
  TestReqPositionalWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestReqPositionalWorkerPool(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestReqPositionalWorkerPool(arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestReqPositionalWorkerPool.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestReqPositionalWorkerPool.vm(arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestReqPositionalWorkerPool.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestReqPositionalWorkerPool.js(arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestReqPositionalWorkerPool.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestReqPositionalWorkerPool.wasm(arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$TestReqPositionalWorkerPool _$pool;

  static final Finalizer<_$TestReqPositionalWorkerPool> _finalizer =
      Finalizer<_$TestReqPositionalWorkerPool>((p) {
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
  int stop([bool Function(TestReqPositionalWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullPositional
extension on TestOptNullPositional {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullPositional, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullPositional$Invoker on sq.Invoker
    implements TestOptNullPositional {}

/// Facade for TestOptNullPositional, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullPositional$Facade implements TestOptNullPositional {}

/// WorkerService class for TestOptNullPositional
class _$TestOptNullPositional$WorkerService extends TestOptNullPositional
    implements sq.WorkerService {
  _$TestOptNullPositional$WorkerService([super.arg1]) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullPositional
sq.WorkerService $TestOptNullPositionalInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullPositional$WorkerService($dsr.$1($req.args[0]));
}

/// Worker for TestOptNullPositional
base class _$TestOptNullPositionalWorker extends sq.Worker
    with _$TestOptNullPositional$Invoker, _$TestOptNullPositional$Facade
    implements TestOptNullPositional {
  _$TestOptNullPositionalWorker(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullPositionalActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullPositionalWorker.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullPositionalActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullPositionalWorker.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullPositionalActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullPositionalWorker.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullPositionalActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullPositional
base class TestOptNullPositionalWorker
    with Releasable
    implements _$TestOptNullPositionalWorker {
  TestOptNullPositionalWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptNullPositional
base class _$TestOptNullPositionalWorkerPool
    extends sq.WorkerPool<TestOptNullPositionalWorker>
    with _$TestOptNullPositional$Facade
    implements TestOptNullPositional {
  _$TestOptNullPositionalWorkerPool(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalWorker(arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalWorkerPool.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalWorkerPool.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalWorkerPool.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullPositional
base class TestOptNullPositionalWorkerPool
    with Releasable
    implements _$TestOptNullPositionalWorkerPool {
  TestOptNullPositionalWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptNullPositionalWorkerPool(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullPositionalWorkerPool(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullPositionalWorkerPool.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullPositionalWorkerPool.vm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullPositionalWorkerPool.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullPositionalWorkerPool.js(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullPositionalWorkerPool.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullPositionalWorkerPool.wasm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  final _$TestOptNullPositionalWorkerPool _$pool;

  static final Finalizer<_$TestOptNullPositionalWorkerPool> _finalizer =
      Finalizer<_$TestOptNullPositionalWorkerPool>((p) {
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
  int stop([bool Function(TestOptNullPositionalWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptDefPositional
extension on TestOptDefPositional {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptDefPositional, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefPositional$Invoker on sq.Invoker
    implements TestOptDefPositional {}

/// Facade for TestOptDefPositional, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptDefPositional$Facade implements TestOptDefPositional {}

/// WorkerService class for TestOptDefPositional
class _$TestOptDefPositional$WorkerService extends TestOptDefPositional
    implements sq.WorkerService {
  _$TestOptDefPositional$WorkerService([super.arg1 = 0]) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptDefPositional
sq.WorkerService $TestOptDefPositionalInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptDefPositional$WorkerService($dsr.$0($req.args[0]));
}

/// Worker for TestOptDefPositional
base class _$TestOptDefPositionalWorker extends sq.Worker
    with _$TestOptDefPositional$Invoker, _$TestOptDefPositional$Facade
    implements TestOptDefPositional {
  _$TestOptDefPositionalWorker(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefPositionalActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefPositionalWorker.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefPositionalActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefPositionalWorker.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefPositionalActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefPositionalWorker.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefPositionalActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptDefPositional
base class TestOptDefPositionalWorker
    with Releasable
    implements _$TestOptDefPositionalWorker {
  TestOptDefPositionalWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptDefPositional
base class _$TestOptDefPositionalWorkerPool
    extends sq.WorkerPool<TestOptDefPositionalWorker>
    with _$TestOptDefPositional$Facade
    implements TestOptDefPositional {
  _$TestOptDefPositionalWorkerPool(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalWorker(arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalWorkerPool.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalWorkerPool.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalWorkerPool.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptDefPositional
base class TestOptDefPositionalWorkerPool
    with Releasable
    implements _$TestOptDefPositionalWorkerPool {
  TestOptDefPositionalWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptDefPositionalWorkerPool(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptDefPositionalWorkerPool(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptDefPositionalWorkerPool.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptDefPositionalWorkerPool.vm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptDefPositionalWorkerPool.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptDefPositionalWorkerPool.js(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptDefPositionalWorkerPool.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptDefPositionalWorkerPool.wasm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  final _$TestOptDefPositionalWorkerPool _$pool;

  static final Finalizer<_$TestOptDefPositionalWorkerPool> _finalizer =
      Finalizer<_$TestOptDefPositionalWorkerPool>((p) {
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
  int stop([bool Function(TestOptDefPositionalWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullDefPositional
extension on TestOptNullDefPositional {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullDefPositional, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefPositional$Invoker on sq.Invoker
    implements TestOptNullDefPositional {}

/// Facade for TestOptNullDefPositional, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullDefPositional$Facade implements TestOptNullDefPositional {}

/// WorkerService class for TestOptNullDefPositional
class _$TestOptNullDefPositional$WorkerService extends TestOptNullDefPositional
    implements sq.WorkerService {
  _$TestOptNullDefPositional$WorkerService([super.arg1 = 0]) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullDefPositional
sq.WorkerService $TestOptNullDefPositionalInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullDefPositional$WorkerService($dsr.$1($req.args[0]));
}

/// Worker for TestOptNullDefPositional
base class _$TestOptNullDefPositionalWorker extends sq.Worker
    with _$TestOptNullDefPositional$Invoker, _$TestOptNullDefPositional$Facade
    implements TestOptNullDefPositional {
  _$TestOptNullDefPositionalWorker(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullDefPositionalActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalWorker.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullDefPositionalActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalWorker.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullDefPositionalActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalWorker.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullDefPositionalActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullDefPositional
base class TestOptNullDefPositionalWorker
    with Releasable
    implements _$TestOptNullDefPositionalWorker {
  TestOptNullDefPositionalWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptNullDefPositional
base class _$TestOptNullDefPositionalWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalWorker>
    with _$TestOptNullDefPositional$Facade
    implements TestOptNullDefPositional {
  _$TestOptNullDefPositionalWorkerPool(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalWorker(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalWorkerPool.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalWorkerPool.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalWorkerPool.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullDefPositional
base class TestOptNullDefPositionalWorkerPool
    with Releasable
    implements _$TestOptNullDefPositionalWorkerPool {
  TestOptNullDefPositionalWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptNullDefPositionalWorkerPool(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullDefPositionalWorkerPool(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullDefPositionalWorkerPool.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullDefPositionalWorkerPool.vm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullDefPositionalWorkerPool.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullDefPositionalWorkerPool.js(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullDefPositionalWorkerPool.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullDefPositionalWorkerPool.wasm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  final _$TestOptNullDefPositionalWorkerPool _$pool;

  static final Finalizer<_$TestOptNullDefPositionalWorkerPool> _finalizer =
      Finalizer<_$TestOptNullDefPositionalWorkerPool>((p) {
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
  int stop([bool Function(TestOptNullDefPositionalWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestReqPositionalField
extension on TestReqPositionalField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestReqPositionalField, implements the public interface to invoke the
/// remote service.
mixin _$TestReqPositionalField$Invoker on sq.Invoker
    implements TestReqPositionalField {}

/// Facade for TestReqPositionalField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestReqPositionalField$Facade implements TestReqPositionalField {}

/// WorkerService class for TestReqPositionalField
class _$TestReqPositionalField$WorkerService extends TestReqPositionalField
    implements sq.WorkerService {
  _$TestReqPositionalField$WorkerService(super.arg1) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestReqPositionalField
sq.WorkerService $TestReqPositionalFieldInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestReqPositionalField$WorkerService($dsr.$0($req.args[0]));
}

/// Worker for TestReqPositionalField
base class _$TestReqPositionalFieldWorker extends sq.Worker
    with _$TestReqPositionalField$Invoker, _$TestReqPositionalField$Facade
    implements TestReqPositionalField {
  _$TestReqPositionalFieldWorker(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestReqPositionalFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestReqPositionalFieldWorker.vm(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestReqPositionalFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestReqPositionalFieldWorker.js(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestReqPositionalFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestReqPositionalFieldWorker.wasm(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestReqPositionalFieldActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  @override
  final int arg1;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestReqPositionalField
base class TestReqPositionalFieldWorker
    with Releasable
    implements _$TestReqPositionalFieldWorker {
  TestReqPositionalFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestReqPositionalField
base class _$TestReqPositionalFieldWorkerPool
    extends sq.WorkerPool<TestReqPositionalFieldWorker>
    with _$TestReqPositionalField$Facade
    implements TestReqPositionalField {
  _$TestReqPositionalFieldWorkerPool(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalFieldWorker(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestReqPositionalFieldWorkerPool.vm(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalFieldWorker.vm(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestReqPositionalFieldWorkerPool.js(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalFieldWorker.js(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestReqPositionalFieldWorkerPool.wasm(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalFieldWorker.wasm(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final int arg1;

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestReqPositionalField
base class TestReqPositionalFieldWorkerPool
    with Releasable
    implements _$TestReqPositionalFieldWorkerPool {
  TestReqPositionalFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestReqPositionalFieldWorkerPool(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestReqPositionalFieldWorkerPool(arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestReqPositionalFieldWorkerPool.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestReqPositionalFieldWorkerPool.vm(arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestReqPositionalFieldWorkerPool.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestReqPositionalFieldWorkerPool.js(arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestReqPositionalFieldWorkerPool.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestReqPositionalFieldWorkerPool.wasm(arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  @override
  int get arg1 => _$pool.arg1;

  final _$TestReqPositionalFieldWorkerPool _$pool;

  static final Finalizer<_$TestReqPositionalFieldWorkerPool> _finalizer =
      Finalizer<_$TestReqPositionalFieldWorkerPool>((p) {
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
  int stop([bool Function(TestReqPositionalFieldWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullPositionalField
extension on TestOptNullPositionalField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullPositionalField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullPositionalField$Invoker on sq.Invoker
    implements TestOptNullPositionalField {}

/// Facade for TestOptNullPositionalField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullPositionalField$Facade
    implements TestOptNullPositionalField {}

/// WorkerService class for TestOptNullPositionalField
class _$TestOptNullPositionalField$WorkerService
    extends TestOptNullPositionalField implements sq.WorkerService {
  _$TestOptNullPositionalField$WorkerService([super.arg1]) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullPositionalField
sq.WorkerService $TestOptNullPositionalFieldInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullPositionalField$WorkerService($dsr.$1($req.args[0]));
}

/// Worker for TestOptNullPositionalField
base class _$TestOptNullPositionalFieldWorker extends sq.Worker
    with
        _$TestOptNullPositionalField$Invoker,
        _$TestOptNullPositionalField$Facade
    implements TestOptNullPositionalField {
  _$TestOptNullPositionalFieldWorker(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullPositionalFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullPositionalFieldWorker.vm(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullPositionalFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullPositionalFieldWorker.js(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullPositionalFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullPositionalFieldWorker.wasm(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullPositionalFieldActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  @override
  final int? arg1;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullPositionalField
base class TestOptNullPositionalFieldWorker
    with Releasable
    implements _$TestOptNullPositionalFieldWorker {
  TestOptNullPositionalFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptNullPositionalField
base class _$TestOptNullPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptNullPositionalFieldWorker>
    with _$TestOptNullPositionalField$Facade
    implements TestOptNullPositionalField {
  _$TestOptNullPositionalFieldWorkerPool(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalFieldWorker(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalFieldWorkerPool.vm(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalFieldWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalFieldWorkerPool.js(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalFieldWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalFieldWorkerPool.wasm(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalFieldWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final int? arg1;

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullPositionalField
base class TestOptNullPositionalFieldWorkerPool
    with Releasable
    implements _$TestOptNullPositionalFieldWorkerPool {
  TestOptNullPositionalFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptNullPositionalFieldWorkerPool(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullPositionalFieldWorkerPool(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullPositionalFieldWorkerPool.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullPositionalFieldWorkerPool.vm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullPositionalFieldWorkerPool.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullPositionalFieldWorkerPool.js(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullPositionalFieldWorkerPool.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullPositionalFieldWorkerPool.wasm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  @override
  int? get arg1 => _$pool.arg1;

  final _$TestOptNullPositionalFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullPositionalFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptNullPositionalFieldWorkerPool>((p) {
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
  int stop(
          [bool Function(TestOptNullPositionalFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptDefPositionalField
extension on TestOptDefPositionalField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptDefPositionalField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefPositionalField$Invoker on sq.Invoker
    implements TestOptDefPositionalField {}

/// Facade for TestOptDefPositionalField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptDefPositionalField$Facade implements TestOptDefPositionalField {}

/// WorkerService class for TestOptDefPositionalField
class _$TestOptDefPositionalField$WorkerService
    extends TestOptDefPositionalField implements sq.WorkerService {
  _$TestOptDefPositionalField$WorkerService([super.arg1 = 0]) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptDefPositionalField
sq.WorkerService $TestOptDefPositionalFieldInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptDefPositionalField$WorkerService($dsr.$0($req.args[0]));
}

/// Worker for TestOptDefPositionalField
base class _$TestOptDefPositionalFieldWorker extends sq.Worker
    with _$TestOptDefPositionalField$Invoker, _$TestOptDefPositionalField$Facade
    implements TestOptDefPositionalField {
  _$TestOptDefPositionalFieldWorker(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefPositionalFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefPositionalFieldWorker.vm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefPositionalFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefPositionalFieldWorker.js(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefPositionalFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefPositionalFieldWorker.wasm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefPositionalFieldActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  @override
  final int arg1;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptDefPositionalField
base class TestOptDefPositionalFieldWorker
    with Releasable
    implements _$TestOptDefPositionalFieldWorker {
  TestOptDefPositionalFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptDefPositionalField
base class _$TestOptDefPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptDefPositionalFieldWorker>
    with _$TestOptDefPositionalField$Facade
    implements TestOptDefPositionalField {
  _$TestOptDefPositionalFieldWorkerPool(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalFieldWorker(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalFieldWorkerPool.vm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalFieldWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalFieldWorkerPool.js(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalFieldWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalFieldWorkerPool.wasm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalFieldWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final int arg1;

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptDefPositionalField
base class TestOptDefPositionalFieldWorkerPool
    with Releasable
    implements _$TestOptDefPositionalFieldWorkerPool {
  TestOptDefPositionalFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptDefPositionalFieldWorkerPool(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptDefPositionalFieldWorkerPool(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptDefPositionalFieldWorkerPool.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptDefPositionalFieldWorkerPool.vm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptDefPositionalFieldWorkerPool.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptDefPositionalFieldWorkerPool.js(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptDefPositionalFieldWorkerPool.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptDefPositionalFieldWorkerPool.wasm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  @override
  int get arg1 => _$pool.arg1;

  final _$TestOptDefPositionalFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptDefPositionalFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptDefPositionalFieldWorkerPool>((p) {
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
  int stop(
          [bool Function(TestOptDefPositionalFieldWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullDefPositionalField
extension on TestOptNullDefPositionalField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullDefPositionalField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefPositionalField$Invoker on sq.Invoker
    implements TestOptNullDefPositionalField {}

/// Facade for TestOptNullDefPositionalField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullDefPositionalField$Facade
    implements TestOptNullDefPositionalField {}

/// WorkerService class for TestOptNullDefPositionalField
class _$TestOptNullDefPositionalField$WorkerService
    extends TestOptNullDefPositionalField implements sq.WorkerService {
  _$TestOptNullDefPositionalField$WorkerService([super.arg1 = 0]) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullDefPositionalField
sq.WorkerService $TestOptNullDefPositionalFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullDefPositionalField$WorkerService($dsr.$1($req.args[0]));
}

/// Worker for TestOptNullDefPositionalField
base class _$TestOptNullDefPositionalFieldWorker extends sq.Worker
    with
        _$TestOptNullDefPositionalField$Invoker,
        _$TestOptNullDefPositionalField$Facade
    implements TestOptNullDefPositionalField {
  _$TestOptNullDefPositionalFieldWorker(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullDefPositionalFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalFieldWorker.vm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullDefPositionalFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalFieldWorker.js(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullDefPositionalFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalFieldWorker.wasm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullDefPositionalFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  @override
  final int? arg1;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullDefPositionalField
base class TestOptNullDefPositionalFieldWorker
    with Releasable
    implements _$TestOptNullDefPositionalFieldWorker {
  TestOptNullDefPositionalFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptNullDefPositionalField
base class _$TestOptNullDefPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalFieldWorker>
    with _$TestOptNullDefPositionalField$Facade
    implements TestOptNullDefPositionalField {
  _$TestOptNullDefPositionalFieldWorkerPool(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalFieldWorker(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalFieldWorkerPool.vm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalFieldWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalFieldWorkerPool.js(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalFieldWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalFieldWorkerPool.wasm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalFieldWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final int? arg1;

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullDefPositionalField
base class TestOptNullDefPositionalFieldWorkerPool
    with Releasable
    implements _$TestOptNullDefPositionalFieldWorkerPool {
  TestOptNullDefPositionalFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptNullDefPositionalFieldWorkerPool(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullDefPositionalFieldWorkerPool(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullDefPositionalFieldWorkerPool.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullDefPositionalFieldWorkerPool.vm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullDefPositionalFieldWorkerPool.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullDefPositionalFieldWorkerPool.js(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullDefPositionalFieldWorkerPool.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullDefPositionalFieldWorkerPool.wasm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  @override
  int? get arg1 => _$pool.arg1;

  final _$TestOptNullDefPositionalFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullDefPositionalFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptNullDefPositionalFieldWorkerPool>((p) {
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
  int stop(
          [bool Function(TestOptNullDefPositionalFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestReqPositionalPrivateField
extension on TestReqPositionalPrivateField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestReqPositionalPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestReqPositionalPrivateField$Invoker on sq.Invoker
    implements TestReqPositionalPrivateField {}

/// Facade for TestReqPositionalPrivateField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestReqPositionalPrivateField$Facade
    implements TestReqPositionalPrivateField {
  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestReqPositionalPrivateField
class _$TestReqPositionalPrivateField$WorkerService
    extends TestReqPositionalPrivateField implements sq.WorkerService {
  _$TestReqPositionalPrivateField$WorkerService(super.arg1) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestReqPositionalPrivateField
sq.WorkerService $TestReqPositionalPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestReqPositionalPrivateField$WorkerService($dsr.$0($req.args[0]));
}

/// Worker for TestReqPositionalPrivateField
base class _$TestReqPositionalPrivateFieldWorker extends sq.Worker
    with
        _$TestReqPositionalPrivateField$Invoker,
        _$TestReqPositionalPrivateField$Facade
    implements TestReqPositionalPrivateField {
  _$TestReqPositionalPrivateFieldWorker(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestReqPositionalPrivateFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestReqPositionalPrivateFieldWorker.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super(
            $TestReqPositionalPrivateFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestReqPositionalPrivateFieldWorker.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super(
            $TestReqPositionalPrivateFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestReqPositionalPrivateFieldWorker.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super(
            $TestReqPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestReqPositionalPrivateField
base class TestReqPositionalPrivateFieldWorker
    with Releasable
    implements _$TestReqPositionalPrivateFieldWorker {
  TestReqPositionalPrivateFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  int get _arg1 => _$worker._arg1;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestReqPositionalPrivateField
base class _$TestReqPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestReqPositionalPrivateFieldWorker>
    with _$TestReqPositionalPrivateField$Facade
    implements TestReqPositionalPrivateField {
  _$TestReqPositionalPrivateFieldWorkerPool(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalPrivateFieldWorker(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestReqPositionalPrivateFieldWorkerPool.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalPrivateFieldWorker.vm(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestReqPositionalPrivateFieldWorkerPool.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalPrivateFieldWorker.js(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestReqPositionalPrivateFieldWorkerPool.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalPrivateFieldWorker.wasm(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestReqPositionalPrivateField
base class TestReqPositionalPrivateFieldWorkerPool
    with Releasable
    implements _$TestReqPositionalPrivateFieldWorkerPool {
  TestReqPositionalPrivateFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestReqPositionalPrivateFieldWorkerPool(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestReqPositionalPrivateFieldWorkerPool(arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestReqPositionalPrivateFieldWorkerPool.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestReqPositionalPrivateFieldWorkerPool.vm(arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestReqPositionalPrivateFieldWorkerPool.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestReqPositionalPrivateFieldWorkerPool.js(arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestReqPositionalPrivateFieldWorkerPool.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestReqPositionalPrivateFieldWorkerPool.wasm(arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$TestReqPositionalPrivateFieldWorkerPool _$pool;

  static final Finalizer<_$TestReqPositionalPrivateFieldWorkerPool> _finalizer =
      Finalizer<_$TestReqPositionalPrivateFieldWorkerPool>((p) {
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
  int stop(
          [bool Function(TestReqPositionalPrivateFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullPositionalPrivateField
extension on TestOptNullPositionalPrivateField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullPositionalPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullPositionalPrivateField$Invoker on sq.Invoker
    implements TestOptNullPositionalPrivateField {}

/// Facade for TestOptNullPositionalPrivateField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullPositionalPrivateField$Facade
    implements TestOptNullPositionalPrivateField {
  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullPositionalPrivateField
class _$TestOptNullPositionalPrivateField$WorkerService
    extends TestOptNullPositionalPrivateField implements sq.WorkerService {
  _$TestOptNullPositionalPrivateField$WorkerService([super.arg1]) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullPositionalPrivateField
sq.WorkerService $TestOptNullPositionalPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullPositionalPrivateField$WorkerService(
      $dsr.$1($req.args[0]));
}

/// Worker for TestOptNullPositionalPrivateField
base class _$TestOptNullPositionalPrivateFieldWorker extends sq.Worker
    with
        _$TestOptNullPositionalPrivateField$Invoker,
        _$TestOptNullPositionalPrivateField$Facade
    implements TestOptNullPositionalPrivateField {
  _$TestOptNullPositionalPrivateFieldWorker(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalPrivateFieldWorker.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalPrivateFieldWorker.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalPrivateFieldWorker.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullPositionalPrivateField
base class TestOptNullPositionalPrivateFieldWorker
    with Releasable
    implements _$TestOptNullPositionalPrivateFieldWorker {
  TestOptNullPositionalPrivateFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  int? get _arg1 => _$worker._arg1;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptNullPositionalPrivateField
base class _$TestOptNullPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullPositionalPrivateFieldWorker>
    with _$TestOptNullPositionalPrivateField$Facade
    implements TestOptNullPositionalPrivateField {
  _$TestOptNullPositionalPrivateFieldWorkerPool(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalPrivateFieldWorker(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalPrivateFieldWorkerPool.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalPrivateFieldWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalPrivateFieldWorkerPool.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalPrivateFieldWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullPositionalPrivateFieldWorkerPool.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalPrivateFieldWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullPositionalPrivateField
base class TestOptNullPositionalPrivateFieldWorkerPool
    with Releasable
    implements _$TestOptNullPositionalPrivateFieldWorkerPool {
  TestOptNullPositionalPrivateFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptNullPositionalPrivateFieldWorkerPool(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullPositionalPrivateFieldWorkerPool(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullPositionalPrivateFieldWorkerPool.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullPositionalPrivateFieldWorkerPool.vm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullPositionalPrivateFieldWorkerPool.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullPositionalPrivateFieldWorkerPool.js(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullPositionalPrivateFieldWorkerPool.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullPositionalPrivateFieldWorkerPool.wasm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  final _$TestOptNullPositionalPrivateFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullPositionalPrivateFieldWorkerPool>
      _finalizer =
      Finalizer<_$TestOptNullPositionalPrivateFieldWorkerPool>((p) {
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
  int stop(
          [bool Function(TestOptNullPositionalPrivateFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptDefPositionalPrivateField
extension on TestOptDefPositionalPrivateField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptDefPositionalPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefPositionalPrivateField$Invoker on sq.Invoker
    implements TestOptDefPositionalPrivateField {}

/// Facade for TestOptDefPositionalPrivateField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptDefPositionalPrivateField$Facade
    implements TestOptDefPositionalPrivateField {
  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptDefPositionalPrivateField
class _$TestOptDefPositionalPrivateField$WorkerService
    extends TestOptDefPositionalPrivateField implements sq.WorkerService {
  _$TestOptDefPositionalPrivateField$WorkerService([super.arg1 = 0]) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptDefPositionalPrivateField
sq.WorkerService $TestOptDefPositionalPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptDefPositionalPrivateField$WorkerService(
      $dsr.$0($req.args[0]));
}

/// Worker for TestOptDefPositionalPrivateField
base class _$TestOptDefPositionalPrivateFieldWorker extends sq.Worker
    with
        _$TestOptDefPositionalPrivateField$Invoker,
        _$TestOptDefPositionalPrivateField$Facade
    implements TestOptDefPositionalPrivateField {
  _$TestOptDefPositionalPrivateFieldWorker(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalPrivateFieldWorker.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalPrivateFieldWorker.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalPrivateFieldWorker.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptDefPositionalPrivateField
base class TestOptDefPositionalPrivateFieldWorker
    with Releasable
    implements _$TestOptDefPositionalPrivateFieldWorker {
  TestOptDefPositionalPrivateFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  int get _arg1 => _$worker._arg1;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptDefPositionalPrivateField
base class _$TestOptDefPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptDefPositionalPrivateFieldWorker>
    with _$TestOptDefPositionalPrivateField$Facade
    implements TestOptDefPositionalPrivateField {
  _$TestOptDefPositionalPrivateFieldWorkerPool(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalPrivateFieldWorker(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalPrivateFieldWorkerPool.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalPrivateFieldWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalPrivateFieldWorkerPool.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalPrivateFieldWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefPositionalPrivateFieldWorkerPool.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalPrivateFieldWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptDefPositionalPrivateField
base class TestOptDefPositionalPrivateFieldWorkerPool
    with Releasable
    implements _$TestOptDefPositionalPrivateFieldWorkerPool {
  TestOptDefPositionalPrivateFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptDefPositionalPrivateFieldWorkerPool(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptDefPositionalPrivateFieldWorkerPool(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptDefPositionalPrivateFieldWorkerPool.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptDefPositionalPrivateFieldWorkerPool.vm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptDefPositionalPrivateFieldWorkerPool.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptDefPositionalPrivateFieldWorkerPool.js(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptDefPositionalPrivateFieldWorkerPool.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptDefPositionalPrivateFieldWorkerPool.wasm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  final _$TestOptDefPositionalPrivateFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptDefPositionalPrivateFieldWorkerPool>
      _finalizer = Finalizer<_$TestOptDefPositionalPrivateFieldWorkerPool>((p) {
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
  int stop(
          [bool Function(TestOptDefPositionalPrivateFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullDefPositionalPrivateField
extension on TestOptNullDefPositionalPrivateField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullDefPositionalPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefPositionalPrivateField$Invoker on sq.Invoker
    implements TestOptNullDefPositionalPrivateField {}

/// Facade for TestOptNullDefPositionalPrivateField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullDefPositionalPrivateField$Facade
    implements TestOptNullDefPositionalPrivateField {
  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullDefPositionalPrivateField
class _$TestOptNullDefPositionalPrivateField$WorkerService
    extends TestOptNullDefPositionalPrivateField implements sq.WorkerService {
  _$TestOptNullDefPositionalPrivateField$WorkerService([super.arg1 = 0])
      : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullDefPositionalPrivateField
sq.WorkerService $TestOptNullDefPositionalPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullDefPositionalPrivateField$WorkerService(
      $dsr.$1($req.args[0]));
}

/// Worker for TestOptNullDefPositionalPrivateField
base class _$TestOptNullDefPositionalPrivateFieldWorker extends sq.Worker
    with
        _$TestOptNullDefPositionalPrivateField$Invoker,
        _$TestOptNullDefPositionalPrivateField$Facade
    implements TestOptNullDefPositionalPrivateField {
  _$TestOptNullDefPositionalPrivateFieldWorker(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalPrivateFieldWorker.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalPrivateFieldWorker.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalPrivateFieldWorker.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullDefPositionalPrivateField
base class TestOptNullDefPositionalPrivateFieldWorker
    with Releasable
    implements _$TestOptNullDefPositionalPrivateFieldWorker {
  TestOptNullDefPositionalPrivateFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  int? get _arg1 => _$worker._arg1;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptNullDefPositionalPrivateField
base class _$TestOptNullDefPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalPrivateFieldWorker>
    with _$TestOptNullDefPositionalPrivateField$Facade
    implements TestOptNullDefPositionalPrivateField {
  _$TestOptNullDefPositionalPrivateFieldWorkerPool(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalPrivateFieldWorker(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalPrivateFieldWorkerPool.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalPrivateFieldWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalPrivateFieldWorkerPool.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalPrivateFieldWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefPositionalPrivateFieldWorkerPool.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalPrivateFieldWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullDefPositionalPrivateField
base class TestOptNullDefPositionalPrivateFieldWorkerPool
    with Releasable
    implements _$TestOptNullDefPositionalPrivateFieldWorkerPool {
  TestOptNullDefPositionalPrivateFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptNullDefPositionalPrivateFieldWorkerPool(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullDefPositionalPrivateFieldWorkerPool(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullDefPositionalPrivateFieldWorkerPool.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullDefPositionalPrivateFieldWorkerPool.vm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullDefPositionalPrivateFieldWorkerPool.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullDefPositionalPrivateFieldWorkerPool.js(
            arg1, threadHook, exceptionManager, concurrencySettings));

  TestOptNullDefPositionalPrivateFieldWorkerPool.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$TestOptNullDefPositionalPrivateFieldWorkerPool.wasm(
            arg1, threadHook, exceptionManager, concurrencySettings));

  final _$TestOptNullDefPositionalPrivateFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullDefPositionalPrivateFieldWorkerPool>
      _finalizer =
      Finalizer<_$TestOptNullDefPositionalPrivateFieldWorkerPool>((p) {
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
  int stop(
          [bool Function(TestOptNullDefPositionalPrivateFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullNamed
extension on TestOptNullNamed {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullNamed, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullNamed$Invoker on sq.Invoker implements TestOptNullNamed {}

/// Facade for TestOptNullNamed, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullNamed$Facade implements TestOptNullNamed {}

/// WorkerService class for TestOptNullNamed
class _$TestOptNullNamed$WorkerService extends TestOptNullNamed
    implements sq.WorkerService {
  _$TestOptNullNamed$WorkerService({super.arg1}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullNamed
sq.WorkerService $TestOptNullNamedInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullNamed$WorkerService(arg1: $dsr.$1($req.args[0]));
}

/// Worker for TestOptNullNamed
base class _$TestOptNullNamedWorker extends sq.Worker
    with _$TestOptNullNamed$Invoker, _$TestOptNullNamed$Facade
    implements TestOptNullNamed {
  _$TestOptNullNamedWorker(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullNamedActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullNamedWorker.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullNamedActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullNamedWorker.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullNamedActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullNamedWorker.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullNamedActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullNamed
base class TestOptNullNamedWorker
    with Releasable
    implements _$TestOptNullNamedWorker {
  TestOptNullNamedWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptNullNamed
base class _$TestOptNullNamedWorkerPool
    extends sq.WorkerPool<TestOptNullNamedWorker>
    with _$TestOptNullNamed$Facade
    implements TestOptNullNamed {
  _$TestOptNullNamedWorkerPool(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestOptNullNamedWorker(
                arg1: arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullNamedWorkerPool.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestOptNullNamedWorker.vm(
                arg1: arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullNamedWorkerPool.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestOptNullNamedWorker.js(
                arg1: arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullNamedWorkerPool.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullNamed
base class TestOptNullNamedWorkerPool
    with Releasable
    implements _$TestOptNullNamedWorkerPool {
  TestOptNullNamedWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptNullNamedWorkerPool(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullNamedWorkerPool(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullNamedWorkerPool.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullNamedWorkerPool.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullNamedWorkerPool.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullNamedWorkerPool.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullNamedWorkerPool.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullNamedWorkerPool.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$TestOptNullNamedWorkerPool _$pool;

  static final Finalizer<_$TestOptNullNamedWorkerPool> _finalizer =
      Finalizer<_$TestOptNullNamedWorkerPool>((p) {
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
  int stop([bool Function(TestOptNullNamedWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptDefNamed
extension on TestOptDefNamed {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptDefNamed, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefNamed$Invoker on sq.Invoker implements TestOptDefNamed {}

/// Facade for TestOptDefNamed, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptDefNamed$Facade implements TestOptDefNamed {}

/// WorkerService class for TestOptDefNamed
class _$TestOptDefNamed$WorkerService extends TestOptDefNamed
    implements sq.WorkerService {
  _$TestOptDefNamed$WorkerService({super.arg1 = 0}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptDefNamed
sq.WorkerService $TestOptDefNamedInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptDefNamed$WorkerService(arg1: $dsr.$0($req.args[0]));
}

/// Worker for TestOptDefNamed
base class _$TestOptDefNamedWorker extends sq.Worker
    with _$TestOptDefNamed$Invoker, _$TestOptDefNamed$Facade
    implements TestOptDefNamed {
  _$TestOptDefNamedWorker(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefNamedActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefNamedWorker.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefNamedActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefNamedWorker.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefNamedActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefNamedWorker.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefNamedActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptDefNamed
base class TestOptDefNamedWorker
    with Releasable
    implements _$TestOptDefNamedWorker {
  TestOptDefNamedWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptDefNamed
base class _$TestOptDefNamedWorkerPool
    extends sq.WorkerPool<TestOptDefNamedWorker>
    with _$TestOptDefNamed$Facade
    implements TestOptDefNamed {
  _$TestOptDefNamedWorkerPool(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestOptDefNamedWorker(
                arg1: arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefNamedWorkerPool.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestOptDefNamedWorker.vm(
                arg1: arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefNamedWorkerPool.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestOptDefNamedWorker.js(
                arg1: arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefNamedWorkerPool.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptDefNamed
base class TestOptDefNamedWorkerPool
    with Releasable
    implements _$TestOptDefNamedWorkerPool {
  TestOptDefNamedWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptDefNamedWorkerPool(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptDefNamedWorkerPool(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptDefNamedWorkerPool.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptDefNamedWorkerPool.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptDefNamedWorkerPool.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptDefNamedWorkerPool.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptDefNamedWorkerPool.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptDefNamedWorkerPool.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$TestOptDefNamedWorkerPool _$pool;

  static final Finalizer<_$TestOptDefNamedWorkerPool> _finalizer =
      Finalizer<_$TestOptDefNamedWorkerPool>((p) {
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
  int stop([bool Function(TestOptDefNamedWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullDefNamed
extension on TestOptNullDefNamed {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullDefNamed, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefNamed$Invoker on sq.Invoker
    implements TestOptNullDefNamed {}

/// Facade for TestOptNullDefNamed, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullDefNamed$Facade implements TestOptNullDefNamed {}

/// WorkerService class for TestOptNullDefNamed
class _$TestOptNullDefNamed$WorkerService extends TestOptNullDefNamed
    implements sq.WorkerService {
  _$TestOptNullDefNamed$WorkerService({super.arg1 = 0}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullDefNamed
sq.WorkerService $TestOptNullDefNamedInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullDefNamed$WorkerService(arg1: $dsr.$1($req.args[0]));
}

/// Worker for TestOptNullDefNamed
base class _$TestOptNullDefNamedWorker extends sq.Worker
    with _$TestOptNullDefNamed$Invoker, _$TestOptNullDefNamed$Facade
    implements TestOptNullDefNamed {
  _$TestOptNullDefNamedWorker(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullDefNamedActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullDefNamedWorker.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullDefNamedActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullDefNamedWorker.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullDefNamedActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullDefNamedWorker.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullDefNamedActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullDefNamed
base class TestOptNullDefNamedWorker
    with Releasable
    implements _$TestOptNullDefNamedWorker {
  TestOptNullDefNamedWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptNullDefNamed
base class _$TestOptNullDefNamedWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedWorker>
    with _$TestOptNullDefNamed$Facade
    implements TestOptNullDefNamed {
  _$TestOptNullDefNamedWorkerPool(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestOptNullDefNamedWorker(
                arg1: arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedWorkerPool.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedWorker.vm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedWorkerPool.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedWorker.js(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedWorkerPool.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullDefNamed
base class TestOptNullDefNamedWorkerPool
    with Releasable
    implements _$TestOptNullDefNamedWorkerPool {
  TestOptNullDefNamedWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptNullDefNamedWorkerPool(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullDefNamedWorkerPool(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullDefNamedWorkerPool.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullDefNamedWorkerPool.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullDefNamedWorkerPool.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullDefNamedWorkerPool.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullDefNamedWorkerPool.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullDefNamedWorkerPool.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$TestOptNullDefNamedWorkerPool _$pool;

  static final Finalizer<_$TestOptNullDefNamedWorkerPool> _finalizer =
      Finalizer<_$TestOptNullDefNamedWorkerPool>((p) {
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
  int stop([bool Function(TestOptNullDefNamedWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullNamedField
extension on TestOptNullNamedField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullNamedField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullNamedField$Invoker on sq.Invoker
    implements TestOptNullNamedField {}

/// Facade for TestOptNullNamedField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullNamedField$Facade implements TestOptNullNamedField {}

/// WorkerService class for TestOptNullNamedField
class _$TestOptNullNamedField$WorkerService extends TestOptNullNamedField
    implements sq.WorkerService {
  _$TestOptNullNamedField$WorkerService({super.arg1}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullNamedField
sq.WorkerService $TestOptNullNamedFieldInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullNamedField$WorkerService(arg1: $dsr.$1($req.args[0]));
}

/// Worker for TestOptNullNamedField
base class _$TestOptNullNamedFieldWorker extends sq.Worker
    with _$TestOptNullNamedField$Invoker, _$TestOptNullNamedField$Facade
    implements TestOptNullNamedField {
  _$TestOptNullNamedFieldWorker(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullNamedFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullNamedFieldWorker.vm(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullNamedFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullNamedFieldWorker.js(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullNamedFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullNamedFieldWorker.wasm(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullNamedFieldActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  @override
  final int? arg1;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullNamedField
base class TestOptNullNamedFieldWorker
    with Releasable
    implements _$TestOptNullNamedFieldWorker {
  TestOptNullNamedFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptNullNamedField
base class _$TestOptNullNamedFieldWorkerPool
    extends sq.WorkerPool<TestOptNullNamedFieldWorker>
    with _$TestOptNullNamedField$Facade
    implements TestOptNullNamedField {
  _$TestOptNullNamedFieldWorkerPool(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedFieldWorker(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullNamedFieldWorkerPool.vm(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedFieldWorker.vm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullNamedFieldWorkerPool.js(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedFieldWorker.js(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullNamedFieldWorkerPool.wasm(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedFieldWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final int? arg1;

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullNamedField
base class TestOptNullNamedFieldWorkerPool
    with Releasable
    implements _$TestOptNullNamedFieldWorkerPool {
  TestOptNullNamedFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptNullNamedFieldWorkerPool(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullNamedFieldWorkerPool(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullNamedFieldWorkerPool.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullNamedFieldWorkerPool.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullNamedFieldWorkerPool.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullNamedFieldWorkerPool.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullNamedFieldWorkerPool.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullNamedFieldWorkerPool.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  @override
  int? get arg1 => _$pool.arg1;

  final _$TestOptNullNamedFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullNamedFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptNullNamedFieldWorkerPool>((p) {
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
  int stop([bool Function(TestOptNullNamedFieldWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptDefNamedField
extension on TestOptDefNamedField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptDefNamedField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefNamedField$Invoker on sq.Invoker
    implements TestOptDefNamedField {}

/// Facade for TestOptDefNamedField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptDefNamedField$Facade implements TestOptDefNamedField {}

/// WorkerService class for TestOptDefNamedField
class _$TestOptDefNamedField$WorkerService extends TestOptDefNamedField
    implements sq.WorkerService {
  _$TestOptDefNamedField$WorkerService({super.arg1 = 0}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptDefNamedField
sq.WorkerService $TestOptDefNamedFieldInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptDefNamedField$WorkerService(arg1: $dsr.$0($req.args[0]));
}

/// Worker for TestOptDefNamedField
base class _$TestOptDefNamedFieldWorker extends sq.Worker
    with _$TestOptDefNamedField$Invoker, _$TestOptDefNamedField$Facade
    implements TestOptDefNamedField {
  _$TestOptDefNamedFieldWorker(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefNamedFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefNamedFieldWorker.vm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefNamedFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefNamedFieldWorker.js(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefNamedFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefNamedFieldWorker.wasm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefNamedFieldActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  @override
  final int arg1;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptDefNamedField
base class TestOptDefNamedFieldWorker
    with Releasable
    implements _$TestOptDefNamedFieldWorker {
  TestOptDefNamedFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptDefNamedField
base class _$TestOptDefNamedFieldWorkerPool
    extends sq.WorkerPool<TestOptDefNamedFieldWorker>
    with _$TestOptDefNamedField$Facade
    implements TestOptDefNamedField {
  _$TestOptDefNamedFieldWorkerPool(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedFieldWorker(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefNamedFieldWorkerPool.vm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedFieldWorker.vm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefNamedFieldWorkerPool.js(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedFieldWorker.js(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefNamedFieldWorkerPool.wasm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedFieldWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final int arg1;

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptDefNamedField
base class TestOptDefNamedFieldWorkerPool
    with Releasable
    implements _$TestOptDefNamedFieldWorkerPool {
  TestOptDefNamedFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptDefNamedFieldWorkerPool(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptDefNamedFieldWorkerPool(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptDefNamedFieldWorkerPool.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptDefNamedFieldWorkerPool.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptDefNamedFieldWorkerPool.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptDefNamedFieldWorkerPool.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptDefNamedFieldWorkerPool.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptDefNamedFieldWorkerPool.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  @override
  int get arg1 => _$pool.arg1;

  final _$TestOptDefNamedFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptDefNamedFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptDefNamedFieldWorkerPool>((p) {
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
  int stop([bool Function(TestOptDefNamedFieldWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullDefNamedField
extension on TestOptNullDefNamedField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullDefNamedField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefNamedField$Invoker on sq.Invoker
    implements TestOptNullDefNamedField {}

/// Facade for TestOptNullDefNamedField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullDefNamedField$Facade implements TestOptNullDefNamedField {}

/// WorkerService class for TestOptNullDefNamedField
class _$TestOptNullDefNamedField$WorkerService extends TestOptNullDefNamedField
    implements sq.WorkerService {
  _$TestOptNullDefNamedField$WorkerService({super.arg1 = 0}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullDefNamedField
sq.WorkerService $TestOptNullDefNamedFieldInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullDefNamedField$WorkerService(arg1: $dsr.$1($req.args[0]));
}

/// Worker for TestOptNullDefNamedField
base class _$TestOptNullDefNamedFieldWorker extends sq.Worker
    with _$TestOptNullDefNamedField$Invoker, _$TestOptNullDefNamedField$Facade
    implements TestOptNullDefNamedField {
  _$TestOptNullDefNamedFieldWorker(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullDefNamedFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullDefNamedFieldWorker.vm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullDefNamedFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullDefNamedFieldWorker.js(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullDefNamedFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullDefNamedFieldWorker.wasm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullDefNamedFieldActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  @override
  final int? arg1;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullDefNamedField
base class TestOptNullDefNamedFieldWorker
    with Releasable
    implements _$TestOptNullDefNamedFieldWorker {
  TestOptNullDefNamedFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptNullDefNamedField
base class _$TestOptNullDefNamedFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedFieldWorker>
    with _$TestOptNullDefNamedField$Facade
    implements TestOptNullDefNamedField {
  _$TestOptNullDefNamedFieldWorkerPool(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedFieldWorker(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedFieldWorkerPool.vm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedFieldWorker.vm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedFieldWorkerPool.js(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedFieldWorker.js(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedFieldWorkerPool.wasm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedFieldWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final int? arg1;

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullDefNamedField
base class TestOptNullDefNamedFieldWorkerPool
    with Releasable
    implements _$TestOptNullDefNamedFieldWorkerPool {
  TestOptNullDefNamedFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptNullDefNamedFieldWorkerPool(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullDefNamedFieldWorkerPool(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullDefNamedFieldWorkerPool.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullDefNamedFieldWorkerPool.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullDefNamedFieldWorkerPool.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullDefNamedFieldWorkerPool.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullDefNamedFieldWorkerPool.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullDefNamedFieldWorkerPool.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  @override
  int? get arg1 => _$pool.arg1;

  final _$TestOptNullDefNamedFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullDefNamedFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptNullDefNamedFieldWorkerPool>((p) {
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
  int stop([bool Function(TestOptNullDefNamedFieldWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map
const int _$barId = 1;
const int _$fooId = 2;

/// WorkerService operations for TestTypedData
extension on TestTypedData {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$barId: ($req) async {
          final typed_data.ByteBuffer? $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await bar($dsr.$2($req.args[0]),
                title: $dsr.$4($req.args[1]),
                isLandscape: $dsr.$5($req.args[2]),
                columns: $dsr.$7($req.args[3]),
                columnWidths: $dsr.$10($req.args[4]),
                fontData: $dsr.$12($req.args[5]),
                titleFonts: $dsr.$14($req.args[6]),
                dataFonts: $dsr.$14($req.args[7]));
          } finally {}
          return $res;
        },
        _$fooId: ($req) async {
          final typed_data.Uint8List? $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await foo($dsr.$2($req.args[0]),
                isLandscape: $dsr.$5($req.args[1]));
          } finally {}
          return $res;
        },
      });
}

/// Invoker for TestTypedData, implements the public interface to invoke the
/// remote service.
mixin _$TestTypedData$Invoker on sq.Invoker implements TestTypedData {
  @override
  Future<typed_data.ByteBuffer?> bar(List<int> bytes,
      {String? title,
      bool isLandscape = true,
      List<String>? columns,
      Map<int, double>? columnWidths,
      typed_data.ByteData? fontData,
      Map<int, typed_data.ByteData>? titleFonts,
      Map<int, typed_data.ByteData>? dataFonts}) async {
    final dynamic $res = await send(_$barId, args: [
      bytes,
      title,
      isLandscape,
      columns,
      columnWidths,
      fontData,
      titleFonts,
      dataFonts
    ]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$16($res);
    } finally {}
  }

  @override
  Future<typed_data.Uint8List?> foo(List<int> bytes,
      {bool isLandscape = true}) async {
    final dynamic $res = await send(_$fooId, args: [bytes, isLandscape]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$18($res);
    } finally {}
  }
}

/// Facade for TestTypedData, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestTypedData$Facade implements TestTypedData {}

/// WorkerService class for TestTypedData
class _$TestTypedData$WorkerService extends TestTypedData
    implements sq.WorkerService {
  _$TestTypedData$WorkerService() : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestTypedData
sq.WorkerService $TestTypedDataInitializer(sq.WorkerRequest $req) =>
    _$TestTypedData$WorkerService();

/// Worker for TestTypedData
base class _$TestTypedDataWorker extends sq.Worker
    with _$TestTypedData$Invoker, _$TestTypedData$Facade
    implements TestTypedData {
  _$TestTypedDataWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestTypedDataActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestTypedDataWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestTypedDataActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestTypedDataWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestTypedDataActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestTypedDataWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestTypedDataActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  @override
  List? getStartArgs() => null;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestTypedData
base class TestTypedDataWorker
    with Releasable
    implements _$TestTypedDataWorker {
  TestTypedDataWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
  }

  TestTypedDataWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestTypedDataWorker(
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestTypedDataWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestTypedDataWorker.vm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestTypedDataWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestTypedDataWorker.js(
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestTypedDataWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestTypedDataWorker.wasm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  final _$TestTypedDataWorker _$worker;

  static final Finalizer<_$TestTypedDataWorker> _finalizer =
      Finalizer<_$TestTypedDataWorker>((w) {
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
  Future<typed_data.ByteBuffer?> bar(List<int> bytes,
          {String? title,
          bool isLandscape = true,
          List<String>? columns,
          Map<int, double>? columnWidths,
          typed_data.ByteData? fontData,
          Map<int, typed_data.ByteData>? titleFonts,
          Map<int, typed_data.ByteData>? dataFonts}) =>
      _$worker.bar(bytes,
          title: title,
          isLandscape: isLandscape,
          columns: columns,
          columnWidths: columnWidths,
          fontData: fontData,
          titleFonts: titleFonts,
          dataFonts: dataFonts);

  @override
  Future<typed_data.Uint8List?> foo(List<int> bytes,
          {bool isLandscape = true}) =>
      _$worker.foo(bytes, isLandscape: isLandscape);

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestTypedData
base class _$TestTypedDataWorkerPool extends sq.WorkerPool<TestTypedDataWorker>
    with _$TestTypedData$Facade
    implements TestTypedData {
  _$TestTypedDataWorkerPool(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestTypedDataWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestTypedDataWorkerPool.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestTypedDataWorker.vm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestTypedDataWorkerPool.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestTypedDataWorker.js(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestTypedDataWorkerPool.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestTypedDataWorker.wasm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  Future<typed_data.ByteBuffer?> bar(List<int> bytes,
          {String? title,
          bool isLandscape = true,
          List<String>? columns,
          Map<int, double>? columnWidths,
          typed_data.ByteData? fontData,
          Map<int, typed_data.ByteData>? titleFonts,
          Map<int, typed_data.ByteData>? dataFonts}) =>
      execute((w) => w.bar(bytes,
          title: title,
          isLandscape: isLandscape,
          columns: columns,
          columnWidths: columnWidths,
          fontData: fontData,
          titleFonts: titleFonts,
          dataFonts: dataFonts));

  @override
  Future<typed_data.Uint8List?> foo(List<int> bytes,
          {bool isLandscape = true}) =>
      execute((w) => w.foo(bytes, isLandscape: isLandscape));

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestTypedData
base class TestTypedDataWorkerPool
    with Releasable
    implements _$TestTypedDataWorkerPool {
  TestTypedDataWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestTypedDataWorkerPool(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestTypedDataWorkerPool(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestTypedDataWorkerPool.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestTypedDataWorkerPool.vm(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestTypedDataWorkerPool.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestTypedDataWorkerPool.js(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestTypedDataWorkerPool.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestTypedDataWorkerPool.wasm(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$TestTypedDataWorkerPool _$pool;

  static final Finalizer<_$TestTypedDataWorkerPool> _finalizer =
      Finalizer<_$TestTypedDataWorkerPool>((p) {
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
  Future<typed_data.ByteBuffer?> bar(List<int> bytes,
          {String? title,
          bool isLandscape = true,
          List<String>? columns,
          Map<int, double>? columnWidths,
          typed_data.ByteData? fontData,
          Map<int, typed_data.ByteData>? titleFonts,
          Map<int, typed_data.ByteData>? dataFonts}) =>
      _$pool.bar(bytes,
          title: title,
          isLandscape: isLandscape,
          columns: columns,
          columnWidths: columnWidths,
          fontData: fontData,
          titleFonts: titleFonts,
          dataFonts: dataFonts);

  @override
  Future<typed_data.Uint8List?> foo(List<int> bytes,
          {bool isLandscape = true}) =>
      _$pool.foo(bytes, isLandscape: isLandscape);

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
  int stop([bool Function(TestTypedDataWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestTypedDataWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestTypedDataWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestTypedDataWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestTypedDataWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullNamedPrivateField
extension on TestOptNullNamedPrivateField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullNamedPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullNamedPrivateField$Invoker on sq.Invoker
    implements TestOptNullNamedPrivateField {}

/// Facade for TestOptNullNamedPrivateField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullNamedPrivateField$Facade
    implements TestOptNullNamedPrivateField {
  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullNamedPrivateField
class _$TestOptNullNamedPrivateField$WorkerService
    extends TestOptNullNamedPrivateField implements sq.WorkerService {
  _$TestOptNullNamedPrivateField$WorkerService({super.arg1}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullNamedPrivateField
sq.WorkerService $TestOptNullNamedPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullNamedPrivateField$WorkerService(
      arg1: $dsr.$1($req.args[0]));
}

/// Worker for TestOptNullNamedPrivateField
base class _$TestOptNullNamedPrivateFieldWorker extends sq.Worker
    with
        _$TestOptNullNamedPrivateField$Invoker,
        _$TestOptNullNamedPrivateField$Facade
    implements TestOptNullNamedPrivateField {
  _$TestOptNullNamedPrivateFieldWorker(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super($TestOptNullNamedPrivateFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptNullNamedPrivateFieldWorker.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullNamedPrivateFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullNamedPrivateFieldWorker.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullNamedPrivateFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullNamedPrivateFieldWorker.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullNamedPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullNamedPrivateField
base class TestOptNullNamedPrivateFieldWorker
    with Releasable
    implements _$TestOptNullNamedPrivateFieldWorker {
  TestOptNullNamedPrivateFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  int? get _arg1 => _$worker._arg1;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptNullNamedPrivateField
base class _$TestOptNullNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullNamedPrivateFieldWorker>
    with _$TestOptNullNamedPrivateField$Facade
    implements TestOptNullNamedPrivateField {
  _$TestOptNullNamedPrivateFieldWorkerPool(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedPrivateFieldWorker(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullNamedPrivateFieldWorkerPool.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedPrivateFieldWorker.vm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullNamedPrivateFieldWorkerPool.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedPrivateFieldWorker.js(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullNamedPrivateFieldWorkerPool.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedPrivateFieldWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullNamedPrivateField
base class TestOptNullNamedPrivateFieldWorkerPool
    with Releasable
    implements _$TestOptNullNamedPrivateFieldWorkerPool {
  TestOptNullNamedPrivateFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptNullNamedPrivateFieldWorkerPool(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullNamedPrivateFieldWorkerPool(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullNamedPrivateFieldWorkerPool.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullNamedPrivateFieldWorkerPool.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullNamedPrivateFieldWorkerPool.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullNamedPrivateFieldWorkerPool.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullNamedPrivateFieldWorkerPool.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullNamedPrivateFieldWorkerPool.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$TestOptNullNamedPrivateFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullNamedPrivateFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptNullNamedPrivateFieldWorkerPool>((p) {
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
  int stop(
          [bool Function(TestOptNullNamedPrivateFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptDefNamedPrivateField
extension on TestOptDefNamedPrivateField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptDefNamedPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefNamedPrivateField$Invoker on sq.Invoker
    implements TestOptDefNamedPrivateField {}

/// Facade for TestOptDefNamedPrivateField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptDefNamedPrivateField$Facade
    implements TestOptDefNamedPrivateField {
  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptDefNamedPrivateField
class _$TestOptDefNamedPrivateField$WorkerService
    extends TestOptDefNamedPrivateField implements sq.WorkerService {
  _$TestOptDefNamedPrivateField$WorkerService({super.arg1 = 0}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptDefNamedPrivateField
sq.WorkerService $TestOptDefNamedPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptDefNamedPrivateField$WorkerService(
      arg1: $dsr.$0($req.args[0]));
}

/// Worker for TestOptDefNamedPrivateField
base class _$TestOptDefNamedPrivateFieldWorker extends sq.Worker
    with
        _$TestOptDefNamedPrivateField$Invoker,
        _$TestOptDefNamedPrivateField$Facade
    implements TestOptDefNamedPrivateField {
  _$TestOptDefNamedPrivateFieldWorker(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefNamedPrivateFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefNamedPrivateFieldWorker.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefNamedPrivateFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefNamedPrivateFieldWorker.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super($TestOptDefNamedPrivateFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestOptDefNamedPrivateFieldWorker.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(arg1)];
        })(),
        super(
            $TestOptDefNamedPrivateFieldActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptDefNamedPrivateField
base class TestOptDefNamedPrivateFieldWorker
    with Releasable
    implements _$TestOptDefNamedPrivateFieldWorker {
  TestOptDefNamedPrivateFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  int get _arg1 => _$worker._arg1;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptDefNamedPrivateField
base class _$TestOptDefNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptDefNamedPrivateFieldWorker>
    with _$TestOptDefNamedPrivateField$Facade
    implements TestOptDefNamedPrivateField {
  _$TestOptDefNamedPrivateFieldWorkerPool(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedPrivateFieldWorker(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefNamedPrivateFieldWorkerPool.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedPrivateFieldWorker.vm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefNamedPrivateFieldWorkerPool.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedPrivateFieldWorker.js(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptDefNamedPrivateFieldWorkerPool.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedPrivateFieldWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptDefNamedPrivateField
base class TestOptDefNamedPrivateFieldWorkerPool
    with Releasable
    implements _$TestOptDefNamedPrivateFieldWorkerPool {
  TestOptDefNamedPrivateFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptDefNamedPrivateFieldWorkerPool(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptDefNamedPrivateFieldWorkerPool(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptDefNamedPrivateFieldWorkerPool.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptDefNamedPrivateFieldWorkerPool.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptDefNamedPrivateFieldWorkerPool.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptDefNamedPrivateFieldWorkerPool.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptDefNamedPrivateFieldWorkerPool.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptDefNamedPrivateFieldWorkerPool.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$TestOptDefNamedPrivateFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptDefNamedPrivateFieldWorkerPool> _finalizer =
      Finalizer<_$TestOptDefNamedPrivateFieldWorkerPool>((p) {
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
  int stop(
          [bool Function(TestOptDefNamedPrivateFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullDefNamedPrivateField
extension on TestOptNullDefNamedPrivateField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullDefNamedPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefNamedPrivateField$Invoker on sq.Invoker
    implements TestOptNullDefNamedPrivateField {}

/// Facade for TestOptNullDefNamedPrivateField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullDefNamedPrivateField$Facade
    implements TestOptNullDefNamedPrivateField {
  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullDefNamedPrivateField
class _$TestOptNullDefNamedPrivateField$WorkerService
    extends TestOptNullDefNamedPrivateField implements sq.WorkerService {
  _$TestOptNullDefNamedPrivateField$WorkerService({super.arg1 = 0}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullDefNamedPrivateField
sq.WorkerService $TestOptNullDefNamedPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullDefNamedPrivateField$WorkerService(
      arg1: $dsr.$1($req.args[0]));
}

/// Worker for TestOptNullDefNamedPrivateField
base class _$TestOptNullDefNamedPrivateFieldWorker extends sq.Worker
    with
        _$TestOptNullDefNamedPrivateField$Invoker,
        _$TestOptNullDefNamedPrivateField$Facade
    implements TestOptNullDefNamedPrivateField {
  _$TestOptNullDefNamedPrivateFieldWorker(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullDefNamedPrivateFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedPrivateFieldWorker.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullDefNamedPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedPrivateFieldWorker.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullDefNamedPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedPrivateFieldWorker.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(arg1)];
        })(),
        super(
            $TestOptNullDefNamedPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullDefNamedPrivateField
base class TestOptNullDefNamedPrivateFieldWorker
    with Releasable
    implements _$TestOptNullDefNamedPrivateFieldWorker {
  TestOptNullDefNamedPrivateFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  int? get _arg1 => _$worker._arg1;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestOptNullDefNamedPrivateField
base class _$TestOptNullDefNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedPrivateFieldWorker>
    with _$TestOptNullDefNamedPrivateField$Facade
    implements TestOptNullDefNamedPrivateField {
  _$TestOptNullDefNamedPrivateFieldWorkerPool(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedPrivateFieldWorker(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedPrivateFieldWorkerPool.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedPrivateFieldWorker.vm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedPrivateFieldWorkerPool.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedPrivateFieldWorker.js(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedPrivateFieldWorkerPool.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedPrivateFieldWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestOptNullDefNamedPrivateField
base class TestOptNullDefNamedPrivateFieldWorkerPool
    with Releasable
    implements _$TestOptNullDefNamedPrivateFieldWorkerPool {
  TestOptNullDefNamedPrivateFieldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestOptNullDefNamedPrivateFieldWorkerPool(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullDefNamedPrivateFieldWorkerPool(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullDefNamedPrivateFieldWorkerPool.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullDefNamedPrivateFieldWorkerPool.vm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullDefNamedPrivateFieldWorkerPool.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullDefNamedPrivateFieldWorkerPool.js(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestOptNullDefNamedPrivateFieldWorkerPool.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestOptNullDefNamedPrivateFieldWorkerPool.wasm(
            arg1: arg1,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$TestOptNullDefNamedPrivateFieldWorkerPool _$pool;

  static final Finalizer<_$TestOptNullDefNamedPrivateFieldWorkerPool>
      _finalizer = Finalizer<_$TestOptNullDefNamedPrivateFieldWorkerPool>((p) {
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
  int stop(
          [bool Function(TestOptNullDefNamedPrivateFieldWorker worker)?
              predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map
const int _$getTypedDataId = 1;

/// WorkerService operations for TestPrefixedImportType
extension on TestPrefixedImportType {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$getTypedDataId: ($req) => getTypedData(),
      });
}

/// Invoker for TestPrefixedImportType, implements the public interface to invoke the
/// remote service.
mixin _$TestPrefixedImportType$Invoker on sq.Invoker
    implements TestPrefixedImportType {
  @override
  Future<typed_data.Int8List?> getTypedData() async {
    final dynamic $res = await send(_$getTypedDataId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$20($res);
    } finally {}
  }
}

/// Facade for TestPrefixedImportType, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestPrefixedImportType$Facade implements TestPrefixedImportType {}

/// WorkerService class for TestPrefixedImportType
class _$TestPrefixedImportType$WorkerService extends TestPrefixedImportType
    implements sq.WorkerService {
  _$TestPrefixedImportType$WorkerService(super.typedData) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestPrefixedImportType
sq.WorkerService $TestPrefixedImportTypeInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestPrefixedImportType$WorkerService($dsr.$19($req.args[0]));
}

/// Worker for TestPrefixedImportType
base class _$TestPrefixedImportTypeWorker extends sq.Worker
    with _$TestPrefixedImportType$Invoker, _$TestPrefixedImportType$Facade
    implements TestPrefixedImportType {
  _$TestPrefixedImportTypeWorker(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$2(typedData)];
        })(),
        super($TestPrefixedImportTypeActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestPrefixedImportTypeWorker.vm(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$2(typedData)];
        })(),
        super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestPrefixedImportTypeWorker.js(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$2(typedData)];
        })(),
        super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestPrefixedImportTypeWorker.wasm(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$2(typedData)];
        })(),
        super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  @override
  final typed_data.Int8List typedData;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestPrefixedImportType
base class TestPrefixedImportTypeWorker
    with Releasable
    implements _$TestPrefixedImportTypeWorker {
  TestPrefixedImportTypeWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  Future<typed_data.Int8List?> getTypedData() => _$worker.getTypedData();

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestPrefixedImportType
base class _$TestPrefixedImportTypeWorkerPool
    extends sq.WorkerPool<TestPrefixedImportTypeWorker>
    with _$TestPrefixedImportType$Facade
    implements TestPrefixedImportType {
  _$TestPrefixedImportTypeWorkerPool(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestPrefixedImportTypeWorker(typedData,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestPrefixedImportTypeWorkerPool.vm(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestPrefixedImportTypeWorker.vm(typedData,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestPrefixedImportTypeWorkerPool.js(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestPrefixedImportTypeWorker.js(typedData,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestPrefixedImportTypeWorkerPool.wasm(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestPrefixedImportTypeWorker.wasm(typedData,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final typed_data.Int8List typedData;

  @override
  Future<typed_data.Int8List?> getTypedData() =>
      execute((w) => w.getTypedData());

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestPrefixedImportType
base class TestPrefixedImportTypeWorkerPool
    with Releasable
    implements _$TestPrefixedImportTypeWorkerPool {
  TestPrefixedImportTypeWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestPrefixedImportTypeWorkerPool(typed_data.Int8List typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestPrefixedImportTypeWorkerPool(typedData,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestPrefixedImportTypeWorkerPool.vm(typed_data.Int8List typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestPrefixedImportTypeWorkerPool.vm(typedData,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestPrefixedImportTypeWorkerPool.js(typed_data.Int8List typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestPrefixedImportTypeWorkerPool.js(typedData,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestPrefixedImportTypeWorkerPool.wasm(typed_data.Int8List typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestPrefixedImportTypeWorkerPool.wasm(typedData,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  @override
  typed_data.Int8List get typedData => _$pool.typedData;

  final _$TestPrefixedImportTypeWorkerPool _$pool;

  static final Finalizer<_$TestPrefixedImportTypeWorkerPool> _finalizer =
      Finalizer<_$TestPrefixedImportTypeWorkerPool>((p) {
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
  int stop([bool Function(TestPrefixedImportTypeWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map
const int _$getStateId = 1;
const int _$setStateId = 2;

/// WorkerService operations for TestOptNullDefNamedPrivateNonFinalField
extension on TestOptNullDefNamedPrivateNonFinalField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$getStateId: ($req) => getState(),
        _$setStateId: ($req) {
          final $dsr = _$Deser(contextAware: false);
          return setState($dsr.$1($req.args[0]));
        },
      });
}

/// Invoker for TestOptNullDefNamedPrivateNonFinalField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefNamedPrivateNonFinalField$Invoker on sq.Invoker
    implements TestOptNullDefNamedPrivateNonFinalField {
  @override
  Future<int?> getState() async {
    final dynamic $res = await send(_$getStateId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$1($res);
    } finally {}
  }

  @override
  Future<void> setState(int? state) => send(_$setStateId, args: [state]);
}

/// Facade for TestOptNullDefNamedPrivateNonFinalField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullDefNamedPrivateNonFinalField$Facade
    implements TestOptNullDefNamedPrivateNonFinalField {
  @override
  // ignore: unused_element
  int? get _state => throw UnimplementedError();

  @override
  // ignore: unused_element
  set _state(void value) => throw UnimplementedError();
}

/// WorkerService class for TestOptNullDefNamedPrivateNonFinalField
class _$TestOptNullDefNamedPrivateNonFinalField$WorkerService
    extends TestOptNullDefNamedPrivateNonFinalField
    implements sq.WorkerService {
  _$TestOptNullDefNamedPrivateNonFinalField$WorkerService({super.state = 0})
      : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullDefNamedPrivateNonFinalField
sq.WorkerService $TestOptNullDefNamedPrivateNonFinalFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullDefNamedPrivateNonFinalField$WorkerService(
      state: $dsr.$1($req.args[0]));
}

/// Worker for TestOptNullDefNamedPrivateNonFinalField
base class _$TestOptNullDefNamedPrivateNonFinalFieldWorker extends sq.Worker
    with
        _$TestOptNullDefNamedPrivateNonFinalField$Invoker,
        _$TestOptNullDefNamedPrivateNonFinalField$Facade
    implements TestOptNullDefNamedPrivateNonFinalField {
  _$TestOptNullDefNamedPrivateNonFinalFieldWorker(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(state)];
        })(),
        super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.Squadron.platformType),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedPrivateNonFinalFieldWorker.vm(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(state)];
        })(),
        super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedPrivateNonFinalFieldWorker.js(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(state)];
        })(),
        super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  _$TestOptNullDefNamedPrivateNonFinalFieldWorker.wasm(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$1(state)];
        })(),
        super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestOptNullDefNamedPrivateNonFinalField
base class TestOptNullDefNamedPrivateNonFinalFieldWorker
    with Releasable
    implements _$TestOptNullDefNamedPrivateNonFinalFieldWorker {
  TestOptNullDefNamedPrivateNonFinalFieldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  Future<int?> getState() => _$worker.getState();

  @override
  Future<void> setState(int? state) => _$worker.setState(state);

  @override
  int? get _state => _$worker._state;

  @override
  set _state(void value) => _$worker._state = value;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map

/// WorkerService operations for TestInstallable
extension on TestInstallable {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestInstallable, implements the public interface to invoke the
/// remote service.
mixin _$TestInstallable$Invoker on sq.Invoker implements TestInstallable {}

/// Facade for TestInstallable, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestInstallable$Facade implements TestInstallable {
  @override
  FutureOr<void> install() => throw UnimplementedError();

  @override
  FutureOr<void> uninstall() => throw UnimplementedError();

  @override
  // ignore: unused_element
  int get _delay => throw UnimplementedError();
}

/// WorkerService class for TestInstallable
class _$TestInstallable$WorkerService extends TestInstallable
    implements sq.WorkerService {
  _$TestInstallable$WorkerService(super.delay) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestInstallable
sq.WorkerService $TestInstallableInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestInstallable$WorkerService($dsr.$0($req.args[0]));
}

/// Worker for TestInstallable
base class _$TestInstallableWorker extends sq.Worker
    with _$TestInstallable$Invoker, _$TestInstallable$Facade
    implements TestInstallable {
  _$TestInstallableWorker(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(delay)];
        })(),
        super($TestInstallableActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestInstallableWorker.vm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(delay)];
        })(),
        super($TestInstallableActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestInstallableWorker.js(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(delay)];
        })(),
        super($TestInstallableActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestInstallableWorker.wasm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(delay)];
        })(),
        super($TestInstallableActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestInstallable
base class TestInstallableWorker
    with Releasable
    implements _$TestInstallableWorker {
  TestInstallableWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  FutureOr<void> install() => _$worker.install();

  @override
  FutureOr<void> uninstall() => _$worker.uninstall();

  @override
  int get _delay => _$worker._delay;

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestInstallable
base class _$TestInstallableWorkerPool
    extends sq.WorkerPool<TestInstallableWorker>
    with _$TestInstallable$Facade
    implements TestInstallable {
  _$TestInstallableWorkerPool(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestInstallableWorker(
                delay,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestInstallableWorkerPool.vm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestInstallableWorker.vm(
                delay,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestInstallableWorkerPool.js(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestInstallableWorker.js(
                delay,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestInstallableWorkerPool.wasm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestInstallableWorker.wasm(delay,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestInstallable
base class TestInstallableWorkerPool
    with Releasable
    implements _$TestInstallableWorkerPool {
  TestInstallableWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestInstallableWorkerPool(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestInstallableWorkerPool(delay,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestInstallableWorkerPool.vm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestInstallableWorkerPool.vm(delay,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestInstallableWorkerPool.js(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestInstallableWorkerPool.js(delay,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestInstallableWorkerPool.wasm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestInstallableWorkerPool.wasm(delay,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$TestInstallableWorkerPool _$pool;

  static final Finalizer<_$TestInstallableWorkerPool> _finalizer =
      Finalizer<_$TestInstallableWorkerPool>((p) {
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
  int stop([bool Function(TestInstallableWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map
const int _$bothId = 1;
const int _$inputId = 2;
const int _$namedId = 3;
const int _$unnamedId = 4;

/// WorkerService operations for TestRecordTypes
extension on TestRecordTypes {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$bothId: ($req) async {
          final (int, {List<int> items}) $res = await both();
          try {
            final $sr = _$Ser(contextAware: false);
            return $sr.$3($res);
          } finally {}
        },
        _$inputId: ($req) async {
          final bool $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await input($dsr.$21($req.args[0]), $dsr.$24($req.args[1]),
                $dsr.$25($req.args[2]));
          } finally {}
          return $res;
        },
        _$namedId: ($req) async {
          final ({int count, List<dynamic> items}) $res = await named();
          try {
            final $sr = _$Ser(contextAware: false);
            return $sr.$4($res);
          } finally {}
        },
        _$unnamedId: ($req) async {
          final (int, List<dynamic>) $res = await unnamed();
          try {
            final $sr = _$Ser(contextAware: false);
            return $sr.$5($res);
          } finally {}
        },
      });
}

/// Invoker for TestRecordTypes, implements the public interface to invoke the
/// remote service.
mixin _$TestRecordTypes$Invoker on sq.Invoker implements TestRecordTypes {
  @override
  Future<(int, {List<int> items})> both() async {
    final dynamic $res = await send(_$bothId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$21($res);
    } finally {}
  }

  @override
  Future<bool> input((int, {List<int> items}) both, (int, List<dynamic>) pos,
      ({int count, List<dynamic> items}) named) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: false);
      $res = await send(_$inputId,
          args: [$sr.$3(both), $sr.$5(pos), $sr.$4(named)]);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$5($res);
    } finally {}
  }

  @override
  Future<({int count, List<dynamic> items})> named() async {
    final dynamic $res = await send(_$namedId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$25($res);
    } finally {}
  }

  @override
  Future<(int, List<dynamic>)> unnamed() async {
    final dynamic $res = await send(_$unnamedId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$24($res);
    } finally {}
  }
}

/// Facade for TestRecordTypes, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestRecordTypes$Facade implements TestRecordTypes {}

/// WorkerService class for TestRecordTypes
class _$TestRecordTypes$WorkerService extends TestRecordTypes
    implements sq.WorkerService {
  _$TestRecordTypes$WorkerService() : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestRecordTypes
sq.WorkerService $TestRecordTypesInitializer(sq.WorkerRequest $req) =>
    _$TestRecordTypes$WorkerService();

/// Worker for TestRecordTypes
base class _$TestRecordTypesWorker extends sq.Worker
    with _$TestRecordTypes$Invoker, _$TestRecordTypes$Facade
    implements TestRecordTypes {
  _$TestRecordTypesWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestRecordTypesWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestRecordTypesWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestRecordTypesWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  @override
  List? getStartArgs() => null;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestRecordTypes
base class TestRecordTypesWorker
    with Releasable
    implements _$TestRecordTypesWorker {
  TestRecordTypesWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestRecordTypes
base class _$TestRecordTypesWorkerPool
    extends sq.WorkerPool<TestRecordTypesWorker>
    with _$TestRecordTypes$Facade
    implements TestRecordTypes {
  _$TestRecordTypesWorkerPool(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestRecordTypesWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestRecordTypesWorkerPool.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestRecordTypesWorker.vm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestRecordTypesWorkerPool.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestRecordTypesWorker.js(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestRecordTypesWorkerPool.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestRecordTypesWorker.wasm(
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

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

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestRecordTypes
base class TestRecordTypesWorkerPool
    with Releasable
    implements _$TestRecordTypesWorkerPool {
  TestRecordTypesWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestRecordTypesWorkerPool(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestRecordTypesWorkerPool(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestRecordTypesWorkerPool.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestRecordTypesWorkerPool.vm(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestRecordTypesWorkerPool.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestRecordTypesWorkerPool.js(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestRecordTypesWorkerPool.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestRecordTypesWorkerPool.wasm(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$TestRecordTypesWorkerPool _$pool;

  static final Finalizer<_$TestRecordTypesWorkerPool> _finalizer =
      Finalizer<_$TestRecordTypesWorkerPool>((p) {
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
  int stop([bool Function(TestRecordTypesWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map
const int _$clearId = 1;

/// WorkerService operations for TestRequiredSuperParam
extension on TestRequiredSuperParam {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$clearId: ($req) => clear(),
      });
}

/// Invoker for TestRequiredSuperParam, implements the public interface to invoke the
/// remote service.
mixin _$TestRequiredSuperParam$Invoker on sq.Invoker
    implements TestRequiredSuperParam {
  @override
  Future<void> clear() => send(_$clearId);
}

/// Facade for TestRequiredSuperParam, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestRequiredSuperParam$Facade implements TestRequiredSuperParam {}

/// WorkerService class for TestRequiredSuperParam
class _$TestRequiredSuperParam$WorkerService extends TestRequiredSuperParam
    implements sq.WorkerService {
  _$TestRequiredSuperParam$WorkerService({required super.path}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestRequiredSuperParam
sq.WorkerService $TestRequiredSuperParamInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestRequiredSuperParam$WorkerService(path: $dsr.$3($req.args[0]));
}

/// Worker for TestRequiredSuperParam
base class _$TestRequiredSuperParamWorker extends sq.Worker
    with _$TestRequiredSuperParam$Invoker, _$TestRequiredSuperParam$Facade
    implements TestRequiredSuperParam {
  _$TestRequiredSuperParamWorker(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$6(path)];
        })(),
        super($TestRequiredSuperParamActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestRequiredSuperParamWorker.vm(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$6(path)];
        })(),
        super($TestRequiredSuperParamActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestRequiredSuperParamWorker.js(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$6(path)];
        })(),
        super($TestRequiredSuperParamActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestRequiredSuperParamWorker.wasm(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$6(path)];
        })(),
        super($TestRequiredSuperParamActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  @override
  final String path;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestRequiredSuperParam
base class TestRequiredSuperParamWorker
    with Releasable
    implements _$TestRequiredSuperParamWorker {
  TestRequiredSuperParamWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
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
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  Future<void> clear() => _$worker.clear();

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestRequiredSuperParam
base class _$TestRequiredSuperParamWorkerPool
    extends sq.WorkerPool<TestRequiredSuperParamWorker>
    with _$TestRequiredSuperParam$Facade
    implements TestRequiredSuperParam {
  _$TestRequiredSuperParamWorkerPool(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestRequiredSuperParamWorker(
                    path: path,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestRequiredSuperParamWorkerPool.vm(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestRequiredSuperParamWorker.vm(
                    path: path,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestRequiredSuperParamWorkerPool.js(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestRequiredSuperParamWorker.js(
                    path: path,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestRequiredSuperParamWorkerPool.wasm(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestRequiredSuperParamWorker.wasm(
                    path: path,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final String path;

  @override
  Future<void> clear() => execute((w) => w.clear());

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestRequiredSuperParam
base class TestRequiredSuperParamWorkerPool
    with Releasable
    implements _$TestRequiredSuperParamWorkerPool {
  TestRequiredSuperParamWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestRequiredSuperParamWorkerPool(
      {required String path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestRequiredSuperParamWorkerPool(
            path: path,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestRequiredSuperParamWorkerPool.vm(
      {required String path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestRequiredSuperParamWorkerPool.vm(
            path: path,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestRequiredSuperParamWorkerPool.js(
      {required String path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestRequiredSuperParamWorkerPool.js(
            path: path,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestRequiredSuperParamWorkerPool.wasm(
      {required String path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestRequiredSuperParamWorkerPool.wasm(
            path: path,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  @override
  String get path => _$pool.path;

  final _$TestRequiredSuperParamWorkerPool _$pool;

  static final Finalizer<_$TestRequiredSuperParamWorkerPool> _finalizer =
      Finalizer<_$TestRequiredSuperParamWorkerPool>((p) {
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
  int stop([bool Function(TestRequiredSuperParamWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
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
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Command ids used in operations map
const int _$addId = 1;

/// WorkerService operations for TestBigInt
extension on TestBigInt {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$addId: ($req) async {
          final BigInt $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await add($dsr.$26($req.args[0]), $dsr.$26($req.args[1]));
          } finally {}
          return $res;
        },
      });
}

/// Invoker for TestBigInt, implements the public interface to invoke the
/// remote service.
mixin _$TestBigInt$Invoker on sq.Invoker implements TestBigInt {
  @override
  Future<BigInt> add(BigInt a, BigInt b) async {
    final dynamic $res = await send(_$addId, args: [a, b]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$26($res);
    } finally {}
  }
}

/// Facade for TestBigInt, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestBigInt$Facade implements TestBigInt {}

/// WorkerService class for TestBigInt
class _$TestBigInt$WorkerService extends TestBigInt
    implements sq.WorkerService {
  _$TestBigInt$WorkerService() : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestBigInt
sq.WorkerService $TestBigIntInitializer(sq.WorkerRequest $req) =>
    _$TestBigInt$WorkerService();

/// Worker for TestBigInt
base class _$TestBigIntWorker extends sq.Worker
    with _$TestBigInt$Invoker, _$TestBigInt$Facade
    implements TestBigInt {
  _$TestBigIntWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestBigIntActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestBigIntWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestBigIntActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestBigIntWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestBigIntActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$TestBigIntWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestBigIntActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  @override
  List? getStartArgs() => null;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for TestBigInt
base class TestBigIntWorker with Releasable implements _$TestBigIntWorker {
  TestBigIntWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
  }

  TestBigIntWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestBigIntWorker(
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestBigIntWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestBigIntWorker.vm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestBigIntWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestBigIntWorker.js(
            threadHook: threadHook, exceptionManager: exceptionManager));

  TestBigIntWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : this._(_$TestBigIntWorker.wasm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  final _$TestBigIntWorker _$worker;

  static final Finalizer<_$TestBigIntWorker> _finalizer =
      Finalizer<_$TestBigIntWorker>((w) {
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
  Future<BigInt> add(BigInt a, BigInt b) => _$worker.add(a, b);

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

  @override
  Logger? get channelLogger => _$worker.channelLogger;

  @override
  set channelLogger(Logger? value) => _$worker.channelLogger = value;

  @override
  bool get isConnected => _$worker.isConnected;

  @override
  sq.WorkerStat get stats => _$worker.stats;

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for TestBigInt
base class _$TestBigIntWorkerPool extends sq.WorkerPool<TestBigIntWorker>
    with _$TestBigInt$Facade
    implements TestBigInt {
  _$TestBigIntWorkerPool(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestBigIntWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestBigIntWorkerPool.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestBigIntWorker.vm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestBigIntWorkerPool.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestBigIntWorker.js(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$TestBigIntWorkerPool.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestBigIntWorker.wasm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  Future<BigInt> add(BigInt a, BigInt b) => execute((w) => w.add(a, b));

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for TestBigInt
base class TestBigIntWorkerPool
    with Releasable
    implements _$TestBigIntWorkerPool {
  TestBigIntWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  TestBigIntWorkerPool(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestBigIntWorkerPool(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestBigIntWorkerPool.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestBigIntWorkerPool.vm(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestBigIntWorkerPool.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestBigIntWorkerPool.js(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  TestBigIntWorkerPool.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : this._(_$TestBigIntWorkerPool.wasm(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$TestBigIntWorkerPool _$pool;

  static final Finalizer<_$TestBigIntWorkerPool> _finalizer =
      Finalizer<_$TestBigIntWorkerPool>((p) {
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
  Future<BigInt> add(BigInt a, BigInt b) => _$pool.add(a, b);

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
  int stop([bool Function(TestBigIntWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
          void Function(sq.WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(sq.WorkerStat, bool)? listener, Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestBigIntWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestBigIntWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(TestBigIntWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(TestBigIntWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

final class _$Deser extends sq.MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<int>();
  late final $1 = sq.Converter.allowNull($0);
  late final $2 = list<int>($0);
  late final $3 = value<String>();
  late final $4 = sq.Converter.allowNull($3);
  late final $5 = value<bool>();
  late final $6 = list<String>($3);
  late final $7 = sq.Converter.allowNull($6);
  late final $8 = value<double>();
  late final $9 = map<int, double>(kcast: $0, vcast: $8);
  late final $10 = sq.Converter.allowNull($9);
  late final $11 = value<typed_data.ByteData>();
  late final $12 = sq.Converter.allowNull($11);
  late final $13 = map<int, typed_data.ByteData>(kcast: $0, vcast: $11);
  late final $14 = sq.Converter.allowNull($13);
  late final $15 = value<typed_data.ByteBuffer>();
  late final $16 = sq.Converter.allowNull($15);
  late final $17 = value<typed_data.Uint8List>();
  late final $18 = sq.Converter.allowNull($17);
  late final $19 = value<typed_data.Int8List>();
  late final $20 = sq.Converter.allowNull($19);
  late final $21 = (($) {
    $ as List;
    return ($0($[0]), items: $2($[1]));
  });
  late final $22 = value<Object>();
  late final $23 = nlist<Object>($22);
  late final $24 = (($) {
    $ as List;
    return ($0($[0]), $23($[1]));
  });
  late final $25 = (($) {
    $ as List;
    return (count: $0($[0]), items: $23($[1]));
  });
  late final $26 = value<BigInt>();
}

final class _$Ser extends sq.MarshalingContext {
  _$Ser({super.contextAware});
  late final $0 = value<int>();
  late final $1 = sq.Converter.allowNull($0);
  late final $2 = value<typed_data.Int8List>();
  late final $3 = (((int, {List<int> items}) $) => [$.$1, $.items]);
  late final $4 =
      ((({int count, List<dynamic> items}) $) => [$.count, $.items]);
  late final $5 = (((int, List<dynamic>) $) => [$.$1, $.$2]);
  late final $6 = value<String>();
}
