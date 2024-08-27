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
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$explicitEchoWithExplicitResultId: ($in) async {
      final $out = await explicitEchoWithExplicitResult(
          srv.ServiceRequest.fromJson($in.args[0]),
          token: $in.args[1] as CancelationToken?);
      return $out.toJson();
    },
    _$explicitEchoWithJsonResultId: ($in) async {
      final $out = await explicitEchoWithJsonResult(
          srv.ServiceRequest.fromJson($in.args[0]));
      return $out.toJson();
    },
    _$jsonEchoWithExplicitResultId: ($in) async {
      final $out = await jsonEchoWithExplicitResult(
          srv.ServiceRequest.fromJson($in.args[0]));
      return $out.toJson();
    },
    _$jsonEchoWithJsonResultId: ($in) async {
      final $out = await jsonEchoWithJsonResult(
          srv.ServiceRequest.fromJson($in.args[0]));
      return $out?.toJson();
    },
    _$jsonEncodeEchoId: ($in) async {
      final $out = await jsonEncodeEcho(
          srv.ServiceRequest.fromJson($in.args[0]),
          $in.args[1] as CancelationToken?);
      return $out.toJson();
    },
  });

  static const int _$explicitEchoWithExplicitResultId = 1;
  static const int _$explicitEchoWithJsonResultId = 2;
  static const int _$jsonEchoWithExplicitResultId = 3;
  static const int _$jsonEchoWithJsonResultId = 4;
  static const int _$jsonEncodeEchoId = 5;
}

/// Service initializer for EchoService
WorkerService $EchoServiceInitializer(WorkerRequest $in) =>
    _$EchoServiceWorkerService(
        $in.args[0] as bool,
        ($in.args[1] == null)
            ? null
            : cfg.ServiceConfig<int>.fromJson($in.args[1]));

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
              args: [request.toJson(), token])
          .then(($x) => srv.ServiceResponse<String>.fromJson($x));

  @override
  Future<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$explicitEchoWithJsonResultId,
              args: [request.toJson()])
          .then(($x) => srv.ServiceResponse<String>.fromJson($x));

  @override
  Future<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithExplicitResultId,
              args: [request.toJson()])
          .then(($x) => srv.ServiceResponse<String>.fromJson($x));

  @override
  Future<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithJsonResultId,
              args: [request.toJson()])
          .then(($x) =>
              ($x == null) ? null : srv.ServiceResponse<String>.fromJson($x));

  @override
  Future<srv.ServiceResponse<String>> jsonEncodeEcho(srv.ServiceRequest request,
          [CancelationToken? token]) =>
      send(_$EchoServiceWorkerService._$jsonEncodeEchoId,
              args: [request.toJson(), token])
          .then(($x) => srv.ServiceResponse<String>.fromJson($x));

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
