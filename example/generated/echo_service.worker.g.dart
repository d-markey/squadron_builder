// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../echo_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.2.1
// **************************************************************************

// Operations map for EchoService
mixin $EchoServiceOperations on WorkerService {
  @override
  late final Map<int, CommandHandler> operations =
      _getOperations(this as EchoService);

  static const int _$explicitEchoWithExplicitResultId = 1;
  static const int _$explicitEchoWithJsonResultId = 2;
  static const int _$jsonEchoWithExplicitResultId = 3;
  static const int _$jsonEchoWithJsonResultId = 4;
  static const int _$jsonEncodeEchoId = 5;

  static Map<int, CommandHandler> _getOperations(EchoService svc) => {
        _$explicitEchoWithExplicitResultId: (req) async =>
            ServiceResponseOfStringToByteBuffer.instance.marshall(
                (await svc.explicitEchoWithExplicitResult(
                    ServiceRequestGenericToString.instance
                        .unmarshall(req.args[0]),
                    token: req.cancelToken))),
        _$explicitEchoWithJsonResultId: (req) async =>
            (await svc.explicitEchoWithJsonResult(
                    (const ServiceRequestToString()).unmarshall(req.args[0])))
                .toJson(),
        _$jsonEchoWithExplicitResultId: (req) async =>
            (const ServiceResponseOfStringToByteBuffer()).marshall(
                (await svc.jsonEchoWithExplicitResult(
                    ServiceRequest.fromJson(req.args[0])))),
        _$jsonEchoWithJsonResultId: (req) async => (await svc
                .jsonEchoWithJsonResult(ServiceRequest.fromJson(req.args[0])))
            ?.toJson(),
        _$jsonEncodeEchoId: (req) async => (const ServiceResponseToJson())
            .marshall((await svc.jsonEncodeEcho(
                ServiceRequestToString.instance.unmarshall(req.args[0]),
                req.cancelToken)))
      };
}

// Service initializer
EchoService $EchoServiceInitializer(WorkerRequest startRequest) =>
    EchoService(ServiceConfig<bool>.fromJson(startRequest.args[0]),
        workloadDelay: (startRequest.args[1] == null)
            ? null
            : ServiceConfig<int>.fromJson(startRequest.args[1]));

// Worker for EchoService
class _EchoServiceWorker extends Worker
    with $EchoServiceOperations
    implements EchoService {
  _EchoServiceWorker(ServiceConfig<bool> trace,
      {ServiceConfig<int>? workloadDelay,
      PlatformWorkerHook? platformWorkerHook})
      : super($EchoServiceActivator,
            args: [trace.toJson(), workloadDelay?.toJson()],
            platformWorkerHook: platformWorkerHook);

  @override
  Future<ServiceResponse<String>> explicitEchoWithExplicitResult(
          ServiceRequest request,
          {CancellationToken? token}) =>
      send(
        $EchoServiceOperations._$explicitEchoWithExplicitResultId,
        args: [ServiceRequestGenericToString.instance.marshall(request)],
        token: token,
      ).then(($res) =>
          ServiceResponseOfStringToByteBuffer.instance.unmarshall($res));

  @override
  Future<ServiceResponse<String>> explicitEchoWithJsonResult(
          ServiceRequest request) =>
      send(
        $EchoServiceOperations._$explicitEchoWithJsonResultId,
        args: [(const ServiceRequestToString()).marshall(request)],
      ).then(($res) => ServiceResponse<String>.fromJson($res));

  @override
  Future<ServiceResponse<String>> jsonEchoWithExplicitResult(
          ServiceRequest request) =>
      send(
        $EchoServiceOperations._$jsonEchoWithExplicitResultId,
        args: [request.toJson()],
      ).then(($res) =>
          (const ServiceResponseOfStringToByteBuffer()).unmarshall($res));

  @override
  Future<ServiceResponse<String>?> jsonEchoWithJsonResult(
          ServiceRequest request) =>
      send(
        $EchoServiceOperations._$jsonEchoWithJsonResultId,
        args: [request.toJson()],
      ).then(($res) =>
          ($res == null) ? null : ServiceResponse<String>.fromJson($res));

  @override
  Future<ServiceResponse<String>> jsonEncodeEcho(ServiceRequest request,
          [CancellationToken? token]) =>
      send(
        $EchoServiceOperations._$jsonEncodeEchoId,
        args: [ServiceRequestToString.instance.marshall(request)],
        token: token,
      ).then(($res) => (const ServiceResponseToJson()).unmarshall($res));

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  void _simulateWorkload() => throw UnimplementedError();

  @override
  ServiceConfig<bool> get _trace => throw UnimplementedError();

  @override
  Duration get _delay => throw UnimplementedError();

  final Object _detachToken = Object();
}

