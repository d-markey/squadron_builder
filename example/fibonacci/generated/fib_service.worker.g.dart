// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fib_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.1.5-mki (Squadron 7.1.2)
// **************************************************************************

/// Command ids used in operations map
const dc.int _$fibonacciId = 1;

/// WorkerService operations for FibService
extension on FibService {
  OperationsMap _$getOperations() => OperationsMap({
        _$fibonacciId: ($req) async {
          final dc.int $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await fibonacci($dsr.$0($req.args[0]));
          } finally {}
          return $res;
        },
      });
}

/// Invoker for FibService, implements the public interface to invoke the
/// remote service.
mixin _$FibService$Invoker on Invoker implements FibService {
  @dc.override
  Future<dc.int> fibonacci(dc.int i) async {
    final dc.dynamic $res = await send(_$fibonacciId, args: [i]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$0($res);
    } finally {}
  }
}

/// Facade for FibService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$FibService$Facade implements FibService {
  @dc.override
  // ignore: unused_element
  dc.int get x => throw dc.UnimplementedError();
}

/// Local worker extension for FibService
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

  @dc.override
  OperationsMap get operations => _$getOperations();
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

  @dc.override
  dc.List? getStartArgs() => null;
}

/// Worker pool for FibService
base class FibServiceWorkerPool extends WorkerPool<FibServiceWorker>
    with _$FibService$Facade
    implements FibService {
  FibServiceWorkerPool(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => FibServiceWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  FibServiceWorkerPool.vm(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => FibServiceWorker.vm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  FibServiceWorkerPool.js(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => FibServiceWorker.js(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @dc.override
  Future<dc.int> fibonacci(dc.int i) => execute((w) => w.fibonacci(i));
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<dc.int>();
}
