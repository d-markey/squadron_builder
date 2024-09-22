// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../echo_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for EchoService
class _$EchoServiceWorkerService extends EchoService implements WorkerService {
  _$EchoServiceWorkerService([super.trace = false, super.workloadDelay])
      : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$explicitEchoWithExplicitResultId: ($) async => _$X.$1(
        await explicitEchoWithExplicitResult(_$X.$0($.args[0]),
            token: $.cancelToken)),
    _$explicitEchoWithJsonResultId: ($) async =>
        _$X.$3(await explicitEchoWithJsonResult(_$X.$2($.args[0]))),
    _$jsonEchoWithExplicitResultId: ($) async =>
        _$X.$5(await jsonEchoWithExplicitResult(_$X.$4($.args[0]))),
    _$jsonEchoWithJsonResultId: ($) async =>
        _$X.$6(await jsonEchoWithJsonResult(_$X.$4($.args[0]))),
    _$jsonEncodeEchoId: ($) async =>
        _$X.$8(await jsonEncodeEcho(_$X.$7($.args[0]), $.cancelToken)),
  });

  static const int _$explicitEchoWithExplicitResultId = 1;
  static const int _$explicitEchoWithJsonResultId = 2;
  static const int _$jsonEchoWithExplicitResultId = 3;
  static const int _$jsonEchoWithJsonResultId = 4;
  static const int _$jsonEncodeEchoId = 5;
}

/// Service initializer for EchoService
WorkerService $EchoServiceInitializer(WorkerRequest $$) =>
    _$EchoServiceWorkerService(_$X.$9($$.args[0]), _$X.$11($$.args[1]));

/// Worker for EchoService
base class _$EchoServiceWorker extends Worker implements EchoService {
  _$EchoServiceWorker(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : super($EchoServiceActivator(Squadron.platformType),
            args: [trace, _$X.$13(workloadDelay)]);

  _$EchoServiceWorker.vm(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : super($EchoServiceActivator(SquadronPlatformType.vm),
            args: [trace, _$X.$13(workloadDelay)]);

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithExplicitResult(
          srv.ServiceRequest request,
          {CancelationToken? token}) =>
      send(_$EchoServiceWorkerService._$explicitEchoWithExplicitResultId,
              args: [_$X.$14(request)],
              token: token,
              inspectRequest: true,
              inspectResponse: true)
          .then(_$X.$15);

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$explicitEchoWithJsonResultId,
              args: [_$X.$16(request)],
              inspectRequest: true,
              inspectResponse: true)
          .then(_$X.$17);

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithExplicitResultId,
              args: [_$X.$18(request)],
              inspectRequest: true,
              inspectResponse: true)
          .then(_$X.$19);

  @override
  xxx.Future<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithJsonResultId,
              args: [_$X.$18(request)],
              inspectRequest: true,
              inspectResponse: true)
          .then(_$X.$20);

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEncodeEcho(
          srv.ServiceRequest request,
          [CancelationToken? token]) =>
      send(_$EchoServiceWorkerService._$jsonEncodeEchoId,
              args: [_$X.$21(request)],
              token: token,
              inspectRequest: true,
              inspectResponse: true)
          .then(_$X.$22);

  @override
  void _simulateWorkload() => throw UnimplementedError();

  @override
  // ignore: unused_element
  Logger? get _logger => throw UnimplementedError();

  @override
  // ignore: unused_element
  Duration get _delay => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for EchoService
