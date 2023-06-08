// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../my_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.2.0
// **************************************************************************

// Operations map for MyService
mixin $MyServiceOperations on WorkerService {
  @override
  late final Map<int, CommandHandler> operations =
      _getOperations(this as MyService);

  static const int _$explicitEchoWithExplicitResultId = 1;
  static const int _$explicitEchoWithJsonResultId = 2;
  static const int _$fibonacciId = 3;
  static const int _$fibonacciList0Id = 4;
  static const int _$fibonacciList1Id = 5;
  static const int _$fibonacciList2Id = 6;
  static const int _$fibonacciStreamId = 7;
  static const int _$jsonEchoWithExplicitResultId = 8;
  static const int _$jsonEchoWithJsonResultId = 9;
  static const int _$jsonEncodeEchoId = 10;

  static Map<int, CommandHandler> _getOperations(MyService svc) => {
        _$explicitEchoWithExplicitResultId: (req) async =>
            MyServiceResponseOfStringToByteBuffer.instance.marshall(
                (await svc.explicitEchoWithExplicitResult(
                    MyServiceRequestGenericToString.instance
                        .unmarshall(req.args[0]),
                    token: req.cancelToken))),
        _$explicitEchoWithJsonResultId: (req) async =>
            (await svc.explicitEchoWithJsonResult(
                    (const MyServiceRequestToString()).unmarshall(req.args[0])))
                .toJson(),
        _$fibonacciId: (req) => svc.fibonacci(req.args[0]),
        _$fibonacciList0Id: (req) async =>
            (await svc.fibonacciList0(req.args[0], req.args[1])).cast<int>(),
        _$fibonacciList1Id: (req) async => (const ListIntMarshaller())
            .marshall((await svc.fibonacciList1(req.args[0], req.args[1]))),
        _$fibonacciList2Id: (req) async => listIntMarshaller
            .marshall((await svc.fibonacciList2(req.args[0], req.args[1]))),
        _$fibonacciStreamId: (req) =>
            svc.fibonacciStream(req.args[0], req.args[1]),
        _$jsonEchoWithExplicitResultId: (req) async =>
            (const MyServiceResponseOfStringToByteBuffer()).marshall(
                (await svc.jsonEchoWithExplicitResult(
                    MyServiceRequest.fromJson(req.args[0])))),
        _$jsonEchoWithJsonResultId: (req) async => (await svc
                .jsonEchoWithJsonResult(MyServiceRequest.fromJson(req.args[0])))
            ?.toJson(),
        _$jsonEncodeEchoId: (req) async => (const MyServiceResponseToJson())
            .marshall((await svc.jsonEncodeEcho(
                MyServiceRequestToString.instance.unmarshall(req.args[0]),
                req.cancelToken)))
      };
}

// Service initializer
MyService $MyServiceInitializer(WorkerRequest startRequest) =>
    MyService(MyServiceConfig<bool>.fromJson(startRequest.args[0]),
        workloadDelay: (startRequest.args[1] == null)
            ? null
            : MyServiceConfig<int>.fromJson(startRequest.args[1]),
        test: startRequest.args[2]);

