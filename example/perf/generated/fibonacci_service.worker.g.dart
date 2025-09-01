// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fibonacci_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.1.5-mki (Squadron 7.1.2)
// **************************************************************************

/// Command ids used in operations map
const int _$fibonacciId = 1;
const int _$fibonacciList0Id = 2;
const int _$fibonacciList1Id = 3;
const int _$fibonacciList2Id = 4;
const int _$fibonacciStreamId = 5;

/// WorkerService operations for FibonacciService
extension on FibonacciService {
  OperationsMap _$getOperations() => OperationsMap({
        _$fibonacciId: ($req) async {
          final int? $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await fibonacci($dsr.$0($req.args[0]));
          } finally {}
          return $res;
        },
        _$fibonacciList0Id: ($req) async {
          final Iterable<int>? $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await fibonacciList0(
                $dsr.$0($req.args[0]), $dsr.$0($req.args[1]));
          } finally {}
          return $res;
        },
        _$fibonacciList1Id: ($req) async {
          final List<int> $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await fibonacciList1(
                $dsr.$0($req.args[0]), $dsr.$0($req.args[1]));
          } finally {}
          try {
            final $sr = _$Ser(contextAware: true);
            return $sr.$0($res);
          } finally {}
        },
        _$fibonacciList2Id: ($req) async {
          final List<int> $res;
          try {
            final $dsr = _$Deser(contextAware: true);
            $res = await fibonacciList2(
                $dsr.$0($req.args[0]), $dsr.$0($req.args[1]));
          } finally {}
          try {
            final $sr = _$Ser(contextAware: true);
            return $sr.$1($res);
          } finally {}
        },
        _$fibonacciStreamId: ($req) {
          final Stream<int> $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = fibonacciStream($dsr.$0($req.args[0]),
                end: $dsr.$1($req.args[1]), token: $req.cancelToken);
          } finally {}
          return $res;
        },
      });
}

/// Invoker for FibonacciService, implements the public interface to invoke the
/// remote service.
mixin _$FibonacciService$Invoker on Invoker implements FibonacciService {
  @override
  Future<int?> fibonacci(int i) async {
    final dynamic $res = await send(_$fibonacciId, args: [i]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$1($res);
    } finally {}
  }

  @override
  Future<Iterable<int>?> fibonacciList0(int s, int e) async {
    final dynamic $res = await send(_$fibonacciList0Id, args: [s, e]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$3($res);
    } finally {}
  }

  @override
  Future<List<int>> fibonacciList1(int s, int e) async {
    final dynamic $res = await send(_$fibonacciList1Id, args: [s, e]);
    try {
      final $dsr = _$Deser(contextAware: true);
      return $dsr.$5($res);
    } finally {}
  }

  @override
  Future<List<int>> fibonacciList2(int s, int e) async {
    final dynamic $res = await send(_$fibonacciList2Id, args: [s, e]);
    try {
      final $dsr = _$Deser(contextAware: true);
      return $dsr.$6($res);
    } finally {}
  }

  @override
  Stream<int> fibonacciStream(int start, {int? end, CancelationToken? token}) {
    final Stream $res =
        stream(_$fibonacciStreamId, args: [start, end], token: token);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $res.map($dsr.$0);
    } finally {}
  }
}

/// Facade for FibonacciService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$FibonacciService$Facade implements FibonacciService {
  @override
  // ignore: unused_element
  Logger? get _logger => throw UnimplementedError();
}

