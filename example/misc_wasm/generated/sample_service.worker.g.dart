// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of '../sample_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 8.1.0 (Squadron 7.2.0)
// **************************************************************************

// dart format width=80
/// Command ids used in operations map
const int _$computeId = 1;

/// WorkerService operations for SampleService
extension on SampleService {
  OperationsMap _$getOperations() => OperationsMap({
    _$computeId: ($req) async {
      final DataOut $res;
      try {
        final $dsr = _$Deser(contextAware: true);
        $res = await compute($dsr.$0($req.args[0]));
      } finally {}
      try {
        final $sr = _$Ser(contextAware: false);
        return $sr.$0($res);
      } finally {}
    },
  });
}

/// Invoker for SampleService, implements the public interface to invoke the
/// remote service.
mixin _$SampleService$Invoker on Invoker implements SampleService {
  @override
  Future<DataOut> compute(DataIn input) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: true);
      $res = await send(_$computeId, args: [$sr.$1(input)]);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$1($res);
    } finally {}
  }
}

/// Facade for SampleService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$SampleService$Facade implements SampleService {}

/// WorkerService class for SampleService
class _$SampleService$WorkerService extends SampleService
    implements WorkerService {
  _$SampleService$WorkerService() : super();

  @override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for SampleService
WorkerService $SampleServiceInitializer(WorkerRequest $req) =>
    _$SampleService$WorkerService();

/// Worker for SampleService
base class _$SampleServiceWorker extends Worker
    with _$SampleService$Invoker, _$SampleService$Facade
    implements SampleService {
  _$SampleServiceWorker({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $SampleServiceActivator(Squadron.platformType),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$SampleServiceWorker.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $SampleServiceActivator(SquadronPlatformType.wasm),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  @override
  List? getStartArgs() => null;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for SampleService
base class SampleServiceWorker
    with Releasable
    implements _$SampleServiceWorker {
  SampleServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
  }

  SampleServiceWorker({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$SampleServiceWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  SampleServiceWorker.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$SampleServiceWorker.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  final _$SampleServiceWorker _$worker;

  static final Finalizer<_$SampleServiceWorker> _finalizer =
      Finalizer<_$SampleServiceWorker>((w) {
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
  Future<DataOut> compute(DataIn input) => _$worker.compute(input);

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

/// Worker pool for SampleService
base class _$SampleServiceWorkerPool extends WorkerPool<SampleServiceWorker>
    with _$SampleService$Facade
    implements SampleService {
  _$SampleServiceWorkerPool({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => SampleServiceWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  _$SampleServiceWorkerPool.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => SampleServiceWorker.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  @override
  Future<DataOut> compute(DataIn input) => execute((w) => w.compute(input));

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for SampleService
base class SampleServiceWorkerPool
    with Releasable
    implements _$SampleServiceWorkerPool {
  SampleServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  SampleServiceWorkerPool({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$SampleServiceWorkerPool(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  SampleServiceWorkerPool.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$SampleServiceWorkerPool.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  final _$SampleServiceWorkerPool _$pool;

  static final Finalizer<_$SampleServiceWorkerPool> _finalizer =
      Finalizer<_$SampleServiceWorkerPool>((p) {
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
  Future<DataOut> compute(DataIn input) => _$pool.compute(input);

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
  int stop([bool Function(SampleServiceWorker worker)? predicate]) =>
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
    Future<T> Function(SampleServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
    Stream<T> Function(SampleServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.stream<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStreamTask<T>(
    Stream<T> Function(SampleServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleValueTask<T>(
    Future<T> Function(SampleServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final OperationsMap operations = WorkerService.noOperations;
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = (($) => DataIn.unmarshal($, context: this));
  late final $1 = (($) => DataOut.unmarshal($));
}

final class _$Ser extends MarshalingContext {
  _$Ser({super.contextAware});
  late final $0 = (($) => ($ as DataOut).marshal());
  late final $1 = (($) => ($ as DataIn).marshal(context: this));
}