// Worker for MyService
class _MyServiceWorker extends Worker
    with $MyServiceOperations
    implements MyService {
  _MyServiceWorker(MyServiceConfig<bool> trace,
      {MyServiceConfig<int>? workloadDelay,
      bool test = false,
      PlatformWorkerHook? platformWorkerHook})
      : super($MyServiceActivator,
            args: [trace.toJson(), workloadDelay?.toJson(), test],
            platformWorkerHook: platformWorkerHook);

  @override
  Future<MyServiceResponse<String>> explicitEchoWithExplicitResult(
          MyServiceRequest request,
          {CancellationToken? token}) =>
      send(
        $MyServiceOperations._$explicitEchoWithExplicitResultId,
        args: [MyServiceRequestGenericToString.instance.marshall(request)],
        token: token,
      ).then(($res) =>
          MyServiceResponseOfStringToByteBuffer.instance.unmarshall($res));

  @override
  Future<MyServiceResponse<String>> explicitEchoWithJsonResult(
          MyServiceRequest request) =>
      send(
        $MyServiceOperations._$explicitEchoWithJsonResultId,
        args: [(const MyServiceRequestToString()).marshall(request)],
      ).then(($res) => MyServiceResponse<String>.fromJson($res));

  @override
  Future<int> fibonacci(int i) => send(
        $MyServiceOperations._$fibonacciId,
        args: [i],
      );

  @override
  Future<Iterable<int>> fibonacciList0(int s, int e) => send(
        $MyServiceOperations._$fibonacciList0Id,
        args: [s, e],
      ).then(($res) => $res.cast<int>());

  @override
  Future<List<int>> fibonacciList1(int s, int e) => send(
        $MyServiceOperations._$fibonacciList1Id,
        args: [s, e],
      ).then(($res) => (const ListIntMarshaller()).unmarshall($res));

  @override
  Future<List<int>> fibonacciList2(int s, int e) => send(
        $MyServiceOperations._$fibonacciList2Id,
        args: [s, e],
      ).then(($res) => listIntMarshaller.unmarshall($res));

  @override
  Stream<int> fibonacciStream(int s, int e) => stream(
        $MyServiceOperations._$fibonacciStreamId,
        args: [s, e],
      );

  @override
  Future<MyServiceResponse<String>> jsonEchoWithExplicitResult(
          MyServiceRequest request) =>
      send(
        $MyServiceOperations._$jsonEchoWithExplicitResultId,
        args: [request.toJson()],
      ).then(($res) =>
          (const MyServiceResponseOfStringToByteBuffer()).unmarshall($res));

  @override
  Future<MyServiceResponse<String>?> jsonEchoWithJsonResult(
          MyServiceRequest request) =>
      send(
        $MyServiceOperations._$jsonEchoWithJsonResultId,
        args: [request.toJson()],
      ).then(($res) =>
          ($res == null) ? null : MyServiceResponse<String>.fromJson($res));

  @override
  Future<MyServiceResponse<String>> jsonEncodeEcho(MyServiceRequest request,
          [CancellationToken? token]) =>
      send(
        $MyServiceOperations._$jsonEncodeEchoId,
        args: [MyServiceRequestToString.instance.marshall(request)],
        token: token,
      ).then(($res) => (const MyServiceResponseToJson()).unmarshall($res));

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  void _simulateWorkload() => throw UnimplementedError();

  @override
  MyServiceConfig<bool> get _trace => throw UnimplementedError();

  @override
  Duration get _delay => throw UnimplementedError();

  final Object _detachToken = Object();
}

