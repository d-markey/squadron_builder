// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../echo_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.3.1
// **************************************************************************

/// Operations map for EchoService
mixin $EchoServiceOperations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {
        _$explicitEchoWithExplicitResultId: (req) async =>
            ServiceResponseOfStringToByteBuffer.instance.marshall(
                (await (this as EchoService).explicitEchoWithExplicitResult(
                    ServiceRequestGenericToString.instance
                        .unmarshall(req.args[0]),
                    token: req.cancelToken))),
        _$explicitEchoWithJsonResultId: (req) async =>
            (await (this as EchoService).explicitEchoWithJsonResult(
                    (const ServiceRequestToString()).unmarshall(req.args[0])))
                .toJson(),
        _$jsonEchoWithExplicitResultId: (req) async =>
            (const ServiceResponseOfStringToByteBuffer()).marshall(
                (await (this as EchoService).jsonEchoWithExplicitResult(
                    ServiceRequest.fromJson(req.args[0])))),
        _$jsonEchoWithJsonResultId: (req) async => (await (this as EchoService)
                .jsonEchoWithJsonResult(ServiceRequest.fromJson(req.args[0])))
            ?.toJson(),
        _$jsonEncodeEchoId: (req) async => (const ServiceResponseToJson())
            .marshall((await (this as EchoService).jsonEncodeEcho(
                ServiceRequestToString.instance.unmarshall(req.args[0]),
                req.cancelToken)))
      };
      _operations = ops;
    }
    return ops;
  }

  static const int _$explicitEchoWithExplicitResultId = 1;
  static const int _$explicitEchoWithJsonResultId = 2;
  static const int _$jsonEchoWithExplicitResultId = 3;
  static const int _$jsonEchoWithJsonResultId = 4;
  static const int _$jsonEncodeEchoId = 5;
}

/// Service initializer for EchoService
EchoService $EchoServiceInitializer(WorkerRequest startRequest) => EchoService(
    startRequest.args[0],
    (startRequest.args[1] == null)
        ? null
        : ServiceConfig<int>.fromJson(startRequest.args[1]));

/// Worker for EchoService
class EchoServiceWorker extends Worker implements EchoService {
  EchoServiceWorker(
      [bool trace = false,
      ServiceConfig<int>? workloadDelay,
      PlatformWorkerHook? platformWorkerHook])
      : super($EchoServiceActivator,
            args: [trace, workloadDelay?.toJson()],
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
  void _simulateWorkload() => throw UnimplementedError();

  @override
  bool get _trace => throw UnimplementedError();

  @override
  Duration get _delay => throw UnimplementedError();

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for EchoService
class EchoServiceWorkerPool extends WorkerPool<EchoServiceWorker>
    implements EchoService {
  EchoServiceWorkerPool(
      [bool trace = false,
      ServiceConfig<int>? workloadDelay,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => EchoServiceWorker(trace, workloadDelay, platformWorkerHook),
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
  void _simulateWorkload() => throw UnimplementedError();

  @override
  bool get _trace => throw UnimplementedError();

  @override
  Duration get _delay => throw UnimplementedError();

  @override
  Map<int, CommandHandler>? _operations;
}