base class EchoServiceWorker with Releasable implements _$EchoServiceWorker {
  EchoServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._detachToken);
  }

  EchoServiceWorker(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : this._(_$EchoServiceWorker(
            trace, workloadDelay, threadHook, exceptionManager));

  EchoServiceWorker.vm(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : this._(_$EchoServiceWorker.vm(
            trace, workloadDelay, threadHook, exceptionManager));

  final _$EchoServiceWorker _$worker;

  static final Finalizer<_$EchoServiceWorker> _finalizer =
      Finalizer<_$EchoServiceWorker>((w) {
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
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithExplicitResult(
          srv.ServiceRequest request,
          {CancelationToken? token}) =>
      _$worker.explicitEchoWithExplicitResult(request, token: token);

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
          srv.ServiceRequest request) =>
      _$worker.explicitEchoWithJsonResult(request);

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
          srv.ServiceRequest request) =>
      _$worker.jsonEchoWithExplicitResult(request);

  @override
  xxx.Future<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
          srv.ServiceRequest request) =>
      _$worker.jsonEchoWithJsonResult(request);

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEncodeEcho(
          srv.ServiceRequest request,
          [CancelationToken? token]) =>
      _$worker.jsonEncodeEcho(request, token);

  @override
  void _simulateWorkload() => _$worker._simulateWorkload();

  @override
  Logger? get _logger => _$worker._logger;

  @override
  Duration get _delay => _$worker._delay;

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
  xxx.Future<Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  Channel? getSharedChannel() => _$worker.getSharedChannel();

  @override
  xxx.Future<dynamic> send(int command,
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
  xxx.Stream<dynamic> stream(int command,
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

/// Worker pool for EchoService
base class _$EchoServiceWorkerPool extends WorkerPool<EchoServiceWorker>
    implements EchoService {
  _$EchoServiceWorkerPool(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : super(
          (ExceptionManager exceptionManager) => EchoServiceWorker(
              trace, workloadDelay, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  _$EchoServiceWorkerPool.vm(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : super(
          (ExceptionManager exceptionManager) => EchoServiceWorker.vm(
              trace, workloadDelay, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithExplicitResult(
          srv.ServiceRequest request,
          {CancelationToken? token}) =>
      execute((w) => w.explicitEchoWithExplicitResult(request, token: token));

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
          srv.ServiceRequest request) =>
      execute((w) => w.explicitEchoWithJsonResult(request));

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
          srv.ServiceRequest request) =>
      execute((w) => w.jsonEchoWithExplicitResult(request));

  @override
  xxx.Future<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
          srv.ServiceRequest request) =>
      execute((w) => w.jsonEchoWithJsonResult(request));

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEncodeEcho(
          srv.ServiceRequest request,
          [CancelationToken? token]) =>
      execute((w) => w.jsonEncodeEcho(request, token));

  @override
  void _simulateWorkload() => throw UnimplementedError();

  @override
  // ignore: unused_element
  Logger? get _logger => throw UnimplementedError();

  @override
  // ignore: unused_element
  Duration get _delay => throw UnimplementedError();

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for EchoService
base class EchoServiceWorkerPool
    with Releasable
    implements _$EchoServiceWorkerPool {
  EchoServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._detachToken);
  }

  EchoServiceWorkerPool(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : this._(_$EchoServiceWorkerPool(trace, workloadDelay,
            concurrencySettings, threadHook, exceptionManager));

  EchoServiceWorkerPool.vm(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : this._(_$EchoServiceWorkerPool.vm(trace, workloadDelay,
            concurrencySettings, threadHook, exceptionManager));

  final _$EchoServiceWorkerPool _$pool;

  static final Finalizer<_$EchoServiceWorkerPool> _finalizer =
      Finalizer<_$EchoServiceWorkerPool>((p) {
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
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithExplicitResult(
          srv.ServiceRequest request,
          {CancelationToken? token}) =>
      _$pool.explicitEchoWithExplicitResult(request, token: token);

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
          srv.ServiceRequest request) =>
      _$pool.explicitEchoWithJsonResult(request);

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
          srv.ServiceRequest request) =>
      _$pool.jsonEchoWithExplicitResult(request);

  @override
  xxx.Future<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
          srv.ServiceRequest request) =>
      _$pool.jsonEchoWithJsonResult(request);

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEncodeEcho(
          srv.ServiceRequest request,
          [CancelationToken? token]) =>
      _$pool.jsonEncodeEcho(request, token);

  @override
  void _simulateWorkload() => _$pool._simulateWorkload();

  @override
  Logger? get _logger => _$pool._logger;

  @override
  Duration get _delay => _$pool._delay;

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
  xxx.FutureOr<void> start() => _$pool.start();

  @override
  int stop([bool Function(EchoServiceWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(EchoServiceWorker worker, bool removed) listener) =>
      _$pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(EchoServiceWorker worker, bool removed)? listener,
          Object? token}) =>
      _$pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  xxx.Future<T> execute<T>(
          xxx.Future<T> Function(EchoServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  xxx.Stream<T> stream<T>(xxx.Stream<T> Function(EchoServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStreamTask<T>(
          xxx.Stream<T> Function(EchoServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleValueTask<T>(
          xxx.Future<T> Function(EchoServiceWorker worker) task,
          {PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _detachToken => _$pool._detachToken;

  @override
  final Map<int, CommandHandler> operations = WorkerService.noOperations;
}

class _$X {
  static final $0 =
      (($) => ServiceRequestGenericToString.instance.unmarshal($));
  static final $1 =
      (($) => ServiceResponseOfStringToByteBuffer.instance.marshal($));
  static final $2 = (($) => (const ServiceRequestToString()).unmarshal($));
  static final $3 = (($) => ($ as srv.ServiceResponse<String>).toJson());
  static final $4 = (($) => srv.ServiceRequest.fromJson($));
  static final $5 =
      (($) => (const ServiceResponseOfStringToByteBuffer()).marshal($));
  static final $6 = Squadron.converter.nullable($3);
  static final $7 = (($) => ServiceRequestToString.instance.unmarshal($));
  static final $8 = (($) => (const ServiceResponseToJson()).marshal($));
  static final $9 = Squadron.converter.value<bool>();
  static final $10 = (($) => cfg.ServiceConfig<int>.fromJson($));
  static final $11 = Squadron.converter.nullable($10);
  static final $12 = (($) => ($ as cfg.ServiceConfig<int>).toJson());
  static final $13 = Squadron.converter.nullable($12);
  static final $14 = (($) => ServiceRequestGenericToString.instance.marshal($));
  static final $15 =
      (($) => ServiceResponseOfStringToByteBuffer.instance.unmarshal($));
  static final $16 = (($) => (const ServiceRequestToString()).marshal($));
  static final $17 = (($) => srv.ServiceResponse<String>.fromJson($));
  static final $18 = (($) => ($ as srv.ServiceRequest).toJson());
  static final $19 =
      (($) => (const ServiceResponseOfStringToByteBuffer()).unmarshal($));
  static final $20 = Squadron.converter.nullable($17);
  static final $21 = (($) => ServiceRequestToString.instance.marshal($));
  static final $22 = (($) => (const ServiceResponseToJson()).unmarshal($));
}