/// WorkerService class for FibonacciService
class _$FibonacciService$WorkerService extends FibonacciService
    implements WorkerService {
  _$FibonacciService$WorkerService({super.trace = false}) : super();

  @override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for FibonacciService
WorkerService $FibonacciServiceInitializer(WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$FibonacciService$WorkerService(trace: $dsr.$7($req.args[0]));
}

/// Worker for FibonacciService
base class _$FibonacciServiceWorker extends Worker
    with _$FibonacciService$Invoker, _$FibonacciService$Facade
    implements FibonacciService {
  _$FibonacciServiceWorker(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : _$startReq = [trace],
        super($FibonacciServiceActivator(Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$FibonacciServiceWorker.vm(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : _$startReq = [trace],
        super($FibonacciServiceActivator(SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final _$detachToken = Object();
}

/// Finalizable worker wrapper for FibonacciService
base class FibonacciServiceWorker
    with Releasable
    implements _$FibonacciServiceWorker {
  FibonacciServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
  }

  FibonacciServiceWorker(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$FibonacciServiceWorker(
            trace: trace,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  FibonacciServiceWorker.vm(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$FibonacciServiceWorker.vm(
            trace: trace,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$FibonacciServiceWorker _$worker;

  static final Finalizer<_$FibonacciServiceWorker> _finalizer =
      Finalizer<_$FibonacciServiceWorker>((w) {
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
  Future<int?> fibonacci(int i) => _$worker.fibonacci(i);

  @override
  Future<Iterable<int>?> fibonacciList0(int s, int e) =>
      _$worker.fibonacciList0(s, e);

  @override
  Future<List<int>> fibonacciList1(int s, int e) =>
      _$worker.fibonacciList1(s, e);

  @override
  Future<List<int>> fibonacciList2(int s, int e) =>
      _$worker.fibonacciList2(s, e);

  @override
  Stream<int> fibonacciStream(int start, {int? end, CancelationToken? token}) =>
      _$worker.fibonacciStream(start, end: end, token: token);

  @override
  Logger? get _logger => _$worker._logger;

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

/// Worker pool for FibonacciService
base class _$FibonacciServiceWorkerPool
    extends WorkerPool<FibonacciServiceWorker>
    with _$FibonacciService$Facade
    implements FibonacciService {
  _$FibonacciServiceWorkerPool(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => FibonacciServiceWorker(
                trace: trace,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$FibonacciServiceWorkerPool.vm(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => FibonacciServiceWorker.vm(
                trace: trace,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  Future<int?> fibonacci(int i) => execute((w) => w.fibonacci(i));

  @override
  Future<Iterable<int>?> fibonacciList0(int s, int e) =>
      execute((w) => w.fibonacciList0(s, e));

  @override
  Future<List<int>> fibonacciList1(int s, int e) =>
      execute((w) => w.fibonacciList1(s, e));

  @override
  Future<List<int>> fibonacciList2(int s, int e) =>
      execute((w) => w.fibonacciList2(s, e));

  @override
  Stream<int> fibonacciStream(int start, {int? end, CancelationToken? token}) =>
      stream((w) => w.fibonacciStream(start, end: end, token: token));

  final _$detachToken = Object();
}

/// Finalizable worker pool wrapper for FibonacciService
base class FibonacciServiceWorkerPool
    with Releasable
    implements _$FibonacciServiceWorkerPool {
  FibonacciServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  FibonacciServiceWorkerPool(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : this._(_$FibonacciServiceWorkerPool(
            trace: trace,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  FibonacciServiceWorkerPool.vm(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : this._(_$FibonacciServiceWorkerPool.vm(
            trace: trace,
            threadHook: threadHook,
            exceptionManager: exceptionManager,
            concurrencySettings: concurrencySettings));

  final _$FibonacciServiceWorkerPool _$pool;

  static final Finalizer<_$FibonacciServiceWorkerPool> _finalizer =
      Finalizer<_$FibonacciServiceWorkerPool>((p) {
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
  Future<int?> fibonacci(int i) => _$pool.fibonacci(i);

  @override
  Future<Iterable<int>?> fibonacciList0(int s, int e) =>
      _$pool.fibonacciList0(s, e);

  @override
  Future<List<int>> fibonacciList1(int s, int e) => _$pool.fibonacciList1(s, e);

  @override
  Future<List<int>> fibonacciList2(int s, int e) => _$pool.fibonacciList2(s, e);

  @override
  Stream<int> fibonacciStream(int start, {int? end, CancelationToken? token}) =>
      _$pool.fibonacciStream(start, end: end, token: token);

  @override
  Logger? get _logger => _$pool._logger;

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
  int stop([bool Function(FibonacciServiceWorker worker)? predicate]) =>
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
  Future<T> execute<T>(Future<T> Function(FibonacciServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(FibonacciServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStreamTask<T>(
          Stream<T> Function(FibonacciServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleValueTask<T>(
          Future<T> Function(FibonacciServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final OperationsMap operations = WorkerService.noOperations;
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<int>();
  late final $1 = Converter.allowNull($0);
  late final $2 = list<int>($0);
  late final $3 = Converter.allowNull($2);
  late final $4 = value<ByteBuffer>();
  late final $5 = (($) => (const ListIntMarshaler()).unmarshal($4($), this));
  late final $6 = (($) => listIntMarshaler.unmarshal($4($), this));
  late final $7 = value<bool>();
}

final class _$Ser extends MarshalingContext {
  _$Ser({super.contextAware});
  late final $0 = (($) => (const ListIntMarshaler()).marshal($, this));
  late final $1 = (($) => listIntMarshaler.marshal($, this));
}
