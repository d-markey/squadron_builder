// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../clock.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.1.4 (Squadron 7.1.1)
// **************************************************************************

/// Command ids used in operations map
const int _$infiniteClockId = 1;

/// WorkerService operations for Clock
extension on Clock {
  OperationsMap _$getOperations() => OperationsMap({
        _$infiniteClockId: ($req) {
          final Stream<int> $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = infiniteClock(
                periodInMs: $dsr.$0($req.args[0]),
                color: $dsr.$2($req.args[1]));
          } finally {}
          return $res;
        },
      });
}

/// Invoker for Clock, implements the public interface to invoke the
/// remote service.
mixin _$Clock$Invoker on Invoker implements Clock {
  @override
  Stream<int> infiniteClock({int periodInMs = 1000, ConsoleColor? color}) {
    final Stream $res = stream(_$infiniteClockId, args: [periodInMs, color]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $res.map($dsr.$0);
    } finally {}
  }
}

/// Facade for Clock, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$Clock$Facade implements Clock {}

/// WorkerService class for Clock
class _$Clock$WorkerService extends Clock implements WorkerService {
  _$Clock$WorkerService() : super();

  @override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for Clock
WorkerService $ClockInitializer(WorkerRequest $req) => _$Clock$WorkerService();

/// Worker for Clock
base class ClockWorker extends Worker
    with _$Clock$Invoker, _$Clock$Facade
    implements Clock {
  ClockWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($ClockActivator(Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  ClockWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($ClockActivator(SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  ClockWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($ClockActivator(SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  ClockWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($ClockActivator(SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  @override
  List? getStartArgs() => null;
}

/// Worker pool for Clock
base class ClockWorkerPool extends WorkerPool<ClockWorker>
    with _$Clock$Facade
    implements Clock {
  ClockWorkerPool(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => ClockWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  ClockWorkerPool.vm(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => ClockWorker.vm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  ClockWorkerPool.js(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => ClockWorker.js(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  ClockWorkerPool.wasm(
      {PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => ClockWorker.wasm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  Stream<int> infiniteClock({int periodInMs = 1000, ConsoleColor? color}) =>
      stream((w) => w.infiniteClock(periodInMs: periodInMs, color: color));
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<int>();
  late final $1 = value<ConsoleColor>();
  late final $2 = Converter.allowNull($1);
}
