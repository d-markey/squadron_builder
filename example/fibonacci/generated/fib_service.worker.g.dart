// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fib_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService operations for FibService
extension _$FibService$Operations on FibService {
  OperationsMap _$getOperations() => dc.Map.unmodifiable({
        _$fibonacciId: ($req) async {
          final dc.int $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = await fibonacci($mc.$de0($req.args[0]));
          } finally {}
          return $res;
        },
      });

  static const dc.int _$fibonacciId = 1;
}

/// Invoker for FibService, implements the public interface to invoke the
/// remote service.
mixin _$FibService$Invoker on Invoker implements FibService {
  @dc.override
  Future<dc.int> fibonacci(dc.int i) async {
    final dc.dynamic $res = await send(
      _$FibService$Operations._$fibonacciId,
      args: [i],
    );
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de0($res);
    } finally {}
  }
}

/// Facade for FibService, implements other details of the service not related to
/// invoking the remote service.
mixin _$FibService$Facade implements FibService {
  @dc.override
  // ignore: unused_element
  dc.int get x => throw dc.UnimplementedError();
}

/// Operation map for FibService
extension $FibServiceLocalWorkerExt on FibService {
  // Get a fresh local worker instance.
  LocalWorker<FibService> getLocalWorker(
          [ExceptionManager? exceptionManager]) =>
      LocalWorker.create(this, _$getOperations(), exceptionManager);
}

/// LocalWorkerClient for FibService
final class $LocalFibServiceClient extends LocalWorkerClient
    with _$FibService$Invoker, _$FibService$Facade
    implements FibService {
  $LocalFibServiceClient(PlatformChannel channelInfo)
      : super(Channel.deserialize(channelInfo)!);
}

/// WorkerService class for FibService
class _$FibService$WorkerService extends FibService implements WorkerService {
  _$FibService$WorkerService() : super();

  OperationsMap? _operations;

  @dc.override
  OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for FibService
WorkerService $FibServiceInitializer(WorkerRequest $req) =>
    _$FibService$WorkerService();

/// Worker for FibService
base class FibServiceWorker extends Worker
    with _$FibService$Invoker, _$FibService$Facade
    implements FibService {
  FibServiceWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($FibServiceActivator(Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  FibServiceWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($FibServiceActivator(SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  FibServiceWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($FibServiceActivator(SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);
}

/// Worker pool for FibService
base class FibServiceWorkerPool extends WorkerPool<FibServiceWorker>
    with _$FibService$Facade
    implements FibService {
  FibServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => FibServiceWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  FibServiceWorkerPool.vm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => FibServiceWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  FibServiceWorkerPool.js(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => FibServiceWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @dc.override
  Future<dc.int> fibonacci(dc.int i) => execute((w) => w.fibonacci(i));
}

final class _$X extends MarshalingContext {
  _$X({super.contextAware});
  late final $de0 = value<dc.int>();
}
