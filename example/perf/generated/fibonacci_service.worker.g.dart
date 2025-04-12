// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fibonacci_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.1.1 (Squadron 7.1.1)
// **************************************************************************

/// Command ids used in operations map
const int _$fibonacciId = 1;
const int _$fibonacciList0Id = 2;
const int _$fibonacciList1Id = 3;
const int _$fibonacciList2Id = 4;
const int _$fibonacciStreamId = 5;

/// WorkerService operations for FibonacciService
extension on FibonacciService {
  OperationsMap _$getOperations() => OperationsMap({
        _$fibonacciId: ($req) async {
          final int? $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await fibonacci($dsr.$0($req.args[0]));
          } finally {}
          return $res;
        },
        _$fibonacciList0Id: ($req) async {
          final Iterable<int>? $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await fibonacciList0(
                $dsr.$0($req.args[0]), $dsr.$0($req.args[1]));
          } finally {}
          return $res;
        },
        _$fibonacciList1Id: ($req) async {
          final List<int> $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await fibonacciList1(
                $dsr.$0($req.args[0]), $dsr.$0($req.args[1]));
          } finally {}
          try {
            final $sr = _$Ser(contextAware: true);
            return $sr.$0($res);
          } finally {}
        },
        _$fibonacciList2Id: ($req) async {
          final List<int> $res;
          try {
            final $dsr = _$Deser(contextAware: true);
            $res = await fibonacciList2(
                $dsr.$0($req.args[0]), $dsr.$0($req.args[1]));
          } finally {}
          try {
            final $sr = _$Ser(contextAware: true);
            return $sr.$1($res);
          } finally {}
        },
        _$fibonacciStreamId: ($req) {
          final Stream<int> $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = fibonacciStream($dsr.$0($req.args[0]),
                end: $dsr.$1($req.args[1]), token: $req.cancelToken);
          } finally {}
          return $res;
        },
      });
}

/// Invoker for FibonacciService, implements the public interface to invoke the
/// remote service.
mixin _$FibonacciService$Invoker on Invoker implements FibonacciService {
  @override
  Future<int?> fibonacci(int i) async {
    final dynamic $res = await send(_$fibonacciId, args: [i]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$1($res);
    } finally {}
  }

  @override
  Future<Iterable<int>?> fibonacciList0(int s, int e) async {
    final dynamic $res = await send(_$fibonacciList0Id, args: [s, e]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$3($res);
    } finally {}
  }

  @override
  Future<List<int>> fibonacciList1(int s, int e) async {
    final dynamic $res = await send(_$fibonacciList1Id, args: [s, e]);
    try {
      final $dsr = _$Deser(contextAware: true);
      return $dsr.$5($res);
    } finally {}
  }

  @override
  Future<List<int>> fibonacciList2(int s, int e) async {
    final dynamic $res = await send(_$fibonacciList2Id, args: [s, e]);
    try {
      final $dsr = _$Deser(contextAware: true);
      return $dsr.$6($res);
    } finally {}
  }

  @override
  Stream<int> fibonacciStream(int start, {int? end, CancelationToken? token}) {
    final Stream $res =
        stream(_$fibonacciStreamId, args: [start, end], token: token);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $res.map($dsr.$0);
    } finally {}
  }
}

/// Facade for FibonacciService, implements other details of the service unrelated to
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

  @override
  OperationsMap get operations => _$getOperations();
}

/// Service initializer for FibonacciService
WorkerService $FibonacciServiceInitializer(WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$FibonacciService$WorkerService(trace: $dsr.$7($req.args[0]));
}

/// Worker for FibonacciService
base class FibonacciServiceWorker extends Worker
    with _$FibonacciService$Invoker, _$FibonacciService$Facade
    implements FibonacciService {
  FibonacciServiceWorker(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : _$startReq = [trace],
        super($FibonacciServiceActivator(Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  FibonacciServiceWorker.vm(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : _$startReq = [trace],
        super($FibonacciServiceActivator(SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for FibonacciService
base class FibonacciServiceWorkerPool extends WorkerPool<FibonacciServiceWorker>
    with _$FibonacciService$Facade
    implements FibonacciService {
  FibonacciServiceWorkerPool(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => FibonacciServiceWorker(
                trace: trace,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  FibonacciServiceWorkerPool.vm(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager,
      ConcurrencySettings? concurrencySettings})
      : super(
            (ExceptionManager exceptionManager) => FibonacciServiceWorker.vm(
                trace: trace,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

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

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<int>();
  late final $1 = Converter.allowNull($0);
  late final $2 = list<int>($0);
  late final $3 = Converter.allowNull($2);
  late final $4 = value<ByteBuffer>();
  late final $5 = (($) => (const ListIntMarshaler()).unmarshal($4($), this));
  late final $6 = (($) => listIntMarshaler.unmarshal($4($), this));
  late final $7 = value<bool>();
}

final class _$Ser extends MarshalingContext {
  _$Ser({super.contextAware});
  late final $0 = (($) => (const ListIntMarshaler()).marshal($, this));
  late final $1 = (($) => listIntMarshaler.marshal($, this));
}
