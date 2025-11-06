// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of '../hello_world.dart';

// **************************************************************************
// Generator: WorkerGenerator 8.1.0 (Squadron 7.2.0)
// **************************************************************************

// dart format width=80
/// Command ids used in operations map
const int _$sayHelloId = 1;

/// WorkerService operations for HelloWorld
extension on HelloWorld {
  OperationsMap _$getOperations() => OperationsMap({
    _$sayHelloId: ($req) async {
      final String $res;
      try {
        final $dsr = _$Deser(contextAware: true);
        $res = await sayHello($dsr.$1($req.args[0]));
      } finally {}
      return $res;
    },
  });
}

/// Invoker for HelloWorld, implements the public interface to invoke the
/// remote service.
base mixin _$HelloWorld$Invoker on Invoker implements HelloWorld {
  @override
  Future<String> sayHello([String? name]) async {
    final dynamic $res = await send(_$sayHelloId, args: [name]);
    try {
      final $dsr = _$Deser(contextAware: true);
      return $dsr.$0($res);
    } finally {}
  }
}

/// Facade for HelloWorld, implements other details of the service unrelated to
/// invoking the remote service.
base mixin _$HelloWorld$Facade implements HelloWorld {}

/// WorkerService class for HelloWorld
base class _$HelloWorld$WorkerService extends HelloWorld
    implements WorkerService {
  _$HelloWorld$WorkerService() : super();

  @override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for HelloWorld
WorkerService $HelloWorldInitializer(WorkerRequest $req) =>
    _$HelloWorld$WorkerService();

/// Worker for HelloWorld
base class _$HelloWorldWorker extends Worker
    with _$HelloWorld$Invoker, _$HelloWorld$Facade
    implements HelloWorld {
  _$HelloWorldWorker({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $HelloWorldActivator(Squadron.platformType),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$HelloWorldWorker.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $HelloWorldActivator(SquadronPlatformType.vm),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$HelloWorldWorker.js({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $HelloWorldActivator(SquadronPlatformType.js),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$HelloWorldWorker.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $HelloWorldActivator(SquadronPlatformType.wasm),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  @override
  List? getStartArgs() => null;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for HelloWorld
base class HelloWorldWorker with Releasable implements _$HelloWorldWorker {
  HelloWorldWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
  }

  HelloWorldWorker({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$HelloWorldWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  HelloWorldWorker.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$HelloWorldWorker.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  HelloWorldWorker.js({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$HelloWorldWorker.js(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  HelloWorldWorker.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$HelloWorldWorker.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  final _$HelloWorldWorker _$worker;

  static final Finalizer<_$HelloWorldWorker> _finalizer =
      Finalizer<_$HelloWorldWorker>((w) {
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
  Future<String> sayHello([String? name]) => _$worker.sayHello(name);

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

/// Worker pool for HelloWorld
base class _$HelloWorldWorkerPool extends WorkerPool<HelloWorldWorker>
    with _$HelloWorld$Facade
    implements HelloWorld {
  _$HelloWorldWorkerPool({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => HelloWorldWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  _$HelloWorldWorkerPool.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => HelloWorldWorker.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  _$HelloWorldWorkerPool.js({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => HelloWorldWorker.js(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  _$HelloWorldWorkerPool.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => HelloWorldWorker.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  @override
  Future<String> sayHello([String? name]) => execute((w) => w.sayHello(name));

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for HelloWorld
base class HelloWorldWorkerPool
    with Releasable
    implements _$HelloWorldWorkerPool {
  HelloWorldWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  HelloWorldWorkerPool({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$HelloWorldWorkerPool(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  HelloWorldWorkerPool.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$HelloWorldWorkerPool.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  HelloWorldWorkerPool.js({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$HelloWorldWorkerPool.js(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  HelloWorldWorkerPool.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$HelloWorldWorkerPool.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  final _$HelloWorldWorkerPool _$pool;

  static final Finalizer<_$HelloWorldWorkerPool> _finalizer =
      Finalizer<_$HelloWorldWorkerPool>((p) {
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
  Future<String> sayHello([String? name]) => _$pool.sayHello(name);

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
  int stop([bool Function(HelloWorldWorker worker)? predicate]) =>
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
    Future<T> Function(HelloWorldWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
    Stream<T> Function(HelloWorldWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.stream<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStreamTask<T>(
    Stream<T> Function(HelloWorldWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleValueTask<T>(
    Future<T> Function(HelloWorldWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final OperationsMap operations = WorkerService.noOperations;
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<String>();
  late final $1 = Converter.allowNull($0);
}
