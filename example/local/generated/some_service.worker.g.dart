// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../some_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.1.5-mki (Squadron 7.1.2+1)
// **************************************************************************

/// Command ids used in operations map
const int _$getThreadIdId = 1;
const int _$getThreadIdFromLocalId = 2;

/// WorkerService operations for SomeService
extension on SomeService {
  OperationsMap _$getOperations() => OperationsMap({
        _$getThreadIdId: ($req) => getThreadId(),
        _$getThreadIdFromLocalId: ($req) => getThreadIdFromLocal(),
      });
}

/// Invoker for SomeService, implements the public interface to invoke the
/// remote service.
mixin _$SomeService$Invoker on Invoker implements SomeService {
  @override
  Future<String> getThreadId() async {
    final dynamic $res = await send(_$getThreadIdId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$0($res);
    } finally {}
  }

  @override
  Future<String> getThreadIdFromLocal() async {
    final dynamic $res = await send(_$getThreadIdFromLocalId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$0($res);
    } finally {}
  }
}

/// Facade for SomeService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$SomeService$Facade implements SomeService {}

/// WorkerService class for SomeService
class _$SomeService$WorkerService extends SomeService implements WorkerService {
  _$SomeService$WorkerService({super.threadIdService}) : super();

  @override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for SomeService
WorkerService $SomeServiceInitializer(WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$SomeService$WorkerService(
      threadIdService: ($req.args[0] == null)
          ? null
          : id.$LocalThreadIdentityServiceClient($dsr.$1($req.args[0])));
}

/// Worker for SomeService
base class _$SomeServiceWorker extends Worker
    with _$SomeService$Invoker, _$SomeService$Facade
    implements SomeService {
  _$SomeServiceWorker(
      {this.threadIdService,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : _$startReq = [threadIdService],
        super($SomeServiceActivator(Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$SomeServiceWorker.vm(
      {this.threadIdService,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : _$startReq = [threadIdService],
        super($SomeServiceActivator(SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final _$localWorkers = <LocalWorker?>[null];
  final List _$startReq;

  @override
  List? getStartArgs() {
    final p0 = _$startReq[0];
    if (p0 is id.ThreadIdentityService) {
      _$startReq[0] =
          (_$localWorkers[0] = p0.getLocalWorker()).channel?.serialize();
    }
    return _$startReq;
  }

  @override
  void stop() {
    _$localWorkers[0]?.stop();
    _$localWorkers[0] = null;
    _$startReq[0] = threadIdService;
    super.stop();
  }

  @override
  final id.ThreadIdentityService? threadIdService;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for SomeService
base class SomeServiceWorker with Releasable implements _$SomeServiceWorker {
  SomeServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
  }

  SomeServiceWorker(
      {id.ThreadIdentityService? threadIdService,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$SomeServiceWorker(
            threadIdService: threadIdService,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  SomeServiceWorker.vm(
      {id.ThreadIdentityService? threadIdService,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$SomeServiceWorker.vm(
            threadIdService: threadIdService,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  @override
  id.ThreadIdentityService? get threadIdService => _$worker.threadIdService;

  final _$SomeServiceWorker _$worker;

  static final Finalizer<_$SomeServiceWorker> _finalizer =
      Finalizer<_$SomeServiceWorker>((w) {
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
  List<LocalWorker?> get _$localWorkers => const [];

  @override
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  Future<String> getThreadId() => _$worker.getThreadId();

  @override
  Future<String> getThreadIdFromLocal() => _$worker.getThreadIdFromLocal();

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
  final OperationsMap operations = WorkerService.noOperations;
}

/// Worker pool for SomeService
base class _$SomeServiceWorkerPool extends WorkerPool<SomeServiceWorker>
    with _$SomeService$Facade
    implements SomeService {
  _$SomeServiceWorkerPool(
      {this.threadIdService,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => SomeServiceWorker(
                threadIdService: threadIdService,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$SomeServiceWorkerPool.vm(
      {this.threadIdService,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => SomeServiceWorker.vm(
                threadIdService: threadIdService,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final id.ThreadIdentityService? threadIdService;

  @override
  Future<String> getThreadId() => execute((w) => w.getThreadId());

  @override
  Future<String> getThreadIdFromLocal() =>
      execute((w) => w.getThreadIdFromLocal());

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for SomeService
base class SomeServiceWorkerPool
    with Releasable
    implements _$SomeServiceWorkerPool {
  SomeServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  SomeServiceWorkerPool(
      {id.ThreadIdentityService? threadIdService,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : this._(_$SomeServiceWorkerPool(
            threadIdService: threadIdService,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  SomeServiceWorkerPool.vm(
      {id.ThreadIdentityService? threadIdService,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : this._(_$SomeServiceWorkerPool.vm(
            threadIdService: threadIdService,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  @override
  id.ThreadIdentityService? get threadIdService => _$pool.threadIdService;

  final _$SomeServiceWorkerPool _$pool;

  static final Finalizer<_$SomeServiceWorkerPool> _finalizer =
      Finalizer<_$SomeServiceWorkerPool>((p) {
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
  Future<String> getThreadId() => _$pool.getThreadId();

  @override
  Future<String> getThreadIdFromLocal() => _$pool.getThreadIdFromLocal();

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
  int stop([bool Function(SomeServiceWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(void Function(WorkerStat, bool) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(WorkerStat, bool)? listener, Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(SomeServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(SomeServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(SomeServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(SomeServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final OperationsMap operations = WorkerService.noOperations;
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<String>();
  late final $1 = value<PlatformChannel>();
}
