// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../echo_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.4
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
base class EchoServiceWorker extends Worker implements EchoService {
  EchoServiceWorker(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : super($EchoServiceActivator(Squadron.platformType),
            args: [trace, _$X.$13(workloadDelay)]);

  EchoServiceWorker.vm(
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
              args: [_$X.$14(request)], token: token)
          .then(_$X.$15);

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$explicitEchoWithJsonResultId,
          args: [_$X.$16(request)]).then(_$X.$17);

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithExplicitResultId,
          args: [_$X.$18(request)]).then(_$X.$19);

  @override
  xxx.Future<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithJsonResultId,
          args: [_$X.$18(request)]).then(_$X.$20);

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEncodeEcho(
          srv.ServiceRequest request,
          [CancelationToken? token]) =>
      send(_$EchoServiceWorkerService._$jsonEncodeEchoId,
              args: [_$X.$21(request)], token: token)
          .then(_$X.$22);

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
base class EchoServiceWorkerPool extends WorkerPool<EchoServiceWorker>
    implements EchoService {
  EchoServiceWorkerPool(
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

  EchoServiceWorkerPool.vm(
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
}

sealed class _$X {
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
