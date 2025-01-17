// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../echo_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.2.0
// **************************************************************************

/// WorkerService class for EchoService
class _$EchoServiceWorkerService extends EchoService implements WorkerService {
  _$EchoServiceWorkerService([super.trace = false, super.workloadDelay])
      : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$explicitEchoWithExplicitResultId: ($) async => _$X.$impl.$sr1(
        await explicitEchoWithExplicitResult(_$X.$impl.$dsr0($.args[0]),
            token: $.cancelToken)),
    _$explicitEchoWithJsonResultId: ($) async => _$X.$impl
        .$sr3(await explicitEchoWithJsonResult(_$X.$impl.$dsr2($.args[0]))),
    _$jsonEchoWithExplicitResultId: ($) async => _$X.$impl
        .$sr5(await jsonEchoWithExplicitResult(_$X.$impl.$dsr4($.args[0]))),
    _$jsonEchoWithJsonResultId: ($) async => _$X.$impl
        .$sr6(await jsonEchoWithJsonResult(_$X.$impl.$dsr4($.args[0]))),
    _$jsonEncodeEchoId: ($) async => _$X.$impl
        .$sr8(await jsonEncodeEcho(_$X.$impl.$dsr7($.args[0]), $.cancelToken)),
  });

  static const int _$explicitEchoWithExplicitResultId = 1;
  static const int _$explicitEchoWithJsonResultId = 2;
  static const int _$jsonEchoWithExplicitResultId = 3;
  static const int _$jsonEchoWithJsonResultId = 4;
  static const int _$jsonEncodeEchoId = 5;
}

/// Service initializer for EchoService
WorkerService $EchoServiceInitializer(WorkerRequest $$) =>
    _$EchoServiceWorkerService(
        _$X.$impl.$dsr9($$.args[0]), _$X.$impl.$dsr11($$.args[1]));

/// Worker for EchoService
base class EchoServiceWorker extends Worker implements EchoService {
  EchoServiceWorker(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : super($EchoServiceActivator(Squadron.platformType),
            args: [trace, _$X.$impl.$sr13(workloadDelay)]);

  EchoServiceWorker.vm(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : super($EchoServiceActivator(SquadronPlatformType.vm),
            args: [trace, _$X.$impl.$sr13(workloadDelay)]);

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithExplicitResult(
          srv.ServiceRequest request,
          {CancelationToken? token}) =>
      send(_$EchoServiceWorkerService._$explicitEchoWithExplicitResultId,
              args: [_$X.$impl.$sr14(request)], token: token)
          .then(_$X.$impl.$dsr15);

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$explicitEchoWithJsonResultId,
          args: [_$X.$impl.$sr16(request)]).then(_$X.$impl.$dsr17);

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithExplicitResultId,
          args: [_$X.$impl.$sr18(request)]).then(_$X.$impl.$dsr19);

  @override
  xxx.Future<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithJsonResultId,
          args: [_$X.$impl.$sr18(request)]).then(_$X.$impl.$dsr20);

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEncodeEcho(
          srv.ServiceRequest request,
          [CancelationToken? token]) =>
      send(_$EchoServiceWorkerService._$jsonEncodeEchoId,
              args: [_$X.$impl.$sr21(request)], token: token)
          .then(_$X.$impl.$dsr22);

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

final class _$X {
  _$X._();

  static _$X? _impl;

  static _$X get $impl {
    if (_impl == null) {
      Squadron.onConverterChanged(() => _impl = _$X._());
      _impl = _$X._();
    }
    return _impl!;
  }

  late final $dsr0 =
      (($) => ServiceRequestGenericToString.instance.unmarshal($));
  late final $sr1 =
      (($) => ServiceResponseOfStringToByteBuffer.instance.marshal($));
  late final $dsr2 = (($) => (const ServiceRequestToString()).unmarshal($));
  late final $sr3 = (($) => ($ as srv.ServiceResponse<String>).toJson());
  late final $dsr4 = (($) => srv.ServiceRequest.fromJson($));
  late final $sr5 =
      (($) => (const ServiceResponseOfStringToByteBuffer()).marshal($));
  late final $sr6 = Squadron.converter.nullable($sr3);
  late final $dsr7 = (($) => ServiceRequestToString.instance.unmarshal($));
  late final $sr8 = (($) => (const ServiceResponseToJson()).marshal($));
  late final $dsr9 = Squadron.converter.value<bool>();
  late final $dsr10 = (($) => cfg.ServiceConfig<int>.fromJson($));
  late final $dsr11 = Squadron.converter.nullable($dsr10);
  late final $sr12 = (($) => ($ as cfg.ServiceConfig<int>).toJson());
  late final $sr13 = Squadron.converter.nullable($sr12);
  late final $sr14 = (($) => ServiceRequestGenericToString.instance.marshal($));
  late final $dsr15 =
      (($) => ServiceResponseOfStringToByteBuffer.instance.unmarshal($));
  late final $sr16 = (($) => (const ServiceRequestToString()).marshal($));
  late final $dsr17 = (($) => srv.ServiceResponse<String>.fromJson($));
  late final $sr18 = (($) => ($ as srv.ServiceRequest).toJson());
  late final $dsr19 =
      (($) => (const ServiceResponseOfStringToByteBuffer()).unmarshal($));
  late final $dsr20 = Squadron.converter.nullable($dsr17);
  late final $sr21 = (($) => ServiceRequestToString.instance.marshal($));
  late final $dsr22 = (($) => (const ServiceResponseToJson()).unmarshal($));
}
