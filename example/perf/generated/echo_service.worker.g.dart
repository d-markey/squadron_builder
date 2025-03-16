// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../echo_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// Command ids used in operations map
const int _$explicitEchoWithExplicitResultId = 1;
const int _$explicitEchoWithJsonResultId = 2;
const int _$jsonEchoWithExplicitResultId = 3;
const int _$jsonEchoWithJsonResultId = 4;
const int _$jsonEncodeEchoId = 5;

/// WorkerService operations for EchoService
extension on EchoService {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$explicitEchoWithExplicitResultId: ($req) async {
          final srv.ServiceResponse<String> $res;
          try {
            final $dsr = _$Deser(contextAware: true);
            $res = await explicitEchoWithExplicitResult($dsr.$1($req.args[0]),
                token: $req.cancelToken);
          } finally {}
          try {
            final $sr = _$Ser(contextAware: true);
            return $sr.$0($res);
          } finally {}
        },
        _$explicitEchoWithJsonResultId: ($req) async {
          final srv.ServiceResponse<String> $res;
          try {
            final $dsr = _$Deser(contextAware: true);
            $res = await explicitEchoWithJsonResult($dsr.$2($req.args[0]));
          } finally {}
          try {
            final $sr = _$Ser(contextAware: false);
            return $sr.$1($res);
          } finally {}
        },
        _$jsonEchoWithExplicitResultId: ($req) async {
          final srv.ServiceResponse<String> $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await jsonEchoWithExplicitResult($dsr.$3($req.args[0]));
          } finally {}
          try {
            final $sr = _$Ser(contextAware: true);
            return $sr.$2($res);
          } finally {}
        },
        _$jsonEchoWithJsonResultId: ($req) async {
          final srv.ServiceResponse<String>? $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await jsonEchoWithJsonResult($dsr.$3($req.args[0]));
          } finally {}
          try {
            final $sr = _$Ser(contextAware: false);
            return $sr.$3($res);
          } finally {}
        },
        _$jsonEncodeEchoId: ($req) async {
          final srv.ServiceResponse<String> $res;
          try {
            final $dsr = _$Deser(contextAware: true);
            $res =
                await jsonEncodeEcho($dsr.$4($req.args[0]), $req.cancelToken);
          } finally {}
          try {
            final $sr = _$Ser(contextAware: true);
            return $sr.$4($res);
          } finally {}
        },
      });
}

/// Invoker for EchoService, implements the public interface to invoke the
/// remote service.
mixin _$EchoService$Invoker on sq.Invoker implements EchoService {
  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithExplicitResult(
      srv.ServiceRequest request,
      {CancelationToken? token}) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: true);
      $res = await send(_$explicitEchoWithExplicitResultId,
          args: [$sr.$5(request)], token: token);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: true);
      return $dsr.$6($res);
    } finally {}
  }

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
      srv.ServiceRequest request) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: true);
      $res =
          await send(_$explicitEchoWithJsonResultId, args: [$sr.$6(request)]);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$7($res);
    } finally {}
  }

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
      srv.ServiceRequest request) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: false);
      $res =
          await send(_$jsonEchoWithExplicitResultId, args: [$sr.$7(request)]);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: true);
      return $dsr.$8($res);
    } finally {}
  }

  @override
  xxx.Future<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
      srv.ServiceRequest request) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: false);
      $res = await send(_$jsonEchoWithJsonResultId, args: [$sr.$7(request)]);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$9($res);
    } finally {}
  }

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEncodeEcho(
      srv.ServiceRequest request,
      [CancelationToken? token]) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: true);
      $res =
          await send(_$jsonEncodeEchoId, args: [$sr.$8(request)], token: token);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: true);
      return $dsr.$10($res);
    } finally {}
  }
}

/// Facade for EchoService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$EchoService$Facade implements EchoService {
  @override
  void _simulateWorkload() => throw UnimplementedError();

  @override
  // ignore: unused_element
  Logger? get _logger => throw UnimplementedError();

  @override
  // ignore: unused_element
  Duration get _delay => throw UnimplementedError();
}

/// WorkerService class for EchoService
class _$EchoService$WorkerService extends EchoService
    implements sq.WorkerService {
  _$EchoService$WorkerService([super.trace = false, super.workloadDelay])
      : super();

  sq.OperationsMap? _$ops;

  @override
  sq.OperationsMap get operations => (_$ops ??= _$getOperations());
}

/// Service initializer for EchoService
sq.WorkerService $EchoServiceInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$EchoService$WorkerService(
      $dsr.$11($req.args[0]), $dsr.$13($req.args[1]));
}

/// Worker for EchoService
base class _$EchoServiceWorker extends sq.Worker
    with _$EchoService$Invoker, _$EchoService$Facade
    implements EchoService {
  _$EchoServiceWorker(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$9(trace), $sr.$11(workloadDelay)];
        })(),
        super($EchoServiceActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  _$EchoServiceWorker.vm(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$9(trace), $sr.$11(workloadDelay)];
        })(),
        super($EchoServiceActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  final Object _$detachToken = Object();
}

