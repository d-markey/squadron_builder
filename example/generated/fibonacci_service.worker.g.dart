// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fibonacci_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.2.1
// **************************************************************************

// Operations map for FibonacciService
mixin $FibonacciServiceOperations on WorkerService {
  @override
  late final Map<int, CommandHandler> operations =
      _getOperations(this as FibonacciService);

  static const int _$fibonacciId = 1;
  static const int _$fibonacciList0Id = 2;
  static const int _$fibonacciList1Id = 3;
  static const int _$fibonacciList2Id = 4;
  static const int _$fibonacciStreamId = 5;

  static Map<int, CommandHandler> _getOperations(FibonacciService svc) => {
        _$fibonacciId: (req) => svc.fibonacci(req.args[0]),
        _$fibonacciList0Id: (req) async =>
            (await svc.fibonacciList0(req.args[0], req.args[1])).cast<int>(),
        _$fibonacciList1Id: (req) async => (const ListIntMarshaller())
            .marshall((await svc.fibonacciList1(req.args[0], req.args[1]))),
        _$fibonacciList2Id: (req) async => listIntMarshaller
            .marshall((await svc.fibonacciList2(req.args[0], req.args[1]))),
        _$fibonacciStreamId: (req) => svc.fibonacciStream(req.args[0],
            end: req.args[1], token: req.cancelToken)
      };
}

// Service initializer
FibonacciService $FibonacciServiceInitializer(WorkerRequest startRequest) =>
    FibonacciService(trace: startRequest.args[0]);

// Worker for FibonacciService
class FibonacciServiceWorker extends Worker
    with $FibonacciServiceOperations
    implements FibonacciService {
  FibonacciServiceWorker(
      {this.trace = false, PlatformWorkerHook? platformWorkerHook})
      : super($FibonacciServiceActivator,
            args: [trace], platformWorkerHook: platformWorkerHook);

  @override
  final bool trace;

  @override
  Future<int> fibonacci(int i) => send(
        $FibonacciServiceOperations._$fibonacciId,
        args: [i],
      );

  @override
  Future<Iterable<int>> fibonacciList0(int s, int e) => send(
        $FibonacciServiceOperations._$fibonacciList0Id,
        args: [s, e],
      ).then(($res) => $res.cast<int>());

  @override
  Future<List<int>> fibonacciList1(int s, int e) => send(
        $FibonacciServiceOperations._$fibonacciList1Id,
        args: [s, e],
      ).then(($res) => (const ListIntMarshaller()).unmarshall($res));

  @override
  Future<List<int>> fibonacciList2(int s, int e) => send(
        $FibonacciServiceOperations._$fibonacciList2Id,
        args: [s, e],
      ).then(($res) => listIntMarshaller.unmarshall($res));

  @override
  Stream<int> fibonacciStream(int start,
          {int? end, CancellationToken? token}) =>
      stream(
        $FibonacciServiceOperations._$fibonacciStreamId,
        args: [start, end],
        token: token,
      );

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

// Worker pool for FibonacciService
class FibonacciServiceWorkerPool extends WorkerPool<FibonacciServiceWorker>
    with $FibonacciServiceOperations
    implements FibonacciService {
  FibonacciServiceWorkerPool(
      {this.trace = false,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => FibonacciServiceWorker(
                trace: trace, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final bool trace;

  @override
  Future<int> fibonacci(int i) => execute(($w) => $w.fibonacci(i));

  @override
  Future<Iterable<int>> fibonacciList0(int s, int e) =>
      execute(($w) => $w.fibonacciList0(s, e));

  @override
  Future<List<int>> fibonacciList1(int s, int e) =>
      execute(($w) => $w.fibonacciList1(s, e));

  @override
  Future<List<int>> fibonacciList2(int s, int e) =>
      execute(($w) => $w.fibonacciList2(s, e));

  @override
  Stream<int> fibonacciStream(int start,
          {int? end, CancellationToken? token}) =>
      stream(($w) => $w.fibonacciStream(start, end: end, token: token));

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}
