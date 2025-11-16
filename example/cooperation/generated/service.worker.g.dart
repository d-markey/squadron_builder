// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of '../service.dart';

// **************************************************************************
// Generator: WorkerGenerator 8.3.0 (Squadron 7.3.0)
// **************************************************************************

// dart format width=80
/// Command ids used in operations map
const int _$callRemoteServiceId = 1;

/// WorkerService operations for Service
extension on Service {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
    _$callRemoteServiceId: ($req) async {
      final String $res;
      try {
        final $dsr = _$Deser(contextAware: false);
        $res = await callRemoteService($dsr.$0($req.args[0]));
      } finally {}
      return $res;
    },
  });
}

/// Invoker for Service, implements the public interface to invoke the
/// remote service.
mixin _$Service$Invoker on sq.Invoker implements Service {
  @override
  Future<String> callRemoteService(int i) async {
    final dynamic $res = await send(_$callRemoteServiceId, args: [i]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$1($res);
    } finally {}
  }
}

/// Facade for Service, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$Service$Facade implements Service {}

/// WorkerClient for Service
final class $Service$Client extends sq.WorkerClient
    with _$Service$Invoker, _$Service$Facade
    implements Service {
  $Service$Client(sq.PlatformChannel channelInfo)
    : super(sq.Channel.deserialize(channelInfo)!);

  @override
  late final SharedService? sharedService;
}

/// Local worker extension for Service
extension $ServiceLocalWorkerExt on Service {
  // Get a fresh local worker instance.
  sq.LocalWorker<Service> getLocalWorker([
    sq.ExceptionManager? exceptionManager,
  ]) => sq.LocalWorker.create(this, _$getOperations(), exceptionManager);
}

/// WorkerService class for Service
class _$Service$WorkerService extends Service implements sq.WorkerService {
  _$Service$WorkerService({super.sharedService}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for Service
sq.WorkerService $ServiceInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$Service$WorkerService(
    sharedService:
        ($req.args[0] == null)
            ? null
            : $SharedService$Client($dsr.$2($req.args[0])),
  );
}

/// Worker for Service
base class _$ServiceWorker extends sq.Worker
    with _$Service$Invoker, _$Service$Facade
    implements Service {
  _$ServiceWorker({
    this.sharedService,
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
  }) : _$startReq = [sharedService],
       super(
         $ServiceActivator(sq.Squadron.platformType),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$ServiceWorker.vm({
    this.sharedService,
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
  }) : _$startReq = [sharedService],
       super(
         $ServiceActivator(sq.SquadronPlatformType.vm),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  final _$remote = <sq.Channel?>[null];
  final List _$startReq;

  @override
  List? getStartArgs() {
    final p0 = _$startReq[0];
    if (p0 is sq.Worker) {
      _$startReq[0] = (_$remote[0] ??= p0.getSharedChannel())?.serialize();
    } else if (p0 is SharedService) {
      _$startReq[0] =
          (_$remote[0] ??= p0.getLocalWorker().channel)?.serialize();
    }
    return _$startReq;
  }

  @override
  void stop() {
    _$remote[0]?.close();
    _$remote[0] = null;
    _$startReq[0] = sharedService;
    super.stop();
  }

  @override
  final SharedService? sharedService;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for Service
base class ServiceWorker with Releasable implements _$ServiceWorker {
  ServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
  }

  ServiceWorker({
    SharedService? sharedService,
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
  }) : this._(
         _$ServiceWorker(
           sharedService: sharedService,
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  ServiceWorker.vm({
    SharedService? sharedService,
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
  }) : this._(
         _$ServiceWorker.vm(
           sharedService: sharedService,
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  @override
  SharedService? get sharedService => _$worker.sharedService;

  final _$ServiceWorker _$worker;

  static final Finalizer<_$ServiceWorker> _finalizer =
      Finalizer<_$ServiceWorker>((w) {
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
  List<sq.Channel?> get _$remote => const [];

  @override
  List<dynamic> get _$startReq => const [];

  @override
  List? getStartArgs() => null;

  @override
  Future<String> callRemoteService(int i) => _$worker.callRemoteService(i);

  @override
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

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
  sq.WorkerStat get stats => _$worker.stats;

  @override
  sq.WorkerStat getStats() => _$worker.getStats();

  @override
  Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

  @override
  sq.Channel? getSharedChannel() => _$worker.getSharedChannel();

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
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for Service
base class _$ServiceWorkerPool extends sq.WorkerPool<ServiceWorker>
    with _$Service$Facade
    implements Service {
  _$ServiceWorkerPool({
    this.sharedService,
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
    sq.ConcurrencySettings? concurrencySettings,
  }) : super(
         (sq.ExceptionManager exceptionManager) => ServiceWorker(
           sharedService: sharedService,
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  _$ServiceWorkerPool.vm({
    this.sharedService,
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
    sq.ConcurrencySettings? concurrencySettings,
  }) : super(
         (sq.ExceptionManager exceptionManager) => ServiceWorker.vm(
           sharedService: sharedService,
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  @override
  final SharedService? sharedService;

  @override
  Future<String> callRemoteService(int i) =>
      execute((w) => w.callRemoteService(i));

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for Service
base class ServiceWorkerPool with Releasable implements _$ServiceWorkerPool {
  ServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  ServiceWorkerPool({
    SharedService? sharedService,
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
    sq.ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$ServiceWorkerPool(
           sharedService: sharedService,
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  ServiceWorkerPool.vm({
    SharedService? sharedService,
    sq.PlatformThreadHook? threadHook,
    sq.ExceptionManager? exceptionManager,
    sq.ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$ServiceWorkerPool.vm(
           sharedService: sharedService,
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  @override
  SharedService? get sharedService => _$pool.sharedService;

  final _$ServiceWorkerPool _$pool;

  static final Finalizer<_$ServiceWorkerPool> _finalizer =
      Finalizer<_$ServiceWorkerPool>((p) {
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
  Future<String> callRemoteService(int i) => _$pool.callRemoteService(i);

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
  int stop([bool Function(ServiceWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

  @override
  Object registerWorkerPoolListener(
    void Function(sq.WorkerStat, bool) listener,
  ) => _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener({
    void Function(sq.WorkerStat, bool)? listener,
    Object? token,
  }) => _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(
    Future<T> Function(ServiceWorker worker) task, {
    sq.PerfCounter? counter,
  }) => _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
    Stream<T> Function(ServiceWorker worker) task, {
    sq.PerfCounter? counter,
  }) => _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
    Stream<T> Function(ServiceWorker worker) task, {
    sq.PerfCounter? counter,
  }) => _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
    Future<T> Function(ServiceWorker worker) task, {
    sq.PerfCounter? counter,
  }) => _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

final class _$Deser extends sq.MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<int>();
  late final $1 = value<String>();
  late final $2 = value<sq.PlatformChannel>();
}
