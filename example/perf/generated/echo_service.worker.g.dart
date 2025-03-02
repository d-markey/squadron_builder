// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../echo_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService class for EchoService
class _$EchoServiceWorkerService extends EchoService implements WorkerService {
  _$EchoServiceWorkerService([super.trace = false, super.workloadDelay])
      : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$explicitEchoWithExplicitResultId: ($req_) async {
      srv.ServiceResponse<String> $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = await explicitEchoWithExplicitResult(
          (($_) => ServiceRequestGenericToString.instance
              .unmarshal($mc.value<String>()($_), $mc))($req_.args[0]),
          token: $req_.cancelToken,
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return (($_) => ServiceResponseOfStringToByteBuffer.instance
            .marshal($_, $mc))($res_);
      } finally {}
    },
    _$explicitEchoWithJsonResultId: ($req_) async {
      srv.ServiceResponse<String> $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = await explicitEchoWithJsonResult(
          (($_) => (const ServiceRequestToString())
              .unmarshal($mc.value<String>()($_), $mc))($req_.args[0]),
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return (($_) => ($_ as srv.ServiceResponse<String>).toJson())($res_);
      } finally {}
    },
    _$jsonEchoWithExplicitResultId: ($req_) async {
      srv.ServiceResponse<String> $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = await jsonEchoWithExplicitResult(
          (($_) => srv.ServiceRequest.fromJson($_))($req_.args[0]),
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return (($_) => (const ServiceResponseOfStringToByteBuffer())
            .marshal($_, $mc))($res_);
      } finally {}
    },
    _$jsonEchoWithJsonResultId: ($req_) async {
      srv.ServiceResponse<String>? $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = await jsonEchoWithJsonResult(
          (($_) => srv.ServiceRequest.fromJson($_))($req_.args[0]),
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return (($_) => ($_ as srv.ServiceResponse<String>?)?.toJson())($res_);
      } finally {}
    },
    _$jsonEncodeEchoId: ($req_) async {
      srv.ServiceResponse<String> $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = await jsonEncodeEcho(
          (($_) => ServiceRequestToString.instance
              .unmarshal($mc.value<String>()($_), $mc))($req_.args[0]),
          $req_.cancelToken,
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return (($_) =>
            (const ServiceResponseToJson()).marshal($_, $mc))($res_);
      } finally {}
    },
  });

  static const int _$explicitEchoWithExplicitResultId = 1;
  static const int _$explicitEchoWithJsonResultId = 2;
  static const int _$jsonEchoWithExplicitResultId = 3;
  static const int _$jsonEchoWithJsonResultId = 4;
  static const int _$jsonEncodeEchoId = 5;
}

/// Service initializer for EchoService
WorkerService $EchoServiceInitializer(WorkerRequest $req_) {
  // ignore: unused_local_variable
  final $mc = MarshalingContext();
  return _$EchoServiceWorkerService(
    $mc.value<bool>()($req_.args[0]),
    Converter.allowNull<cfg.ServiceConfig<int>>(
        ($_) => cfg.ServiceConfig<int>.fromJson($_))($req_.args[1]),
  );
}

/// Worker for EchoService
base class EchoServiceWorker extends Worker implements EchoService {
  EchoServiceWorker(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : super($EchoServiceActivator(Squadron.platformType), args: [
          trace,
          (($_) => ($_ as cfg.ServiceConfig<int>?)?.toJson())(workloadDelay),
        ]);

  EchoServiceWorker.vm(
      [bool trace = false,
      cfg.ServiceConfig<int>? workloadDelay,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager])
      : super($EchoServiceActivator(SquadronPlatformType.vm), args: [
          trace,
          (($_) => ($_ as cfg.ServiceConfig<int>?)?.toJson())(workloadDelay),
        ]);

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithExplicitResult(
      srv.ServiceRequest request,
      {CancelationToken? token}) async {
    dynamic $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext();
      $res_ = await send(
        _$EchoServiceWorkerService._$explicitEchoWithExplicitResultId,
        args: [
          (($_) =>
              ServiceRequestGenericToString.instance.marshal($_, $mc))(request),
        ],
        token: token,
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext();
      return (($_) => ServiceResponseOfStringToByteBuffer.instance
          .unmarshal($mc.value<ByteBuffer>()($_), $mc))($res_);
    } finally {}
  }

  @override
  xxx.Future<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
      srv.ServiceRequest request) async {
    dynamic $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext();
      $res_ = await send(
        _$EchoServiceWorkerService._$explicitEchoWithJsonResultId,
        args: [
          (($_) => (const ServiceRequestToString()).marshal($_, $mc))(request),
        ],
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      return (($_) => srv.ServiceResponse<String>.fromJson($_))($res_);
    } finally {}
  }

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
      srv.ServiceRequest request) async {
    dynamic $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      $res_ = await send(
        _$EchoServiceWorkerService._$jsonEchoWithExplicitResultId,
        args: [
          (($_) => ($_ as srv.ServiceRequest).toJson())(request),
        ],
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext();
      return (($_) => (const ServiceResponseOfStringToByteBuffer())
          .unmarshal($mc.value<ByteBuffer>()($_), $mc))($res_);
    } finally {}
  }

  @override
  xxx.Future<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
      srv.ServiceRequest request) async {
    dynamic $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      $res_ = await send(
        _$EchoServiceWorkerService._$jsonEchoWithJsonResultId,
        args: [
          (($_) => ($_ as srv.ServiceRequest).toJson())(request),
        ],
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      return Converter.allowNull<srv.ServiceResponse<String>>(
          ($_) => srv.ServiceResponse<String>.fromJson($_))($res_);
    } finally {}
  }

  @override
  xxx.Future<srv.ServiceResponse<String>> jsonEncodeEcho(
      srv.ServiceRequest request,
      [CancelationToken? token]) async {
    dynamic $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext();
      $res_ = await send(
        _$EchoServiceWorkerService._$jsonEncodeEchoId,
        args: [
          (($_) => ServiceRequestToString.instance.marshal($_, $mc))(request),
        ],
        token: token,
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext();
      return (($_) => (const ServiceResponseToJson())
          .unmarshal($mc.value<String>()($_), $mc))($res_);
    } finally {}
  }

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
