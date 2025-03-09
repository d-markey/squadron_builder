// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../echo_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService operations for EchoService
extension _$EchoService$Operations on EchoService {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({
        _$explicitEchoWithExplicitResultId: ($req) async {
          final srv.ServiceResponse<String> $res;
          try {
            final $mc = _$X(contextAware: true);
            $res = await explicitEchoWithExplicitResult($mc.$de1($req.args[0]),
                token: $mc.$de2($req.args[1]));
          } finally {}
          try {
            final $mc = _$X(contextAware: true);
            return $mc.$se3($res);
          } finally {}
        },
        _$explicitEchoWithJsonResultId: ($req) async {
          final srv.ServiceResponse<String> $res;
          try {
            final $mc = _$X(contextAware: true);
            $res = await explicitEchoWithJsonResult($mc.$de4($req.args[0]));
          } finally {}
          try {
            final $mc = _$X(contextAware: false);
            return $mc.$se5($res);
          } finally {}
        },
        _$jsonEchoWithExplicitResultId: ($req) async {
          final srv.ServiceResponse<String> $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = await jsonEchoWithExplicitResult($mc.$de6($req.args[0]));
          } finally {}
          try {
            final $mc = _$X(contextAware: true);
            return $mc.$se7($res);
          } finally {}
        },
        _$jsonEchoWithJsonResultId: ($req) async {
          final srv.ServiceResponse<String>? $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = await jsonEchoWithJsonResult($mc.$de6($req.args[0]));
          } finally {}
          try {
            final $mc = _$X(contextAware: false);
            return $mc.$se8($res);
          } finally {}
        },
        _$jsonEncodeEchoId: ($req) async {
          final srv.ServiceResponse<String> $res;
          try {
            final $mc = _$X(contextAware: true);
            $res = await jsonEncodeEcho(
                $mc.$de9($req.args[0]), $mc.$de2($req.args[1]));
          } finally {}
          try {
            final $mc = _$X(contextAware: true);
            return $mc.$se10($res);
          } finally {}
        },
      });

  static const int _$explicitEchoWithExplicitResultId = 1;
  static const int _$explicitEchoWithJsonResultId = 2;
  static const int _$jsonEchoWithExplicitResultId = 3;
  static const int _$jsonEchoWithJsonResultId = 4;
  static const int _$jsonEncodeEchoId = 5;
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
      final $mc = _$X(contextAware: true);
      $res = await send(
        _$EchoService$Operations._$explicitEchoWithExplicitResultId,
        args: [$mc.$se11(request)],
        token: token,
      );
    } finally {}
    try {
      final $mc = _$X(contextAware: true);
      return $mc.$de13($res);
    } finally {}
  }

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
      srv.ServiceRequest request) async {
    final dynamic $res;
    try {
      final $mc = _$X(contextAware: true);
      $res = await send(
        _$EchoService$Operations._$explicitEchoWithJsonResultId,
        args: [$mc.$se14(request)],
      );
    } finally {}
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de15($res);
    } finally {}
  }

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
      srv.ServiceRequest request) async {
    final dynamic $res;
    try {
      final $mc = _$X(contextAware: false);
      $res = await send(
        _$EchoService$Operations._$jsonEchoWithExplicitResultId,
        args: [$mc.$se16(request)],
      );
    } finally {}
    try {
      final $mc = _$X(contextAware: true);
      return $mc.$de17($res);
    } finally {}
  }

  @override
  xxx.Future<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
      srv.ServiceRequest request) async {
    final dynamic $res;
    try {
      final $mc = _$X(contextAware: false);
      $res = await send(
        _$EchoService$Operations._$jsonEchoWithJsonResultId,
        args: [$mc.$se16(request)],
      );
    } finally {}
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de18($res);
    } finally {}
  }

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEncodeEcho(
      srv.ServiceRequest request,
      [CancelationToken? token]) async {
    final dynamic $res;
    try {
      final $mc = _$X(contextAware: true);
      $res = await send(
        _$EchoService$Operations._$jsonEncodeEchoId,
        args: [$mc.$se19(request)],
        token: token,
      );
    } finally {}
    try {
      final $mc = _$X(contextAware: true);
      return $mc.$de20($res);
    } finally {}
  }
}

