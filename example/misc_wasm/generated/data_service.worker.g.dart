// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of '../data_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 8.1.0 (Squadron 7.2.0)
// **************************************************************************

// dart format width=80
/// Command ids used in operations map
const int _$doSomethingId = 1;

/// WorkerService operations for DataService
extension on DataService {
  OperationsMap _$getOperations() => OperationsMap({
    _$doSomethingId: ($req) async {
      final Data $res;
      try {
        final $dsr = _$Deser(contextAware: false);
        $res = await doSomething($dsr.$0($req.args[0]));
      } finally {}
      try {
        final $sr = _$Ser(contextAware: false);
        return $sr.$0($res);
      } finally {}
    },
  });
}

/// Invoker for DataService, implements the public interface to invoke the
/// remote service.
mixin _$DataService$Invoker on Invoker implements DataService {
  @override
  Future<Data> doSomething(Data input) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: false);
      $res = await send(_$doSomethingId, args: [$sr.$0(input)]);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$0($res);
    } finally {}
  }
}

/// Facade for DataService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$DataService$Facade implements DataService {}

/// WorkerService class for DataService
class _$DataService$WorkerService extends DataService implements WorkerService {
  _$DataService$WorkerService() : super();

  @override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for DataService
WorkerService $DataServiceInitializer(WorkerRequest $req) =>
    _$DataService$WorkerService();

/// Worker for DataService
base class _$DataServiceWorker extends Worker
    with _$DataService$Invoker, _$DataService$Facade
    implements DataService {
  _$DataServiceWorker({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $DataServiceActivator(Squadron.platformType),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$DataServiceWorker.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $DataServiceActivator(SquadronPlatformType.wasm),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  @override
  List? getStartArgs() => null;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for DataService
base class DataServiceWorker with Releasable implements _$DataServiceWorker {
  DataServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
  }

  DataServiceWorker({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$DataServiceWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  DataServiceWorker.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$DataServiceWorker.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  final _$DataServiceWorker _$worker;

  static final Finalizer<_$DataServiceWorker> _finalizer =
      Finalizer<_$DataServiceWorker>((w) {
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
  Future<Data> doSomething(Data input) => _$worker.doSomething(input);

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

/// Worker pool for DataService
base class _$DataServiceWorkerPool extends WorkerPool<DataServiceWorker>
    with _$DataService$Facade
    implements DataService {
  _$DataServiceWorkerPool({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => DataServiceWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  _$DataServiceWorkerPool.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => DataServiceWorker.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  @override
  Future<Data> doSomething(Data input) => execute((w) => w.doSomething(input));

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for DataService
base class DataServiceWorkerPool
    with Releasable
    implements _$DataServiceWorkerPool {
  DataServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  DataServiceWorkerPool({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$DataServiceWorkerPool(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  DataServiceWorkerPool.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$DataServiceWorkerPool.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  final _$DataServiceWorkerPool _$pool;

  static final Finalizer<_$DataServiceWorkerPool> _finalizer =
      Finalizer<_$DataServiceWorkerPool>((p) {
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
  Future<Data> doSomething(Data input) => _$pool.doSomething(input);

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
  int stop([bool Function(DataServiceWorker worker)? predicate]) =>
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
    Future<T> Function(DataServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
    Stream<T> Function(DataServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.stream<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStreamTask<T>(
    Stream<T> Function(DataServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleValueTask<T>(
    Future<T> Function(DataServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final OperationsMap operations = WorkerService.noOperations;
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = (($) => Data.unmarshal($));
}

final class _$Ser extends MarshalingContext {
  _$Ser({super.contextAware});
  late final $0 = (($) => ($ as Data).marshal());
}
