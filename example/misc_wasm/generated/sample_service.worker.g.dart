// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../sample_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService operations for SampleService
extension _$SampleService$Operations on SampleService {
  OperationsMap _$getOperations() => Map.unmodifiable({
        _$computeId: ($req) async {
          final DataOut $res;
          try {
            final $mc = _$X(contextAware: true);
            $res = await compute($mc.$de0($req.args[0]));
          } finally {}
          try {
            final $mc = _$X(contextAware: false);
            return $mc.$se1($res);
          } finally {}
        },
      });

  static const int _$computeId = 1;
}

/// Invoker for SampleService, implements the public interface to invoke the
/// remote service.
mixin _$SampleService$Invoker on Invoker implements SampleService {
  @override
  Future<DataOut> compute(DataIn input) async {
    final dynamic $res;
    try {
      final $mc = _$X(contextAware: true);
      $res = await send(
        _$SampleService$Operations._$computeId,
        args: [$mc.$se2(input)],
      );
    } finally {}
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de3($res);
    } finally {}
  }
}

/// Facade for SampleService, implements other details of the service not related to
/// invoking the remote service.
mixin _$SampleService$Facade implements SampleService {}

/// WorkerService class for SampleService
class _$SampleService$WorkerService extends SampleService
    implements WorkerService {
  _$SampleService$WorkerService() : super();

  OperationsMap? _operations;

  @override
  OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for SampleService
WorkerService $SampleServiceInitializer(WorkerRequest $req) =>
    _$SampleService$WorkerService();

/// Worker for SampleService
base class SampleServiceWorker extends Worker
    with _$SampleService$Invoker, _$SampleService$Facade
    implements SampleService {
  SampleServiceWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($SampleServiceActivator(Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  SampleServiceWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($SampleServiceActivator(SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);
}

/// Worker pool for SampleService
base class SampleServiceWorkerPool extends WorkerPool<SampleServiceWorker>
    with _$SampleService$Facade
    implements SampleService {
  SampleServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => SampleServiceWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  SampleServiceWorkerPool.wasm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => SampleServiceWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Future<DataOut> compute(DataIn input) => execute((w) => w.compute(input));
}

final class _$X extends MarshalingContext {
  _$X({super.contextAware});
  late final $de0 = (($_) => DataIn.unmarshal($_, context: this));
  late final $se1 = (($_) => ($_ as DataOut).marshal());
  late final $se2 = (($_) => ($_ as DataIn).marshal(context: this));
  late final $de3 = (($_) => DataOut.unmarshal($_));
}
