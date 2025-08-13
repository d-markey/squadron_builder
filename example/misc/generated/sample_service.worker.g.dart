// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../sample_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.1.5-mki (Squadron 7.1.2)
// **************************************************************************

/// Command ids used in operations map
const int _$computeId = 1;

/// WorkerService operations for SampleService
extension on SampleService {
  OperationsMap _$getOperations() => OperationsMap({
        _$computeId: ($req) async {
          final DataOut $res;
          try {
            final $dsr = _$Deser(contextAware: true);
            $res = await compute($dsr.$0($req.args[0]), $dsr.$2($req.args[1]));
          } finally {}
          try {
            final $sr = _$Ser(contextAware: true);
            return $sr.$0($res);
          } finally {}
        },
      });
}

/// Invoker for SampleService, implements the public interface to invoke the
/// remote service.
mixin _$SampleService$Invoker on Invoker implements SampleService {
  @override
  Future<DataOut> compute(DataIn input, State state) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: true);
      $res = await send(_$computeId, args: [$sr.$1(input), $sr.$2(state)]);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: true);
      return $dsr.$3($res);
    } finally {}
  }
}

/// Facade for SampleService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$SampleService$Facade implements SampleService {}

/// WorkerService class for SampleService
class _$SampleService$WorkerService extends SampleService
    implements WorkerService {
  _$SampleService$WorkerService() : super();

  @override
  OperationsMap get operations => _$getOperations();
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

  SampleServiceWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($SampleServiceActivator(SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  SampleServiceWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($SampleServiceActivator(SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  SampleServiceWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($SampleServiceActivator(SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  @override
  List? getStartArgs() => null;
}

/// Worker pool for SampleService
base class SampleServiceWorkerPool extends WorkerPool<SampleServiceWorker>
    with _$SampleService$Facade
    implements SampleService {
  SampleServiceWorkerPool(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => SampleServiceWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  SampleServiceWorkerPool.vm(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => SampleServiceWorker.vm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  SampleServiceWorkerPool.js(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => SampleServiceWorker.js(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  SampleServiceWorkerPool.wasm(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => SampleServiceWorker.wasm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  Future<DataOut> compute(DataIn input, State state) =>
      execute((w) => w.compute(input, state));
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = (($) => DataIn.unmarshal($, context: this));
  late final $1 = value<int>();
  late final $2 = (($) => State.values[$1($)]);
  late final $3 = (($) => DataOut.unmarshal($, this));
}

final class _$Ser extends MarshalingContext {
  _$Ser({super.contextAware});
  late final $0 = (($) => ($ as DataOut).marshal(this));
  late final $1 = (($) => ($ as DataIn).marshal(context: this));
  late final $2 = (($) => ($ as State).index);
}