/// Facade for EchoService, implements other details of the service not related to
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

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for EchoService
sq.WorkerService $EchoServiceInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$EchoService$WorkerService(
      $mc.$de21($req.args[0]), $mc.$de22($req.args[1]));
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
      : super($EchoServiceActivator(sq.Squadron.platformType), args: (() {
          final $mc = _$X(contextAware: false);
          return [trace, $mc.$se23(workloadDelay)];
        })(), threadHook: threadHook, exceptionManager: exceptionManager);

  EchoServiceWorker.vm(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($EchoServiceActivator(sq.SquadronPlatformType.vm), args: (() {
          final $mc = _$X(contextAware: false);
          return [trace, $mc.$se23(workloadDelay)];
        })(), threadHook: threadHook, exceptionManager: exceptionManager);
}

/// Worker pool for EchoService
base class EchoServiceWorkerPool extends sq.WorkerPool<EchoServiceWorker>
    with _$EchoService$Facade
    implements EchoService {
  EchoServiceWorkerPool(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) => EchoServiceWorker(
              trace, workloadDelay, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  EchoServiceWorkerPool.vm(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) => EchoServiceWorker.vm(
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
}

final class _$X extends sq.MarshalingContext {
  _$X({super.contextAware});
  late final $de0 = value<String>();
  late final $de1 = (($_) =>
      ServiceRequestGenericToString.instance.unmarshal($de0($_), this));
  late final $de2 = nvalue<CancelationToken>();
  late final $se3 =
      (($_) => ServiceResponseOfStringToByteBuffer.instance.marshal($_, this));
  late final $de4 =
      (($_) => (const ServiceRequestToString()).unmarshal($de0($_), this));
  late final $se5 = (($_) => ($_ as srv.ServiceResponse<String>).toJson());
  late final $de6 = (($_) => srv.ServiceRequest.fromJson($_));
  late final $se7 =
      (($_) => (const ServiceResponseOfStringToByteBuffer()).marshal($_, this));
  late final $se8 = (($_) => ($_ as srv.ServiceResponse<String>?)?.toJson());
  late final $de9 =
      (($_) => ServiceRequestToString.instance.unmarshal($de0($_), this));
  late final $se10 =
      (($_) => (const ServiceResponseToJson()).marshal($_, this));
  late final $se11 =
      (($_) => ServiceRequestGenericToString.instance.marshal($_, this));
  late final $de12 = value<ByteBuffer>();
  late final $de13 = (($_) =>
      ServiceResponseOfStringToByteBuffer.instance.unmarshal($de12($_), this));
  late final $se14 =
      (($_) => (const ServiceRequestToString()).marshal($_, this));
  late final $de15 = (($_) => srv.ServiceResponse<String>.fromJson($_));
  late final $se16 = (($_) => ($_ as srv.ServiceRequest).toJson());
  late final $de17 = (($_) =>
      (const ServiceResponseOfStringToByteBuffer()).unmarshal($de12($_), this));
  late final $de18 =
      sq.Converter.allowNull(($_) => srv.ServiceResponse<String>.fromJson($_));
  late final $se19 =
      (($_) => ServiceRequestToString.instance.marshal($_, this));
  late final $de20 =
      (($_) => (const ServiceResponseToJson()).unmarshal($de0($_), this));
  late final $de21 = value<bool>();
  late final $de22 =
      sq.Converter.allowNull(($_) => cfg.ServiceConfig<int>.fromJson($_));
  late final $se23 = (($_) => ($_ as cfg.ServiceConfig<int>?)?.toJson());
}
