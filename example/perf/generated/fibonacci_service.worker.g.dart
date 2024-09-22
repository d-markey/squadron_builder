// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fibonacci_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for FibonacciService
class _$FibonacciServiceWorkerService extends FibonacciService
    implements WorkerService {
  _$FibonacciServiceWorkerService({super.trace = false}) : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$fibonacciId: ($) => fibonacci(_$X.$0($.args[0])),
    _$fibonacciList0Id: ($) async =>
        _$X.$2(await fibonacciList0(_$X.$0($.args[0]), _$X.$0($.args[1]))),
    _$fibonacciList1Id: ($) async =>
        _$X.$3(await fibonacciList1(_$X.$0($.args[0]), _$X.$0($.args[1]))),
    _$fibonacciList2Id: ($) async =>
        _$X.$4(await fibonacciList2(_$X.$0($.args[0]), _$X.$0($.args[1]))),
    _$fibonacciStreamId: ($) => fibonacciStream(_$X.$0($.args[0]),
        end: _$X.$5($.args[1]), token: $.cancelToken),
  });

  static const int _$fibonacciId = 1;
  static const int _$fibonacciList0Id = 2;
  static const int _$fibonacciList1Id = 3;
  static const int _$fibonacciList2Id = 4;
  static const int _$fibonacciStreamId = 5;
}

/// Service initializer for FibonacciService
WorkerService $FibonacciServiceInitializer(WorkerRequest $$) =>
    _$FibonacciServiceWorkerService(trace: _$X.$6($$.args[0]));

/// Worker for FibonacciService
base class _$FibonacciServiceWorker extends Worker implements FibonacciService {
  _$FibonacciServiceWorker(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super($FibonacciServiceActivator(Squadron.platformType), args: [trace]);

  _$FibonacciServiceWorker.vm(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super($FibonacciServiceActivator(SquadronPlatformType.vm),
            args: [trace]);

  @override
  Future<int?> fibonacci(int i) =>
      send(_$FibonacciServiceWorkerService._$fibonacciId,
              args: [i], inspectRequest: true, inspectResponse: true)
          .then(_$X.$5);

  @override
  Future<Iterable<int>?> fibonacciList0(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList0Id,
              args: [s, e], inspectRequest: true, inspectResponse: true)
          .then(_$X.$8);

  @override
  Future<List<int>> fibonacciList1(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList1Id,
              args: [s, e], inspectRequest: true, inspectResponse: true)
          .then(_$X.$9);

  @override
  Future<List<int>> fibonacciList2(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList2Id,
              args: [s, e], inspectRequest: true, inspectResponse: true)
          .then(_$X.$10);

  @override
  Stream<int> fibonacciStream(int start, {int? end, CancelationToken? token}) =>
      stream(_$FibonacciServiceWorkerService._$fibonacciStreamId,
              args: [start, end],
              token: token,
              inspectRequest: true,
              inspectResponse: true)
          .map(_$X.$0);

  @override
  // ignore: unused_element
  Logger? get _logger => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for FibonacciService
base class FibonacciServiceWorker
    with Releasable
    implements _$FibonacciServiceWorker {
  FibonacciServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
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
  List get args => _$worker.args;

  @override
  ExceptionManager get exceptionManager => _$worker.exceptionManager;

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
  WorkerStat get stats => _$worker.stats;

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
  Future<Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

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
  Object get _detachToken => _$worker._detachToken;

  @override
  final Map<int, CommandHandler> operations = WorkerService.noOperations;
}

/// Worker pool for FibonacciService
base class _$FibonacciServiceWorkerPool
    extends WorkerPool<FibonacciServiceWorker> implements FibonacciService {
  _$FibonacciServiceWorkerPool(
      {bool trace = false,
      ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => FibonacciServiceWorker(
              trace: trace,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$FibonacciServiceWorkerPool.vm(
      {bool trace = false,
      ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => FibonacciServiceWorker.vm(
              trace: trace,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

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

  @override
  // ignore: unused_element
  Logger? get _logger => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for FibonacciService
base class FibonacciServiceWorkerPool
    with Releasable
    implements _$FibonacciServiceWorkerPool {
  FibonacciServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  FibonacciServiceWorkerPool(
      {bool trace = false,
      ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$FibonacciServiceWorkerPool(
            trace: trace,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  FibonacciServiceWorkerPool.vm(
      {bool trace = false,
      ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : this._(_$FibonacciServiceWorkerPool.vm(
            trace: trace,
            concurrencySettings: concurrencySettings,
            threadHook: threadHook,
            exceptionManager: exceptionManager));

  final _$FibonacciServiceWorkerPool _$pool;

  static final Finalizer<_$FibonacciServiceWorkerPool> _finalizer =
      Finalizer<_$FibonacciServiceWorkerPool>((p) {
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
  Iterable<WorkerStat> get stats => _$pool.stats;

  @override
  bool get stopped => _$pool.stopped;

  @override
  int get totalErrors => _$pool.totalErrors;

  @override
  int get totalWorkload => _$pool.totalWorkload;

  @override
  int get workload => _$pool.workload;

  @override
  void cancel([Task? task, String? message]) => _$pool.cancel(task, message);

  @override
  FutureOr<void> start() => _$pool.start();

  @override
  int stop([bool Function(FibonacciServiceWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(FibonacciServiceWorker worker, bool removed)
              listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(FibonacciServiceWorker worker, bool removed)? listener,
          Object? token}) =>
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
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, CommandHandler> operations = WorkerService.noOperations;
}

class _$X {
  static final $0 = Squadron.converter.value<int>();
  static final $1 = Squadron.converter.list<int>();
  static final $2 = Squadron.converter.nullable($1);
  static final $3 = (($) => (const ListIntMarshaler()).marshal($));
  static final $4 = (($) => listIntMarshaler.marshal($));
  static final $5 = Squadron.converter.nullable($0);
  static final $6 = Squadron.converter.value<bool>();
  static final $7 = Squadron.converter.list<int>(_$X.$0);
  static final $8 = Squadron.converter.nullable($7);
  static final $9 = (($) => (const ListIntMarshaler()).unmarshal($));
  static final $10 = (($) => listIntMarshaler.unmarshal($));
}
