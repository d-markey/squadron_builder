// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../person_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.1.6 (Squadron 7.1.2+1)
// **************************************************************************

/// Command ids used in operations map
const int _$asCustomerId = 1;
const int _$asEmployeeId = 2;
const int _$asProspectId = 3;

/// WorkerService operations for PersonService
extension on PersonService {
  OperationsMap _$getOperations() => OperationsMap({
        _$asCustomerId: ($req) async {
          final Customer? $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await asCustomer($dsr.$0($req.args[0]));
          } finally {}
          try {
            final $sr = _$Ser(contextAware: false);
            return $sr.$1($res);
          } finally {}
        },
        _$asEmployeeId: ($req) async {
          final Employee? $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await asEmployee($dsr.$0($req.args[0]));
          } finally {}
          try {
            final $sr = _$Ser(contextAware: false);
            return $sr.$3($res);
          } finally {}
        },
        _$asProspectId: ($req) async {
          final Prospect? $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await asProspect($dsr.$0($req.args[0]));
          } finally {}
          try {
            final $sr = _$Ser(contextAware: false);
            return $sr.$5($res);
          } finally {}
        },
      });
}

/// Invoker for PersonService, implements the public interface to invoke the
/// remote service.
mixin _$PersonService$Invoker on Invoker implements PersonService {
  @override
  Future<Customer?> asCustomer(Person p) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: false);
      $res = await send(_$asCustomerId, args: [$sr.$6(p)]);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$2($res);
    } finally {}
  }

  @override
  Future<Employee?> asEmployee(Person p) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: false);
      $res = await send(_$asEmployeeId, args: [$sr.$6(p)]);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$4($res);
    } finally {}
  }

  @override
  Future<Prospect?> asProspect(Person p) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: false);
      $res = await send(_$asProspectId, args: [$sr.$6(p)]);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$6($res);
    } finally {}
  }
}

/// Facade for PersonService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$PersonService$Facade implements PersonService {}

/// WorkerService class for PersonService
class _$PersonService$WorkerService extends PersonService
    implements WorkerService {
  _$PersonService$WorkerService() : super();

  @override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for PersonService
WorkerService $PersonServiceInitializer(WorkerRequest $req) =>
    _$PersonService$WorkerService();

/// Worker for PersonService
base class _$PersonServiceWorker extends Worker
    with _$PersonService$Invoker, _$PersonService$Facade
    implements PersonService {
  _$PersonServiceWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($PersonServiceActivator(Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$PersonServiceWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($PersonServiceActivator(SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$PersonServiceWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($PersonServiceActivator(SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$PersonServiceWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($PersonServiceActivator(SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  @override
  List? getStartArgs() => null;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for PersonService
base class PersonServiceWorker
    with Releasable
    implements _$PersonServiceWorker {
  PersonServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
  }

  PersonServiceWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : this._(_$PersonServiceWorker(
            threadHook: threadHook, exceptionManager: exceptionManager));

  PersonServiceWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : this._(_$PersonServiceWorker.vm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  PersonServiceWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : this._(_$PersonServiceWorker.js(
            threadHook: threadHook, exceptionManager: exceptionManager));

  PersonServiceWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : this._(_$PersonServiceWorker.wasm(
            threadHook: threadHook, exceptionManager: exceptionManager));

  final _$PersonServiceWorker _$worker;

  static final Finalizer<_$PersonServiceWorker> _finalizer =
      Finalizer<_$PersonServiceWorker>((w) {
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
  Future<Customer?> asCustomer(Person p) => _$worker.asCustomer(p);

  @override
  Future<Employee?> asEmployee(Person p) => _$worker.asEmployee(p);

  @override
  Future<Prospect?> asProspect(Person p) => _$worker.asProspect(p);

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

/// Worker pool for PersonService
base class _$PersonServiceWorkerPool extends WorkerPool<PersonServiceWorker>
    with _$PersonService$Facade
    implements PersonService {
  _$PersonServiceWorkerPool(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => PersonServiceWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$PersonServiceWorkerPool.vm(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => PersonServiceWorker.vm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$PersonServiceWorkerPool.js(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => PersonServiceWorker.js(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$PersonServiceWorkerPool.wasm(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => PersonServiceWorker.wasm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  Future<Customer?> asCustomer(Person p) => execute((w) => w.asCustomer(p));

  @override
  Future<Employee?> asEmployee(Person p) => execute((w) => w.asEmployee(p));

  @override
  Future<Prospect?> asProspect(Person p) => execute((w) => w.asProspect(p));

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for PersonService
base class PersonServiceWorkerPool
    with Releasable
    implements _$PersonServiceWorkerPool {
  PersonServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  PersonServiceWorkerPool(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : this._(_$PersonServiceWorkerPool(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  PersonServiceWorkerPool.vm(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : this._(_$PersonServiceWorkerPool.vm(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  PersonServiceWorkerPool.js(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : this._(_$PersonServiceWorkerPool.js(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  PersonServiceWorkerPool.wasm(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : this._(_$PersonServiceWorkerPool.wasm(
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$PersonServiceWorkerPool _$pool;

  static final Finalizer<_$PersonServiceWorkerPool> _finalizer =
      Finalizer<_$PersonServiceWorkerPool>((p) {
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
  Future<Customer?> asCustomer(Person p) => _$pool.asCustomer(p);

  @override
  Future<Employee?> asEmployee(Person p) => _$pool.asEmployee(p);

  @override
  Future<Prospect?> asProspect(Person p) => _$pool.asProspect(p);

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
  int stop([bool Function(PersonServiceWorker worker)? predicate]) =>
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
  Future<T> execute<T>(Future<T> Function(PersonServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(PersonServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(PersonServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(PersonServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final OperationsMap operations = WorkerService.noOperations;
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = (($) => Person.unmarshal($));
  late final $1 = (($) => Person.unmarshal($) as Customer);
  late final $2 = Converter.allowNull($1);
  late final $3 = (($) => Person.unmarshal($) as Employee);
  late final $4 = Converter.allowNull($3);
  late final $5 = (($) => Person.unmarshal($) as Prospect);
  late final $6 = Converter.allowNull($5);
}

final class _$Ser extends MarshalingContext {
  _$Ser({super.contextAware});
  late final $0 = (($) => ($ as Customer).marshal());
  late final $1 = Converter.allowNull($0);
  late final $2 = (($) => ($ as Employee).marshal());
  late final $3 = Converter.allowNull($2);
  late final $4 = (($) => ($ as Prospect).marshal());
  late final $5 = Converter.allowNull($4);
  late final $6 = (($) => ($ as Person).marshal());
}
