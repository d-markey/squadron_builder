// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../echo_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.4.2
// **************************************************************************

/// WorkerService class for EchoService
class _$EchoServiceWorkerService extends EchoService implements WorkerService {
  _$EchoServiceWorkerService(
      [bool trace = false, ServiceConfig<int>? workloadDelay])
      : super(trace, workloadDelay);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$explicitEchoWithExplicitResultId: ($) async =>
        ServiceResponseOfStringToByteBuffer.instance.marshal(
            (await explicitEchoWithExplicitResult(
                ServiceRequestGenericToString.instance.unmarshal($.args[0]),
                token: $.cancelToken))),
    _$explicitEchoWithJsonResultId: ($) async =>
        (await explicitEchoWithJsonResult(
                (const ServiceRequestToString()).unmarshal($.args[0])))
            .toJson(),
    _$jsonEchoWithExplicitResultId: ($) async =>
        (const ServiceResponseOfStringToByteBuffer()).marshal(
            (await jsonEchoWithExplicitResult(
                ServiceRequest.fromJson($.args[0])))),
    _$jsonEchoWithJsonResultId: ($) async =>
        (await jsonEchoWithJsonResult(ServiceRequest.fromJson($.args[0])))
            ?.toJson(),
    _$jsonEncodeEchoId: ($) async => (const ServiceResponseToJson()).marshal(
        (await jsonEncodeEcho(
            ServiceRequestToString.instance.unmarshal($.args[0]),
            $.cancelToken))),
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
            : ServiceConfig<int>.fromJson(startRequest.args[1]));

/// Operations map for EchoService
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$EchoServiceOperations anymore.')
mixin $EchoServiceOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

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
      send(_$EchoServiceWorkerService._$explicitEchoWithExplicitResultId,
              args: [ServiceRequestGenericToString.instance.marshal(request)],
              token: token)
          .then(
              (_) => ServiceResponseOfStringToByteBuffer.instance.unmarshal(_));

  @override
  Future<ServiceResponse<String>> explicitEchoWithJsonResult(
          ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$explicitEchoWithJsonResultId,
              args: [(const ServiceRequestToString()).marshal(request)])
          .then((_) => ServiceResponse<String>.fromJson(_));

  @override
  Future<ServiceResponse<String>> jsonEchoWithExplicitResult(
          ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithExplicitResultId, args: [
        request.toJson()
      ]).then(
          (_) => (const ServiceResponseOfStringToByteBuffer()).unmarshal(_));

  @override
  Future<ServiceResponse<String>?> jsonEchoWithJsonResult(
          ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithJsonResultId, args: [
        request.toJson()
      ]).then((_) => (_ == null) ? null : ServiceResponse<String>.fromJson(_));

  @override
  Future<ServiceResponse<String>> jsonEncodeEcho(ServiceRequest request,
          [CancellationToken? token]) =>
      send(_$EchoServiceWorkerService._$jsonEncodeEchoId,
              args: [ServiceRequestToString.instance.marshal(request)],
              token: token)
          .then((_) => (const ServiceResponseToJson()).unmarshal(_));

  @override
  void _simulateWorkload() => throw UnimplementedError();

  @override
  // ignore: unused_element
  bool get _trace => throw UnimplementedError();

  @override
  // ignore: unused_element
  Duration get _delay => throw UnimplementedError();
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
      execute((w) => w.explicitEchoWithExplicitResult(request, token: token));

  @override
  Future<ServiceResponse<String>> explicitEchoWithJsonResult(
          ServiceRequest request) =>
      execute((w) => w.explicitEchoWithJsonResult(request));

  @override
  Future<ServiceResponse<String>> jsonEchoWithExplicitResult(
          ServiceRequest request) =>
      execute((w) => w.jsonEchoWithExplicitResult(request));

  @override
  Future<ServiceResponse<String>?> jsonEchoWithJsonResult(
          ServiceRequest request) =>
      execute((w) => w.jsonEchoWithJsonResult(request));

  @override
  Future<ServiceResponse<String>> jsonEncodeEcho(ServiceRequest request,
          [CancellationToken? token]) =>
      execute((w) => w.jsonEncodeEcho(request, token));

  @override
  void _simulateWorkload() => throw UnimplementedError();

  @override
  // ignore: unused_element
  bool get _trace => throw UnimplementedError();

  @override
  // ignore: unused_element
  Duration get _delay => throw UnimplementedError();
}
