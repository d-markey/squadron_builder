// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fibonacci_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for FibonacciService
class _$FibonacciServiceWorkerService extends FibonacciService
    implements WorkerService {
  _$FibonacciServiceWorkerService({super.trace}) : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$fibonacciId: ($in) => fibonacci(Cast.toInt($in.args[0])),
    _$fibonacciList0Id: ($in) async {
      final $out = await fibonacciList0(
          Cast.toInt($in.args[0]), Cast.toInt($in.args[1]));
      return ($out is List ? $out : $out.toList());
    },
    _$fibonacciList1Id: ($in) async {
      final $out = await fibonacciList1(
          Cast.toInt($in.args[0]), Cast.toInt($in.args[1]));
      return (const ListIntMarshaler()).marshal($out);
    },
    _$fibonacciList2Id: ($in) async {
      final $out = await fibonacciList2(
          Cast.toInt($in.args[0]), Cast.toInt($in.args[1]));
      return listIntMarshaler.marshal($out);
    },
    _$fibonacciStreamId: ($in) => fibonacciStream(Cast.toInt($in.args[0]),
        end: Cast.toNullableInt($in.args[1]),
        token: $in.args[2] as CancelationToken?),
  });

  static const int _$fibonacciId = 1;
  static const int _$fibonacciList0Id = 2;
  static const int _$fibonacciList1Id = 3;
  static const int _$fibonacciList2Id = 4;
  static const int _$fibonacciStreamId = 5;
}

/// Service initializer for FibonacciService
WorkerService $FibonacciServiceInitializer(WorkerRequest $in) =>
    _$FibonacciServiceWorkerService(trace: $in.args[0] as bool);

/// Worker for FibonacciService
class FibonacciServiceWorker extends Worker implements FibonacciService {
  FibonacciServiceWorker({bool trace = false, PlatformThreadHook? threadHook})
      : super($FibonacciServiceActivator,
            args: [trace], threadHook: threadHook);

  @override
  Future<int> fibonacci(int i) =>
      send(_$FibonacciServiceWorkerService._$fibonacciId, args: [i]);

  @override
  Future<Iterable<int>> fibonacciList0(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList0Id, args: [s, e])
          .then(($x) => ($x is List ? $x : $x.toList()).cast<int>());

  @override
  Future<List<int>> fibonacciList1(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList1Id, args: [s, e])
          .then(($x) => (const ListIntMarshaler()).unmarshal($x));

  @override
  Future<List<int>> fibonacciList2(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList2Id, args: [s, e])
          .then(($x) => listIntMarshaler.unmarshal($x));

  @override
  Stream<int> fibonacciStream(int start, {int? end, CancelationToken? token}) =>
      stream(_$FibonacciServiceWorkerService._$fibonacciStreamId,
          args: [start, end, token]);

  @override
  // ignore: unused_element
  Logger? get _logger => throw UnimplementedError();
}

/// Worker pool for FibonacciService
class FibonacciServiceWorkerPool extends WorkerPool<FibonacciServiceWorker>
    implements FibonacciService {
  FibonacciServiceWorkerPool(
      {bool trace = false,
      ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook})
      : super(
            () => FibonacciServiceWorker(trace: trace, threadHook: threadHook),
            concurrencySettings: concurrencySettings);

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
  Stream<int> fibonacciStream(int start, {int? end, CancelationToken? token}) =>
      stream((w) => w.fibonacciStream(start, end: end, token: token));

  @override
  // ignore: unused_element
  Logger? get _logger => throw UnimplementedError();
}
