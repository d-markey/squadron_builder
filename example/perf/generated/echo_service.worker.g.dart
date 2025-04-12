// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../echo_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.1.1 (Squadron 7.1.1)
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

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for EchoService
sq.WorkerService $EchoServiceInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$EchoService$WorkerService(
      $dsr.$11($req.args[0]), $dsr.$13($req.args[1]));
}

/// Worker for EchoService
base class EchoServiceWorker extends sq.Worker
    with _$EchoService$Invoker, _$EchoService$Facade
    implements EchoService {
  EchoServiceWorker(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [trace, $sr.$10(workloadDelay)];
        })(),
        super($EchoServiceActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  EchoServiceWorker.vm(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [trace, $sr.$10(workloadDelay)];
        })(),
        super($EchoServiceActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for EchoService
base class EchoServiceWorkerPool extends sq.WorkerPool<EchoServiceWorker>
    with _$EchoService$Facade
    implements EchoService {
  EchoServiceWorkerPool(
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

  EchoServiceWorkerPool.vm(
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
  late final $9 = (($) => ($ as cfg.ServiceConfig<int>).toJson());
  late final $10 = sq.Converter.allowNull($9);
}
