// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fibonacci_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService operations for FibonacciService
extension _$FibonacciService$Operations on FibonacciService {
  OperationsMap _$getOperations() => Map.unmodifiable({
        _$fibonacciId: ($req) async {
          final int? $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = await fibonacci($mc.$de0($req.args[0]));
          } finally {}
          return $res;
        },
        _$fibonacciList0Id: ($req) async {
          final Iterable<int>? $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = await fibonacciList0(
                $mc.$de0($req.args[0]), $mc.$de0($req.args[1]));
          } finally {}
          try {
            final $mc = _$X(contextAware: false);
            return $mc.$se1($res);
          } finally {}
        },
        _$fibonacciList1Id: ($req) async {
          final List<int> $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = await fibonacciList1(
                $mc.$de0($req.args[0]), $mc.$de0($req.args[1]));
          } finally {}
          try {
            final $mc = _$X(contextAware: true);
            return $mc.$se2($res);
          } finally {}
        },
        _$fibonacciList2Id: ($req) async {
          final List<int> $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = await fibonacciList2(
                $mc.$de0($req.args[0]), $mc.$de0($req.args[1]));
          } finally {}
          try {
            final $mc = _$X(contextAware: true);
            return $mc.$se3($res);
          } finally {}
        },
        _$fibonacciStreamId: ($req) {
          final Stream<int> $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = fibonacciStream($mc.$de0($req.args[0]),
                end: $mc.$de4($req.args[1]), token: $mc.$de5($req.args[2]));
          } finally {}
          return $res;
        },
      });

  static const int _$fibonacciId = 1;
  static const int _$fibonacciList0Id = 2;
  static const int _$fibonacciList1Id = 3;
  static const int _$fibonacciList2Id = 4;
  static const int _$fibonacciStreamId = 5;
}

/// Invoker for FibonacciService, implements the public interface to invoke the
/// remote service.
mixin _$FibonacciService$Invoker on Invoker implements FibonacciService {
  @override
  Future<int?> fibonacci(int i) async {
    final dynamic $res = await send(
      _$FibonacciService$Operations._$fibonacciId,
      args: [i],
    );
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de4($res);
    } finally {}
  }

  @override
  Future<Iterable<int>?> fibonacciList0(int s, int e) async {
    final dynamic $res = await send(
      _$FibonacciService$Operations._$fibonacciList0Id,
      args: [s, e],
    );
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de6($res);
    } finally {}
  }

  @override
  Future<List<int>> fibonacciList1(int s, int e) async {
    final dynamic $res = await send(
      _$FibonacciService$Operations._$fibonacciList1Id,
      args: [s, e],
    );
    try {
      final $mc = _$X(contextAware: true);
      return $mc.$de8($res);
    } finally {}
  }

  @override
  Future<List<int>> fibonacciList2(int s, int e) async {
    final dynamic $res = await send(
      _$FibonacciService$Operations._$fibonacciList2Id,
      args: [s, e],
    );
    try {
      final $mc = _$X(contextAware: true);
      return $mc.$de9($res);
    } finally {}
  }

  @override
  Stream<int> fibonacciStream(int start, {int? end, CancelationToken? token}) {
    final Stream $res = stream(
      _$FibonacciService$Operations._$fibonacciStreamId,
      args: [start, end],
      token: token,
    );
    try {
      final $mc = _$X(contextAware: false);
      return $res.map($mc.$de0);
    } finally {}
  }
}

/// Facade for FibonacciService, implements other details of the service not related to
/// invoking the remote service.
mixin _$FibonacciService$Facade implements FibonacciService {
  @override
  // ignore: unused_element
  Logger? get _logger => throw UnimplementedError();
}

/// WorkerService class for FibonacciService
class _$FibonacciService$WorkerService extends FibonacciService
    implements WorkerService {
  _$FibonacciService$WorkerService({super.trace = false}) : super();

  OperationsMap? _operations;

  @override
  OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for FibonacciService
WorkerService $FibonacciServiceInitializer(WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$FibonacciService$WorkerService(trace: $mc.$de10($req.args[0]));
}

/// Worker for FibonacciService
base class FibonacciServiceWorker extends Worker
    with _$FibonacciService$Invoker, _$FibonacciService$Facade
    implements FibonacciService {
  FibonacciServiceWorker(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super($FibonacciServiceActivator(Squadron.platformType),
            args: [trace],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  FibonacciServiceWorker.vm(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super($FibonacciServiceActivator(SquadronPlatformType.vm),
            args: [trace],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for FibonacciService
base class FibonacciServiceWorkerPool extends WorkerPool<FibonacciServiceWorker>
    with _$FibonacciService$Facade
    implements FibonacciService {
  FibonacciServiceWorkerPool(
      {bool trace = false,
      ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => FibonacciServiceWorker(
              trace: trace,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  FibonacciServiceWorkerPool.vm(
      {bool trace = false,
      ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => FibonacciServiceWorker.vm(
              trace: trace,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Future<int?> fibonacci(int i) => execute((w) => w.fibonacci(i));

  @override
  Future<Iterable<int>?> fibonacciList0(int s, int e) =>
      execute((w) => w.fibonacciList0(s, e));

  @override
  Future<List<int>> fibonacciList1(int s, int e) =>
      execute((w) => w.fibonacciList1(s, e));

  @override
  Future<List<int>> fibonacciList2(int s, int e) =>
      execute((w) => w.fibonacciList2(s, e));

  @override
  Stream<int> fibonacciStream(int start, {int? end, CancelationToken? token}) =>
      stream((w) => w.fibonacciStream(start, end: end, token: token));
}

final class _$X extends MarshalingContext {
  _$X({super.contextAware});
  late final $de0 = value<int>();
  late final $se1 = Converter.allowNull(list<int>());
  late final $se2 = (($_) => (const ListIntMarshaler()).marshal($_, this));
  late final $se3 = (($_) => listIntMarshaler.marshal($_, this));
  late final $de4 = nvalue<int>();
  late final $de5 = nvalue<CancelationToken>();
  late final $de6 = Converter.allowNull(list<int>(value<int>()));
  late final $de7 = value<ByteBuffer>();
  late final $de8 =
      (($_) => (const ListIntMarshaler()).unmarshal($de7($_), this));
  late final $de9 = (($_) => listIntMarshaler.unmarshal($de7($_), this));
  late final $de10 = value<bool>();
}
