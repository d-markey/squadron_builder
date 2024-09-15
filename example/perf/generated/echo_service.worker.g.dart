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
    _$explicitEchoWithExplicitResultId: ($in) async => _$X.$3(
        await explicitEchoWithExplicitResult(_$X.$0($in.args[0]),
            token: _$X.$2($in.args[1]))),
    _$explicitEchoWithJsonResultId: ($in) async =>
        _$X.$5(await explicitEchoWithJsonResult(_$X.$4($in.args[0]))),
    _$jsonEchoWithExplicitResultId: ($in) async =>
        _$X.$7(await jsonEchoWithExplicitResult(_$X.$6($in.args[0]))),
    _$jsonEchoWithJsonResultId: ($in) async =>
        _$X.$8(await jsonEchoWithJsonResult(_$X.$6($in.args[0]))),
    _$jsonEncodeEchoId: ($in) async =>
        _$X.$10(await jsonEncodeEcho(_$X.$9($in.args[0]), _$X.$2($in.args[1]))),
  });

  static const int _$explicitEchoWithExplicitResultId = 1;
  static const int _$explicitEchoWithJsonResultId = 2;
  static const int _$jsonEchoWithExplicitResultId = 3;
  static const int _$jsonEchoWithJsonResultId = 4;
  static const int _$jsonEncodeEchoId = 5;
}

/// Service initializer for EchoService
WorkerService $EchoServiceInitializer(WorkerRequest $in) =>
    _$EchoServiceWorkerService(_$X.$11($in.args[0]), _$X.$13($in.args[1]));

/// Worker for EchoService
class EchoServiceWorker extends Worker implements EchoService {
  EchoServiceWorker(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      PlatformThreadHook? threadHook])
      : super($EchoServiceActivator,
            args: [trace, _$X.$15(workloadDelay)], threadHook: threadHook);

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithExplicitResult(
          srv.ServiceRequest request,
          {CancelationToken? token}) =>
      send(_$EchoServiceWorkerService._$explicitEchoWithExplicitResultId,
          args: [_$X.$16(request), token]).then(_$X.$17);

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$explicitEchoWithJsonResultId,
          args: [_$X.$18(request)]).then(_$X.$19);

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithExplicitResultId,
          args: [_$X.$20(request)]).then(_$X.$21);

  @override
  xxx.Future<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
          srv.ServiceRequest request) =>
      send(_$EchoServiceWorkerService._$jsonEchoWithJsonResultId,
          args: [_$X.$20(request)]).then(_$X.$22);

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEncodeEcho(
          srv.ServiceRequest request,
          [CancelationToken? token]) =>
      send(_$EchoServiceWorkerService._$jsonEncodeEchoId,
          args: [_$X.$23(request), token]).then(_$X.$24);

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

class _$X {
  static final $0 =
      (($) => ServiceRequestGenericToString.instance.unmarshal($));
  static final $1 = Squadron.converter.value<CancelationToken>();
  static final $2 = Squadron.converter.nullable($1);
  static final $3 =
      (($) => ServiceResponseOfStringToByteBuffer.instance.marshal($));
  static final $4 = (($) => (const ServiceRequestToString()).unmarshal($));
  static final $5 = (($) => ($ as srv.ServiceResponse<String>).toJson());
  static final $6 = (($) => srv.ServiceRequest.fromJson($));
  static final $7 =
      (($) => (const ServiceResponseOfStringToByteBuffer()).marshal($));
  static final $8 = Squadron.converter.nullable($5);
  static final $9 = (($) => ServiceRequestToString.instance.unmarshal($));
  static final $10 = (($) => (const ServiceResponseToJson()).marshal($));
  static final $11 = Squadron.converter.value<bool>();
  static final $12 = (($) => cfg.ServiceConfig<int>.fromJson($));
  static final $13 = Squadron.converter.nullable($12);
  static final $14 = (($) => ($ as cfg.ServiceConfig<int>).toJson());
  static final $15 = Squadron.converter.nullable($14);
  static final $16 = (($) => ServiceRequestGenericToString.instance.marshal($));
  static final $17 =
      (($) => ServiceResponseOfStringToByteBuffer.instance.unmarshal($));
  static final $18 = (($) => (const ServiceRequestToString()).marshal($));
  static final $19 = (($) => srv.ServiceResponse<String>.fromJson($));
  static final $20 = (($) => ($ as srv.ServiceRequest).toJson());
  static final $21 =
      (($) => (const ServiceResponseOfStringToByteBuffer()).unmarshal($));
  static final $22 = Squadron.converter.nullable($19);
  static final $23 = (($) => ServiceRequestToString.instance.marshal($));
  static final $24 = (($) => (const ServiceResponseToJson()).unmarshal($));
}
