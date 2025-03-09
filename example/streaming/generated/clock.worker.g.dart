// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../clock.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService operations for Clock
extension _$Clock$Operations on Clock {
  OperationsMap _$getOperations() => Map.unmodifiable({
        _$infiniteClockId: ($req) {
          final Stream<int> $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = infiniteClock(
                periodInMs: $mc.$de0($req.args[0]),
                color: $mc.$de1($req.args[1]));
          } finally {}
          return $res;
        },
      });

  static const int _$infiniteClockId = 1;
}

/// Invoker for Clock, implements the public interface to invoke the
/// remote service.
mixin _$Clock$Invoker on Invoker implements Clock {
  @override
  Stream<int> infiniteClock({int periodInMs = 1000, ConsoleColor? color}) {
    final Stream $res = stream(
      _$Clock$Operations._$infiniteClockId,
      args: [periodInMs, color],
    );
    try {
      final $mc = _$X(contextAware: false);
      return $res.map($mc.$de0);
    } finally {}
  }
}

/// Facade for Clock, implements other details of the service not related to
/// invoking the remote service.
mixin _$Clock$Facade implements Clock {}

/// WorkerService class for Clock
class _$Clock$WorkerService extends Clock implements WorkerService {
  _$Clock$WorkerService() : super();

  OperationsMap? _operations;

  @override
  OperationsMap get operations => (_operations ??= _$getOperations());
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
}

/// Worker pool for Clock
base class ClockWorkerPool extends WorkerPool<ClockWorker>
    with _$Clock$Facade
    implements Clock {
  ClockWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => ClockWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  ClockWorkerPool.vm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => ClockWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  ClockWorkerPool.js(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => ClockWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  ClockWorkerPool.wasm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => ClockWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Stream<int> infiniteClock({int periodInMs = 1000, ConsoleColor? color}) =>
      stream((w) => w.infiniteClock(periodInMs: periodInMs, color: color));
}

final class _$X extends MarshalingContext {
  _$X({super.contextAware});
  late final $de0 = value<int>();
  late final $de1 = nvalue<ConsoleColor>();
}