// Finalizable worker wrapper for EchoService
class EchoServiceWorker implements _EchoServiceWorker {
  EchoServiceWorker(ServiceConfig<bool> trace,
      {ServiceConfig<int>? workloadDelay,
      PlatformWorkerHook? platformWorkerHook})
      : _worker = _EchoServiceWorker(trace,
            workloadDelay: workloadDelay,
            platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  final _EchoServiceWorker _worker;

  static final Finalizer<_EchoServiceWorker> _finalizer =
      Finalizer<_EchoServiceWorker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Future<ServiceResponse<String>> explicitEchoWithExplicitResult(
          ServiceRequest request,
          {CancellationToken? token}) =>
      _worker.explicitEchoWithExplicitResult(request, token: token);

  @override
  Future<ServiceResponse<String>> explicitEchoWithJsonResult(
          ServiceRequest request) =>
      _worker.explicitEchoWithJsonResult(request);

  @override
  Future<ServiceResponse<String>> jsonEchoWithExplicitResult(
          ServiceRequest request) =>
      _worker.jsonEchoWithExplicitResult(request);

  @override
  Future<ServiceResponse<String>?> jsonEchoWithJsonResult(
          ServiceRequest request) =>
      _worker.jsonEchoWithJsonResult(request);

  @override
  Future<ServiceResponse<String>> jsonEncodeEcho(ServiceRequest request,
          [CancellationToken? token]) =>
      _worker.jsonEncodeEcho(request, token);

  @override
  Map<int, CommandHandler> get operations => _worker.operations;

  @override
  void _simulateWorkload() => _worker._simulateWorkload();

  @override
  ServiceConfig<bool> get _trace => _worker._trace;

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

// Worker pool for EchoService
class _EchoServiceWorkerPool extends WorkerPool<EchoServiceWorker>
    with $EchoServiceOperations
    implements EchoService {
  _EchoServiceWorkerPool(ServiceConfig<bool> trace,
      {ServiceConfig<int>? workloadDelay,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => EchoServiceWorker(trace,
                workloadDelay: workloadDelay,
                platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<ServiceResponse<String>> explicitEchoWithExplicitResult(
          ServiceRequest request,
          {CancellationToken? token}) =>
      execute(($w) => $w.explicitEchoWithExplicitResult(request, token: token));

  @override
  Future<ServiceResponse<String>> explicitEchoWithJsonResult(
          ServiceRequest request) =>
      execute(($w) => $w.explicitEchoWithJsonResult(request));

  @override
  Future<ServiceResponse<String>> jsonEchoWithExplicitResult(
          ServiceRequest request) =>
      execute(($w) => $w.jsonEchoWithExplicitResult(request));

  @override
  Future<ServiceResponse<String>?> jsonEchoWithJsonResult(
          ServiceRequest request) =>
      execute(($w) => $w.jsonEchoWithJsonResult(request));

  @override
  Future<ServiceResponse<String>> jsonEncodeEcho(ServiceRequest request,
          [CancellationToken? token]) =>
      execute(($w) => $w.jsonEncodeEcho(request, token));

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  void _simulateWorkload() => throw UnimplementedError();

  @override
  ServiceConfig<bool> get _trace => throw UnimplementedError();

  @override
  Duration get _delay => throw UnimplementedError();

  final Object _detachToken = Object();
}

// Finalizable worker pool wrapper for EchoService
class EchoServiceWorkerPool implements _EchoServiceWorkerPool {
  EchoServiceWorkerPool(ServiceConfig<bool> trace,
      {ServiceConfig<int>? workloadDelay,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : _pool = _EchoServiceWorkerPool(trace,
            workloadDelay: workloadDelay,
            concurrencySettings: concurrencySettings,
            platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  final _EchoServiceWorkerPool _pool;

  static final Finalizer<_EchoServiceWorkerPool> _finalizer =
      Finalizer<_EchoServiceWorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Future<ServiceResponse<String>> explicitEchoWithExplicitResult(
          ServiceRequest request,
          {CancellationToken? token}) =>
      _pool.explicitEchoWithExplicitResult(request, token: token);

  @override
  Future<ServiceResponse<String>> explicitEchoWithJsonResult(
          ServiceRequest request) =>
      _pool.explicitEchoWithJsonResult(request);

  @override
  Future<ServiceResponse<String>> jsonEchoWithExplicitResult(
          ServiceRequest request) =>
      _pool.jsonEchoWithExplicitResult(request);

  @override
  Future<ServiceResponse<String>?> jsonEchoWithJsonResult(
          ServiceRequest request) =>
      _pool.jsonEchoWithJsonResult(request);

  @override
  Future<ServiceResponse<String>> jsonEncodeEcho(ServiceRequest request,
          [CancellationToken? token]) =>
      _pool.jsonEncodeEcho(request, token);

  @override
  Map<int, CommandHandler> get operations => _pool.operations;

  @override
  void _simulateWorkload() => _pool._simulateWorkload();

  @override
  ServiceConfig<bool> get _trace => _pool._trace;

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
  int stop([bool Function(EchoServiceWorker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(EchoServiceWorker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(EchoServiceWorker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(EchoServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(EchoServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(EchoServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(EchoServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}
