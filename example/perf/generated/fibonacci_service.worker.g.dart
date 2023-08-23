// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fibonacci_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.4.2
// **************************************************************************

/// WorkerService class for FibonacciService
class _$FibonacciServiceWorkerService extends FibonacciService
    implements WorkerService {
  _$FibonacciServiceWorkerService({bool trace = false}) : super(trace: trace);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$fibonacciId: ($) => fibonacci($.args[0]),
    _$fibonacciList0Id: ($) async =>
        (await fibonacciList0($.args[0], $.args[1])).cast<int>(),
    _$fibonacciList1Id: ($) async => (const ListIntMarshaler())
        .marshal((await fibonacciList1($.args[0], $.args[1]))),
    _$fibonacciList2Id: ($) async =>
        listIntMarshaler.marshal((await fibonacciList2($.args[0], $.args[1]))),
    _$fibonacciStreamId: ($) =>
        fibonacciStream($.args[0], end: $.args[1], token: $.cancelToken),
  });

  static const int _$fibonacciId = 1;
  static const int _$fibonacciList0Id = 2;
  static const int _$fibonacciList1Id = 3;
  static const int _$fibonacciList2Id = 4;
  static const int _$fibonacciStreamId = 5;
}

/// Service initializer for FibonacciService
WorkerService $FibonacciServiceInitializer(WorkerRequest startRequest) =>
    _$FibonacciServiceWorkerService(trace: startRequest.args[0]);

/// Operations map for FibonacciService
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$FibonacciServiceOperations anymore.')
mixin $FibonacciServiceOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for FibonacciService
class FibonacciServiceWorker extends Worker implements FibonacciService {
  FibonacciServiceWorker(
      {this.trace = false, PlatformWorkerHook? platformWorkerHook})
      : super($FibonacciServiceActivator,
            args: [trace], platformWorkerHook: platformWorkerHook);

  @override
  final bool trace;

  @override
  Future<int> fibonacci(int i) =>
      send(_$FibonacciServiceWorkerService._$fibonacciId, args: [i]);

  @override
  Future<Iterable<int>> fibonacciList0(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList0Id, args: [s, e])
          .then((_) => _.cast<int>());

  @override
  Future<List<int>> fibonacciList1(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList1Id, args: [s, e])
          .then((_) => (const ListIntMarshaler()).unmarshal(_));

  @override
  Future<List<int>> fibonacciList2(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList2Id, args: [s, e])
          .then((_) => listIntMarshaler.unmarshal(_));

  @override
  Stream<int> fibonacciStream(int start,
          {int? end, CancellationToken? token}) =>
      stream(_$FibonacciServiceWorkerService._$fibonacciStreamId,
          args: [start, end], token: token);
}

/// Worker pool for FibonacciService
class FibonacciServiceWorkerPool extends WorkerPool<FibonacciServiceWorker>
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
  Future<int> fibonacci(int i) => execute((w) => w.fibonacci(i));

  @override
  Future<Iterable<int>> fibonacciList0(int s, int e) =>
      execute((w) => w.fibonacciList0(s, e));

  @override
  Future<List<int>> fibonacciList1(int s, int e) =>
      execute((w) => w.fibonacciList1(s, e));

  @override
  Future<List<int>> fibonacciList2(int s, int e) =>
      execute((w) => w.fibonacciList2(s, e));

  @override
  Stream<int> fibonacciStream(int start,
          {int? end, CancellationToken? token}) =>
      stream((w) => w.fibonacciStream(start, end: end, token: token));
}
