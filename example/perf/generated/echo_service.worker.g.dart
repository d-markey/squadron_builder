// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../echo_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for EchoService
class _$EchoServiceWorkerService extends EchoService implements WorkerService {
  _$EchoServiceWorkerService(
      [bool trace = false, cfg.ServiceConfig<int>? workloadDelay])
      : super(trace, workloadDelay);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$explicitEchoWithExplicitResultId: ($) async {
      final $r = await explicitEchoWithExplicitResult(
          ServiceRequestGenericToString.instance.unmarshal($.args[0]),
          token: $.args[1]);
      return ServiceResponseOfStringToByteBuffer.instance.marshal($r);
    },
    _$explicitEchoWithJsonResultId: ($) async {
      final $r = await explicitEchoWithJsonResult(
          (const ServiceRequestToString()).unmarshal($.args[0]));
      return $r.toJson();
    },
    _$jsonEchoWithExplicitResultId: ($) async {
      final $r = await jsonEchoWithExplicitResult(
          srv.ServiceRequest.fromJson($.args[0]));
      return (const ServiceResponseOfStringToByteBuffer()).marshal($r);
    },
    _$jsonEchoWithJsonResultId: ($) async {
      final $r =
          await jsonEchoWithJsonResult(srv.ServiceRequest.fromJson($.args[0]));
      return $r?.toJson();
    },
    _$jsonEncodeEchoId: ($) async {
      final $r = await jsonEncodeEcho(
          ServiceRequestToString.instance.unmarshal($.args[0]), $.args[1]);
      return (const ServiceResponseToJson()).marshal($r);
    },
  });

  static const int _$explicitEchoWithExplicitResultId = 1;
  static const int _$explicitEchoWithJsonResultId = 2;
  static const int _$jsonEchoWithExplicitResultId = 3;
  static const int _$jsonEchoWithJsonResultId = 4;
  static const int _$jsonEncodeEchoId = 5;
}

/// Service initializer for EchoService
WorkerService $EchoServiceInitializer(WorkerRequest startRequest) =>
    _$EchoServiceWorkerService(
        startRequest.args[0],
        (startRequest.args[1] == null)
            ? null
            : cfg.ServiceConfig<int>.fromJson(startRequest.args[1]));

/// Worker for EchoService
class EchoServiceWorker extends Worker implements EchoService {
  EchoServiceWorker(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      PlatformThreadHook? threadHook])
      : super($EchoServiceActivator,
            args: [trace, workloadDelay?.toJson()], threadHook: threadHook);

  @override
  Future<srv.ServiceResponse<String>> explicitEchoWithExplicitResult(
          srv.ServiceRequest request,
          {CancelationToken? token}) =>
      send(_$EchoServiceWorkerService._$explicitEchoWithExplicitResultId,
          args: [
            ServiceRequestGenericToString.instance.marshal(request),
            token
          ]).then(
          (_) => ServiceResponseOfStringToByteBuffer.instance.unmarshal(_));

  @override
  Future<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$explicitEchoWithJsonResultId,
              args: [(const ServiceRequestToString()).marshal(request)])
          .then((_) => srv.ServiceResponse<String>.fromJson(_));

  @override
  Future<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithExplicitResultId, args: [
        request.toJson()
      ]).then(
          (_) => (const ServiceResponseOfStringToByteBuffer()).unmarshal(_));

  @override
  Future<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithJsonResultId, args: [
        request.toJson()
      ]).then(
          (_) => (_ == null) ? null : srv.ServiceResponse<String>.fromJson(_));

  @override
  Future<srv.ServiceResponse<String>> jsonEncodeEcho(srv.ServiceRequest request,
          [CancelationToken? token]) =>
      send(_$EchoServiceWorkerService._$jsonEncodeEchoId,
              args: [ServiceRequestToString.instance.marshal(request), token])
          .then((_) => (const ServiceResponseToJson()).unmarshal(_));

  @override
  void _simulateWorkload() => throw UnimplementedError();

  @override
  // ignore: unused_element
  Logger? get _logger => throw UnimplementedError();

  @override
  // ignore: unused_element
  Duration get _delay => throw UnimplementedError();
}

/// Worker pool for EchoService
class EchoServiceWorkerPool extends WorkerPool<EchoServiceWorker>
    implements EchoService {
  EchoServiceWorkerPool(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook])
      : super(() => EchoServiceWorker(trace, workloadDelay, threadHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<srv.ServiceResponse<String>> explicitEchoWithExplicitResult(
          srv.ServiceRequest request,
          {CancelationToken? token}) =>
      execute((w) => w.explicitEchoWithExplicitResult(request, token: token));

  @override
  Future<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
          srv.ServiceRequest request) =>
      execute((w) => w.explicitEchoWithJsonResult(request));

  @override
  Future<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
          srv.ServiceRequest request) =>
      execute((w) => w.jsonEchoWithExplicitResult(request));

  @override
  Future<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
          srv.ServiceRequest request) =>
      execute((w) => w.jsonEchoWithJsonResult(request));

  @override
  Future<srv.ServiceResponse<String>> jsonEncodeEcho(srv.ServiceRequest request,
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
}
