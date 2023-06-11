// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fibonacci_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.3.0
// **************************************************************************

/// Operations map for FibonacciService
mixin $FibonacciServiceOperations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {
        _$fibonacciId: (req) =>
            (this as FibonacciService).fibonacci(req.args[0]),
        _$fibonacciList0Id: (req) async => (await (this as FibonacciService)
                .fibonacciList0(req.args[0], req.args[1]))
            .cast<int>(),
        _$fibonacciList1Id: (req) async => (const ListIntMarshaller()).marshall(
            (await (this as FibonacciService)
                .fibonacciList1(req.args[0], req.args[1]))),
        _$fibonacciList2Id: (req) async => listIntMarshaller.marshall(
            (await (this as FibonacciService)
                .fibonacciList2(req.args[0], req.args[1]))),
        _$fibonacciStreamId: (req) => (this as FibonacciService)
            .fibonacciStream(req.args[0],
                end: req.args[1], token: req.cancelToken)
      };
      _operations = ops;
    }
    return ops;
  }

  static const int _$fibonacciId = 1;
  static const int _$fibonacciList0Id = 2;
  static const int _$fibonacciList1Id = 3;
  static const int _$fibonacciList2Id = 4;
  static const int _$fibonacciStreamId = 5;
}

/// Service initializer for FibonacciService
FibonacciService $FibonacciServiceInitializer(WorkerRequest startRequest) =>
    FibonacciService(trace: startRequest.args[0]);

/// Worker for FibonacciService
class _FibonacciServiceWorker extends Worker implements FibonacciService {
  _FibonacciServiceWorker(
      {this.trace = false, PlatformWorkerHook? platformWorkerHook})
      : super($FibonacciServiceActivator,
            args: [trace], platformWorkerHook: platformWorkerHook);

  @override
  final bool trace;

  @override
  Future<int> fibonacci(int i) => send(
        $FibonacciServiceOperations._$fibonacciId,
        args: [i],
      );

  @override
  Future<Iterable<int>> fibonacciList0(int s, int e) => send(
        $FibonacciServiceOperations._$fibonacciList0Id,
        args: [s, e],
      ).then(($res) => $res.cast<int>());

  @override
  Future<List<int>> fibonacciList1(int s, int e) => send(
        $FibonacciServiceOperations._$fibonacciList1Id,
        args: [s, e],
      ).then(($res) => (const ListIntMarshaller()).unmarshall($res));

  @override
  Future<List<int>> fibonacciList2(int s, int e) => send(
        $FibonacciServiceOperations._$fibonacciList2Id,
        args: [s, e],
      ).then(($res) => listIntMarshaller.unmarshall($res));

  @override
  Stream<int> fibonacciStream(int start,
          {int? end, CancellationToken? token}) =>
      stream(
        $FibonacciServiceOperations._$fibonacciStreamId,
        args: [start, end],
        token: token,
      );

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for FibonacciService
class FibonacciServiceWorker implements _FibonacciServiceWorker {
  FibonacciServiceWorker(
      {bool trace = false, PlatformWorkerHook? platformWorkerHook})
      : _worker = _FibonacciServiceWorker(
            trace: trace, platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  @override
  bool get trace => _worker.trace;

  final _FibonacciServiceWorker _worker;

  static final Finalizer<_FibonacciServiceWorker> _finalizer =
      Finalizer<_FibonacciServiceWorker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Future<int> fibonacci(int i) => _worker.fibonacci(i);

  @override
  Future<Iterable<int>> fibonacciList0(int s, int e) =>
      _worker.fibonacciList0(s, e);

  @override
  Future<List<int>> fibonacciList1(int s, int e) =>
      _worker.fibonacciList1(s, e);

  @override
  Future<List<int>> fibonacciList2(int s, int e) =>
      _worker.fibonacciList2(s, e);

  @override
  Stream<int> fibonacciStream(int start,
          {int? end, CancellationToken? token}) =>
      _worker.fibonacciStream(start, end: end, token: token);

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for FibonacciService
class _FibonacciServiceWorkerPool extends WorkerPool<FibonacciServiceWorker>
    implements FibonacciService {
  _FibonacciServiceWorkerPool(
      {this.trace = false,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => FibonacciServiceWorker(
                trace: trace, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final bool trace;

  @override
  Future<int> fibonacci(int i) => execute(($w) => $w.fibonacci(i));

  @override
  Future<Iterable<int>> fibonacciList0(int s, int e) =>
      execute(($w) => $w.fibonacciList0(s, e));

  @override
  Future<List<int>> fibonacciList1(int s, int e) =>
      execute(($w) => $w.fibonacciList1(s, e));

  @override
  Future<List<int>> fibonacciList2(int s, int e) =>
      execute(($w) => $w.fibonacciList2(s, e));

  @override
  Stream<int> fibonacciStream(int start,
          {int? end, CancellationToken? token}) =>
      stream(($w) => $w.fibonacciStream(start, end: end, token: token));

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for FibonacciService
class FibonacciServiceWorkerPool implements _FibonacciServiceWorkerPool {
  FibonacciServiceWorkerPool(
      {bool trace = false,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : _pool = _FibonacciServiceWorkerPool(
            trace: trace,
            concurrencySettings: concurrencySettings,
            platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  @override
  bool get trace => _pool.trace;

  final _FibonacciServiceWorkerPool _pool;

  static final Finalizer<_FibonacciServiceWorkerPool> _finalizer =
      Finalizer<_FibonacciServiceWorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Future<int> fibonacci(int i) => _pool.fibonacci(i);

  @override
  Future<Iterable<int>> fibonacciList0(int s, int e) =>
      _pool.fibonacciList0(s, e);

  @override
  Future<List<int>> fibonacciList1(int s, int e) => _pool.fibonacciList1(s, e);

  @override
  Future<List<int>> fibonacciList2(int s, int e) => _pool.fibonacciList2(s, e);

  @override
  Stream<int> fibonacciStream(int start,
          {int? end, CancellationToken? token}) =>
      _pool.fibonacciStream(start, end: end, token: token);

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(FibonacciServiceWorker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(FibonacciServiceWorker worker, bool removed)
              listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(FibonacciServiceWorker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(FibonacciServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(FibonacciServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(FibonacciServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(FibonacciServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}