/// Finalizable worker wrapper for EchoService
base class EchoServiceWorker with Releasable implements _$EchoServiceWorker {
  EchoServiceWorker._(this._$worker) {
    _finalizer.attach(this, _$worker, detach: _$worker._$detachToken);
  }

  EchoServiceWorker(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$EchoServiceWorker(
            trace, workloadDelay, threadHook, exceptionManager));

  EchoServiceWorker.vm(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : this._(_$EchoServiceWorker.vm(
            trace, workloadDelay, threadHook, exceptionManager));

  final _$EchoServiceWorker _$worker;

  static final Finalizer<_$EchoServiceWorker> _finalizer =
      Finalizer<_$EchoServiceWorker>((w) {
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
  sq.ExceptionManager get exceptionManager => _$worker.exceptionManager;

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
  sq.WorkerStat get stats => _$worker.stats;

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
  xxx.Future<sq.Channel> start() => _$worker.start();

  @override
  void stop() => _$worker.stop();

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$worker.terminate(ex);

  @override
  sq.Channel? getSharedChannel() => _$worker.getSharedChannel();

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
  Object get _$detachToken => _$worker._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

/// Worker pool for EchoService
base class _$EchoServiceWorkerPool extends sq.WorkerPool<EchoServiceWorker>
    with _$EchoService$Facade
    implements EchoService {
  _$EchoServiceWorkerPool(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) => EchoServiceWorker(
                trace, workloadDelay, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  _$EchoServiceWorkerPool.vm(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) => EchoServiceWorker.vm(
                trace, workloadDelay, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

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

  final Object _$detachToken = Object();
}

/// Finalizable worker pool wrapper for EchoService
base class EchoServiceWorkerPool
    with Releasable
    implements _$EchoServiceWorkerPool {
  EchoServiceWorkerPool._(this._$pool) {
    _finalizer.attach(this, _$pool, detach: _$pool._$detachToken);
  }

  EchoServiceWorkerPool(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$EchoServiceWorkerPool(trace, workloadDelay, threadHook,
            exceptionManager, concurrencySettings));

  EchoServiceWorkerPool.vm(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : this._(_$EchoServiceWorkerPool.vm(trace, workloadDelay, threadHook,
            exceptionManager, concurrencySettings));

  final _$EchoServiceWorkerPool _$pool;

  static final Finalizer<_$EchoServiceWorkerPool> _finalizer =
      Finalizer<_$EchoServiceWorkerPool>((p) {
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
  Iterable<sq.WorkerStat> get stats => _$pool.stats;

  @override
  bool get stopped => _$pool.stopped;

  @override
  int get totalErrors => _$pool.totalErrors;

  @override
  int get totalWorkload => _$pool.totalWorkload;

  @override
  int get workload => _$pool.workload;

  @override
  void cancelAll([String? message]) => _$pool.cancelAll(message);

  @override
  void cancel(sq.Task task, [String? message]) => _$pool.cancel(task, message);

  @override
  xxx.FutureOr<void> start() => _$pool.start();

  @override
  int stop([bool Function(EchoServiceWorker worker)? predicate]) =>
      _$pool.stop(predicate);

  @override
  void terminate([sq.TaskTerminatedException? ex]) => _$pool.terminate(ex);

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
          {sq.PerfCounter? counter}) =>
      _$pool.execute<T>(task, counter: counter);

  @override
  xxx.Stream<T> stream<T>(xxx.Stream<T> Function(EchoServiceWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.stream<T>(task, counter: counter);

  @override
  sq.StreamTask<T> scheduleStreamTask<T>(
          xxx.Stream<T> Function(EchoServiceWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleStreamTask<T>(task, counter: counter);

  @override
  sq.ValueTask<T> scheduleValueTask<T>(
          xxx.Future<T> Function(EchoServiceWorker worker) task,
          {sq.PerfCounter? counter}) =>
      _$pool.scheduleValueTask<T>(task, counter: counter);

  @override
  Object get _$detachToken => _$pool._$detachToken;

  @override
  final sq.OperationsMap operations = sq.WorkerService.noOperations;
}

final class _$Deser extends sq.MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<String>();
  late final $1 =
      (($) => ServiceRequestGenericToString.instance.unmarshal($0($), this));
  late final $2 =
      (($) => (const ServiceRequestToString()).unmarshal($0($), this));
  late final $3 = (($) => srv.ServiceRequest.fromJson($));
  late final $4 =
      (($) => ServiceRequestToString.instance.unmarshal($0($), this));
  late final $5 = value<ByteBuffer>();
  late final $6 = (($) =>
      ServiceResponseOfStringToByteBuffer.instance.unmarshal($5($), this));
  late final $7 = (($) => srv.ServiceResponse<String>.fromJson($));
  late final $8 = (($) =>
      (const ServiceResponseOfStringToByteBuffer()).unmarshal($5($), this));
  late final $9 = sq.Converter.allowNull($7);
  late final $10 =
      (($) => (const ServiceResponseToJson()).unmarshal($0($), this));
  late final $11 = value<bool>();
  late final $12 = (($) => cfg.ServiceConfig<int>.fromJson($));
  late final $13 = sq.Converter.allowNull($12);
}

final class _$Ser extends sq.MarshalingContext {
  _$Ser({super.contextAware});
  late final $0 =
      (($) => ServiceResponseOfStringToByteBuffer.instance.marshal($, this));
  late final $1 = (($) => ($ as srv.ServiceResponse<String>).toJson());
  late final $2 =
      (($) => (const ServiceResponseOfStringToByteBuffer()).marshal($, this));
  late final $3 = sq.Converter.allowNull($1);
  late final $4 = (($) => (const ServiceResponseToJson()).marshal($, this));
  late final $5 =
      (($) => ServiceRequestGenericToString.instance.marshal($, this));
  late final $6 = (($) => (const ServiceRequestToString()).marshal($, this));
  late final $7 = (($) => ($ as srv.ServiceRequest).toJson());
  late final $8 = (($) => ServiceRequestToString.instance.marshal($, this));
  late final $9 = value<bool>();
  late final $10 = (($) => ($ as cfg.ServiceConfig<int>).toJson());
  late final $11 = sq.Converter.allowNull($10);
}
