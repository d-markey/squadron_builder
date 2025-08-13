// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../some_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.1.5-mki (Squadron 7.1.2)
// **************************************************************************

/// Command ids used in operations map
const int _$getThreadIdId = 1;
const int _$getThreadIdFromLocalId = 2;

/// WorkerService operations for SomeService
extension on SomeService {
  OperationsMap _$getOperations() => OperationsMap({
        _$getThreadIdId: ($req) => getThreadId(),
        _$getThreadIdFromLocalId: ($req) => getThreadIdFromLocal(),
      });
}

/// Invoker for SomeService, implements the public interface to invoke the
/// remote service.
mixin _$SomeService$Invoker on Invoker implements SomeService {
  @override
  Future<String> getThreadId() async {
    final dynamic $res = await send(_$getThreadIdId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$0($res);
    } finally {}
  }

  @override
  Future<String> getThreadIdFromLocal() async {
    final dynamic $res = await send(_$getThreadIdFromLocalId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$0($res);
    } finally {}
  }
}

/// Facade for SomeService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$SomeService$Facade implements SomeService {}

/// WorkerService class for SomeService
class _$SomeService$WorkerService extends SomeService implements WorkerService {
  _$SomeService$WorkerService({super.threadIdService}) : super();

  @override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for SomeService
WorkerService $SomeServiceInitializer(WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$SomeService$WorkerService(
      threadIdService: ($req.args[0] == null)
          ? null
          : id.$LocalThreadIdentityServiceClient($dsr.$1($req.args[0])));
}

/// Worker for SomeService
base class SomeServiceWorker extends Worker
    with _$SomeService$Invoker, _$SomeService$Facade
    implements SomeService {
  SomeServiceWorker(
      {this.threadIdService,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : _$startReq = [threadIdService],
        super($SomeServiceActivator(Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  SomeServiceWorker.vm(
      {this.threadIdService,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : _$startReq = [threadIdService],
        super($SomeServiceActivator(SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final _$localWorkers = <LocalWorker?>[null];
  final List _$startReq;

  @override
  List? getStartArgs() {
    final p0 = _$startReq[0];
    if (p0 is id.ThreadIdentityService) {
      _$startReq[0] =
          (_$localWorkers[0] = p0.getLocalWorker()).channel?.serialize();
    }
    return _$startReq;
  }

  @override
  void stop() {
    _$localWorkers[0]?.stop();
    _$localWorkers[0] = null;
    _$startReq[0] = threadIdService;
    super.stop();
  }

  @override
  final id.ThreadIdentityService? threadIdService;
}

/// Worker pool for SomeService
base class SomeServiceWorkerPool extends WorkerPool<SomeServiceWorker>
    with _$SomeService$Facade
    implements SomeService {
  SomeServiceWorkerPool(
      {this.threadIdService,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => SomeServiceWorker(
                threadIdService: threadIdService,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  SomeServiceWorkerPool.vm(
      {this.threadIdService,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => SomeServiceWorker.vm(
                threadIdService: threadIdService,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final id.ThreadIdentityService? threadIdService;

  @override
  Future<String> getThreadId() => execute((w) => w.getThreadId());

  @override
  Future<String> getThreadIdFromLocal() =>
      execute((w) => w.getThreadIdFromLocal());
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<String>();
  late final $1 = value<PlatformChannel>();
}