// Finalizable worker wrapper for MyService
class MyServiceWorker implements _MyServiceWorker {
  MyServiceWorker(MyServiceConfig<bool> trace,
      {MyServiceConfig<int>? workloadDelay,
      bool test = false,
      PlatformWorkerHook? platformWorkerHook})
      : _worker = _MyServiceWorker(trace,
            workloadDelay: workloadDelay,
            test: test,
            platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  final _MyServiceWorker _worker;

  static final Finalizer<_MyServiceWorker> _finalizer =
      Finalizer<_MyServiceWorker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Future<MyServiceResponse<String>> explicitEchoWithExplicitResult(
          MyServiceRequest request,
          {CancellationToken? token}) =>
      _worker.explicitEchoWithExplicitResult(request, token: token);

  @override
  Future<MyServiceResponse<String>> explicitEchoWithJsonResult(
          MyServiceRequest request) =>
      _worker.explicitEchoWithJsonResult(request);

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
  Stream<int> fibonacciStream(int s, int e) => _worker.fibonacciStream(s, e);

  @override
  Future<MyServiceResponse<String>> jsonEchoWithExplicitResult(
          MyServiceRequest request) =>
      _worker.jsonEchoWithExplicitResult(request);

  @override
  Future<MyServiceResponse<String>?> jsonEchoWithJsonResult(
          MyServiceRequest request) =>
      _worker.jsonEchoWithJsonResult(request);

  @override
  Future<MyServiceResponse<String>> jsonEncodeEcho(MyServiceRequest request,
          [CancellationToken? token]) =>
      _worker.jsonEncodeEcho(request, token);

  @override
  Map<int, CommandHandler> get operations => _worker.operations;

  @override
  void _simulateWorkload() => _worker._simulateWorkload();

  @override
  MyServiceConfig<bool> get _trace => _worker._trace;

  @override
  Duration get _delay => _worker._delay;

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

// Worker pool for MyService
class _MyServiceWorkerPool extends WorkerPool<MyServiceWorker>
    with $MyServiceOperations
    implements MyService {
  _MyServiceWorkerPool(MyServiceConfig<bool> trace,
      {MyServiceConfig<int>? workloadDelay,
      bool test = false,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => MyServiceWorker(trace,
                workloadDelay: workloadDelay,
                test: test,
                platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<MyServiceResponse<String>> explicitEchoWithExplicitResult(
          MyServiceRequest request,
          {CancellationToken? token}) =>
      execute(($w) => $w.explicitEchoWithExplicitResult(request, token: token));

  @override
  Future<MyServiceResponse<String>> explicitEchoWithJsonResult(
          MyServiceRequest request) =>
      execute(($w) => $w.explicitEchoWithJsonResult(request));

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
  Stream<int> fibonacciStream(int s, int e) =>
      stream(($w) => $w.fibonacciStream(s, e));

  @override
  Future<MyServiceResponse<String>> jsonEchoWithExplicitResult(
          MyServiceRequest request) =>
      execute(($w) => $w.jsonEchoWithExplicitResult(request));

  @override
  Future<MyServiceResponse<String>?> jsonEchoWithJsonResult(
          MyServiceRequest request) =>
      execute(($w) => $w.jsonEchoWithJsonResult(request));

  @override
  Future<MyServiceResponse<String>> jsonEncodeEcho(MyServiceRequest request,
          [CancellationToken? token]) =>
      execute(($w) => $w.jsonEncodeEcho(request, token));

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  void _simulateWorkload() => throw UnimplementedError();

  @override
  MyServiceConfig<bool> get _trace => throw UnimplementedError();

  @override
  Duration get _delay => throw UnimplementedError();

  final Object _detachToken = Object();
}

// Finalizable worker pool wrapper for MyService
class MyServiceWorkerPool implements _MyServiceWorkerPool {
  MyServiceWorkerPool(MyServiceConfig<bool> trace,
      {MyServiceConfig<int>? workloadDelay,
      bool test = false,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : _pool = _MyServiceWorkerPool(trace,
            workloadDelay: workloadDelay,
            test: test,
            concurrencySettings: concurrencySettings,
            platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  final _MyServiceWorkerPool _pool;

  static final Finalizer<_MyServiceWorkerPool> _finalizer =
      Finalizer<_MyServiceWorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Future<MyServiceResponse<String>> explicitEchoWithExplicitResult(
          MyServiceRequest request,
          {CancellationToken? token}) =>
      _pool.explicitEchoWithExplicitResult(request, token: token);

  @override
  Future<MyServiceResponse<String>> explicitEchoWithJsonResult(
          MyServiceRequest request) =>
      _pool.explicitEchoWithJsonResult(request);

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
  Stream<int> fibonacciStream(int s, int e) => _pool.fibonacciStream(s, e);

  @override
  Future<MyServiceResponse<String>> jsonEchoWithExplicitResult(
          MyServiceRequest request) =>
      _pool.jsonEchoWithExplicitResult(request);

  @override
  Future<MyServiceResponse<String>?> jsonEchoWithJsonResult(
          MyServiceRequest request) =>
      _pool.jsonEchoWithJsonResult(request);

  @override
  Future<MyServiceResponse<String>> jsonEncodeEcho(MyServiceRequest request,
          [CancellationToken? token]) =>
      _pool.jsonEncodeEcho(request, token);

  @override
  Map<int, CommandHandler> get operations => _pool.operations;

  @override
  void _simulateWorkload() => _pool._simulateWorkload();

  @override
  MyServiceConfig<bool> get _trace => _pool._trace;

  @override
  Duration get _delay => _pool._delay;

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
  int stop([bool Function(MyServiceWorker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(MyServiceWorker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(MyServiceWorker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(MyServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(MyServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(Future<T> Function(MyServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(MyServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}
