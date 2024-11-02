// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../echo_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.1.0
// **************************************************************************

/// WorkerService class for EchoService
class _$EchoServiceWorkerService extends EchoService implements WorkerService {
  _$EchoServiceWorkerService([super.trace = false, super.workloadDelay])
      : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$explicitEchoWithExplicitResultId: ($) async => _$X.$sr1(
        await explicitEchoWithExplicitResult(_$X.$dsr0($.args[0]),
            token: $.cancelToken)),
    _$explicitEchoWithJsonResultId: ($) async =>
        _$X.$sr3(await explicitEchoWithJsonResult(_$X.$dsr2($.args[0]))),
    _$jsonEchoWithExplicitResultId: ($) async =>
        _$X.$sr5(await jsonEchoWithExplicitResult(_$X.$dsr4($.args[0]))),
    _$jsonEchoWithJsonResultId: ($) async =>
        _$X.$sr6(await jsonEchoWithJsonResult(_$X.$dsr4($.args[0]))),
    _$jsonEncodeEchoId: ($) async =>
        _$X.$sr8(await jsonEncodeEcho(_$X.$dsr7($.args[0]), $.cancelToken)),
  });

  static const int _$explicitEchoWithExplicitResultId = 1;
  static const int _$explicitEchoWithJsonResultId = 2;
  static const int _$jsonEchoWithExplicitResultId = 3;
  static const int _$jsonEchoWithJsonResultId = 4;
  static const int _$jsonEncodeEchoId = 5;
}

/// Service initializer for EchoService
WorkerService $EchoServiceInitializer(WorkerRequest $$) =>
    _$EchoServiceWorkerService(_$X.$dsr9($$.args[0]), _$X.$dsr11($$.args[1]));

/// Worker for EchoService
base class EchoServiceWorker extends Worker implements EchoService {
  EchoServiceWorker(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : super($EchoServiceActivator(Squadron.platformType),
            args: [trace, _$X.$sr13(workloadDelay)]);

  EchoServiceWorker.vm(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : super($EchoServiceActivator(SquadronPlatformType.vm),
            args: [trace, _$X.$sr13(workloadDelay)]);

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithExplicitResult(
          srv.ServiceRequest request,
          {CancelationToken? token}) =>
      send(_$EchoServiceWorkerService._$explicitEchoWithExplicitResultId,
              args: [_$X.$sr14(request)], token: token)
          .then(_$X.$dsr15);

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$explicitEchoWithJsonResultId,
          args: [_$X.$sr16(request)]).then(_$X.$dsr17);

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithExplicitResultId,
          args: [_$X.$sr18(request)]).then(_$X.$dsr19);

  @override
  xxx.Future<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithJsonResultId,
          args: [_$X.$sr18(request)]).then(_$X.$dsr20);

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEncodeEcho(
          srv.ServiceRequest request,
          [CancelationToken? token]) =>
      send(_$EchoServiceWorkerService._$jsonEncodeEchoId,
              args: [_$X.$sr21(request)], token: token)
          .then(_$X.$dsr22);

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
  static final $dsr0 =
      (($) => ServiceRequestGenericToString.instance.unmarshal($));
  static final $sr1 =
      (($) => ServiceResponseOfStringToByteBuffer.instance.marshal($));
  static final $dsr2 = (($) => (const ServiceRequestToString()).unmarshal($));
  static final $sr3 = (($) => ($ as srv.ServiceResponse<String>).toJson());
  static final $dsr4 = (($) => srv.ServiceRequest.fromJson($));
  static final $sr5 =
      (($) => (const ServiceResponseOfStringToByteBuffer()).marshal($));
  static final $sr6 = Squadron.converter.nullable(_$X.$sr3);
  static final $dsr7 = (($) => ServiceRequestToString.instance.unmarshal($));
  static final $sr8 = (($) => (const ServiceResponseToJson()).marshal($));
  static final $dsr9 = Squadron.converter.value<bool>();
  static final $dsr10 = (($) => cfg.ServiceConfig<int>.fromJson($));
  static final $dsr11 = Squadron.converter.nullable(_$X.$dsr10);
  static final $sr12 = (($) => ($ as cfg.ServiceConfig<int>).toJson());
  static final $sr13 = Squadron.converter.nullable(_$X.$sr12);
  static final $sr14 =
      (($) => ServiceRequestGenericToString.instance.marshal($));
  static final $dsr15 =
      (($) => ServiceResponseOfStringToByteBuffer.instance.unmarshal($));
  static final $sr16 = (($) => (const ServiceRequestToString()).marshal($));
  static final $dsr17 = (($) => srv.ServiceResponse<String>.fromJson($));
  static final $sr18 = (($) => ($ as srv.ServiceRequest).toJson());
  static final $dsr19 =
      (($) => (const ServiceResponseOfStringToByteBuffer()).unmarshal($));
  static final $dsr20 = Squadron.converter.nullable(_$X.$dsr17);
  static final $sr21 = (($) => ServiceRequestToString.instance.marshal($));
  static final $dsr22 = (($) => (const ServiceResponseToJson()).unmarshal($));
}
