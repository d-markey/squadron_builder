// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of '../service.dart';

// **************************************************************************
// Generator: WorkerGenerator 8.3.0 (Squadron 7.4.0)
// **************************************************************************

// dart format width=80
/// Command ids used in operations map
const int _$addItemId = 1;
const int _$getItemCountId = 2;
const int _$getLastModifiedDateId = 3;

/// WorkerService operations for Service
extension on Service {
  OperationsMap _$getOperations() => OperationsMap({
    _$addItemId: ($req) async {
      final Payload $res;
      try {
        final $dsr = _$Deser(contextAware: false);
        $res = await addItem($dsr.$0($req.args[0]), $dsr.$1($req.args[1]));
      } finally {}
      return $res;
    },
    _$getItemCountId: ($req) async {
      final BigInt $res;
      try {
        final $dsr = _$Deser(contextAware: false);
        $res = await getItemCount($dsr.$0($req.args[0]));
      } finally {}
      return $res;
    },
    _$getLastModifiedDateId: ($req) async {
      final DateTime? $res;
      try {
        final $dsr = _$Deser(contextAware: false);
        $res = await getLastModifiedDate($dsr.$0($req.args[0]));
      } finally {}
      return $res;
    },
  });
}

/// Invoker for Service, implements the public interface to invoke the
/// remote service.
mixin _$Service$Invoker on Invoker implements Service {
  @override
  Future<Payload> addItem(Payload payload, String value) async {
    final dynamic $res = await send(_$addItemId, args: [payload, value]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$0($res);
    } finally {}
  }

  @override
  Future<BigInt> getItemCount(Payload payload) async {
    final dynamic $res = await send(_$getItemCountId, args: [payload]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$2($res);
    } finally {}
  }

  @override
  Future<DateTime?> getLastModifiedDate(Payload payload) async {
    final dynamic $res = await send(_$getLastModifiedDateId, args: [payload]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$4($res);
    } finally {}
  }
}

/// Facade for Service, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$Service$Facade implements Service {}

/// WorkerClient for Service
final class $Service$Client extends WorkerClient
    with _$Service$Invoker, _$Service$Facade
    implements Service {
  $Service$Client(PlatformChannel channelInfo)
    : super(Channel.deserialize(channelInfo)!);
}

/// Local worker extension for Service
extension $ServiceLocalWorkerExt on Service {
  // Get a fresh local worker instance.
  LocalWorker<Service> getLocalWorker([ExceptionManager? exceptionManager]) =>
      LocalWorker.create(this, _$getOperations(), exceptionManager);
}

/// WorkerService class for Service
class _$Service$WorkerService extends Service implements WorkerService {
  _$Service$WorkerService() : super();

  @override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for Service
WorkerService $ServiceInitializer(WorkerRequest $req) =>
    _$Service$WorkerService();

/// Worker for Service
base class _$ServiceWorker extends Worker
    with _$Service$Invoker, _$Service$Facade
    implements Service {
  _$ServiceWorker({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $ServiceActivator(Squadron.platformType),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$ServiceWorker.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $ServiceActivator(SquadronPlatformType.vm),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$ServiceWorker.js({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $ServiceActivator(SquadronPlatformType.js),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  _$ServiceWorker.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : super(
         $ServiceActivator(SquadronPlatformType.wasm),
         threadHook: threadHook,
         exceptionManager: exceptionManager,
       );

  @override
  List? getStartArgs() => null;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for Service
base class ServiceWorker with Releasable implements _$ServiceWorker {
  ServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
  }

  ServiceWorker({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$ServiceWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  ServiceWorker.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$ServiceWorker.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  ServiceWorker.js({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$ServiceWorker.js(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

  ServiceWorker.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
  }) : this._(
         _$ServiceWorker.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
       );

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
  List? getStartArgs() => null;

  @override
  Future<Payload> addItem(Payload payload, String value) =>
      _$worker.addItem(payload, value);

  @override
  Future<BigInt> getItemCount(Payload payload) =>
      _$worker.getItemCount(payload);

  @override
  Future<DateTime?> getLastModifiedDate(Payload payload) =>
      _$worker.getLastModifiedDate(payload);

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

/// Worker pool for Service
base class _$ServiceWorkerPool extends WorkerPool<ServiceWorker>
    with _$Service$Facade
    implements Service {
  _$ServiceWorkerPool({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => ServiceWorker(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  _$ServiceWorkerPool.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => ServiceWorker.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  _$ServiceWorkerPool.js({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => ServiceWorker.js(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  _$ServiceWorkerPool.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : super(
         (ExceptionManager exceptionManager) => ServiceWorker.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
         ),
         concurrencySettings: concurrencySettings,
         exceptionManager: exceptionManager,
       );

  @override
  Future<Payload> addItem(Payload payload, String value) =>
      execute((w) => w.addItem(payload, value));

  @override
  Future<BigInt> getItemCount(Payload payload) =>
      execute((w) => w.getItemCount(payload));

  @override
  Future<DateTime?> getLastModifiedDate(Payload payload) =>
      execute((w) => w.getLastModifiedDate(payload));

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for Service
base class ServiceWorkerPool with Releasable implements _$ServiceWorkerPool {
  ServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  ServiceWorkerPool({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$ServiceWorkerPool(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  ServiceWorkerPool.vm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$ServiceWorkerPool.vm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  ServiceWorkerPool.js({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$ServiceWorkerPool.js(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

  ServiceWorkerPool.wasm({
    PlatformThreadHook? threadHook,
    ExceptionManager? exceptionManager,
    ConcurrencySettings? concurrencySettings,
  }) : this._(
         _$ServiceWorkerPool.wasm(
           threadHook: threadHook,
           exceptionManager: exceptionManager,
           concurrencySettings: concurrencySettings,
         ),
       );

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
  Future<Payload> addItem(Payload payload, String value) =>
      _$pool.addItem(payload, value);

  @override
  Future<BigInt> getItemCount(Payload payload) => _$pool.getItemCount(payload);

  @override
  Future<DateTime?> getLastModifiedDate(Payload payload) =>
      _$pool.getLastModifiedDate(payload);

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
  int stop([bool Function(ServiceWorker worker)? predicate]) =>
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
    Future<T> Function(ServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(
    Stream<T> Function(ServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.stream<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStreamTask<T>(
    Stream<T> Function(ServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleValueTask<T>(
    Future<T> Function(ServiceWorker worker) task, {
    PerfCounter? counter,
  }) => _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final OperationsMap operations = WorkerService.noOperations;
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<Payload>();
  late final $1 = value<String>();
  late final $2 = value<BigInt>();
  late final $3 = value<DateTime>();
  late final $4 = Converter.allowNull($3);
}
