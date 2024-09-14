// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fibonacci_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for FibonacciService
class _$FibonacciServiceWorkerService extends FibonacciService
    implements WorkerService {
  _$FibonacciServiceWorkerService({super.trace = false}) : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$fibonacciId: ($in) => fibonacci(_$X.$0($in.args[0])),
    _$fibonacciList0Id: ($in) async =>
        _$X.$2(await fibonacciList0(_$X.$0($in.args[0]), _$X.$0($in.args[1]))),
    _$fibonacciList1Id: ($in) async =>
        _$X.$3(await fibonacciList1(_$X.$0($in.args[0]), _$X.$0($in.args[1]))),
    _$fibonacciList2Id: ($in) async =>
        _$X.$4(await fibonacciList2(_$X.$0($in.args[0]), _$X.$0($in.args[1]))),
    _$fibonacciStreamId: ($in) => fibonacciStream(_$X.$0($in.args[0]),
        end: _$X.$5($in.args[1]), token: _$X.$7($in.args[2])),
  });

  static const int _$fibonacciId = 1;
  static const int _$fibonacciList0Id = 2;
  static const int _$fibonacciList1Id = 3;
  static const int _$fibonacciList2Id = 4;
  static const int _$fibonacciStreamId = 5;
}

/// Service initializer for FibonacciService
WorkerService $FibonacciServiceInitializer(WorkerRequest $in) =>
    _$FibonacciServiceWorkerService(trace: _$X.$8($in.args[0]));

/// Worker for FibonacciService
class FibonacciServiceWorker extends Worker implements FibonacciService {
  FibonacciServiceWorker({bool trace = false, PlatformThreadHook? threadHook})
      : super($FibonacciServiceActivator,
            args: [trace], threadHook: threadHook);

  @override
  Future<int?> fibonacci(int i) =>
      send(_$FibonacciServiceWorkerService._$fibonacciId, args: [i])
          .then(_$X.$5);

  @override
  Future<Iterable<int>?> fibonacciList0(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList0Id, args: [s, e])
          .then(_$X.$10);

  @override
  Future<List<int>> fibonacciList1(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList1Id, args: [s, e])
          .then(_$X.$11);

  @override
  Future<List<int>> fibonacciList2(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList2Id, args: [s, e])
          .then(_$X.$12);

  @override
  Stream<int> fibonacciStream(int start, {int? end, CancelationToken? token}) =>
      stream(_$FibonacciServiceWorkerService._$fibonacciStreamId,
          args: [start, end, token]).map(_$X.$0);

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

  @override
  // ignore: unused_element
  Logger? get _logger => throw UnimplementedError();
}

class _$X {
  static final $0 = Squadron.converter.value<int>();
  static final $1 = Squadron.converter.list<int>();
  static final $2 = Squadron.converter.nullable($1);
  static final $3 = (const ListIntMarshaler()).marshaler;
  static final $4 = listIntMarshaler.marshaler;
  static final $5 = Squadron.converter.nullable($0);
  static final $6 = Squadron.converter.value<CancelationToken>();
  static final $7 = Squadron.converter.nullable($6);
  static final $8 = Squadron.converter.value<bool>();
  static final $9 = Squadron.converter.list<int>(_$X.$0);
  static final $10 = Squadron.converter.nullable($9);
  static final $11 = (const ListIntMarshaler()).unmarshaler;
  static final $12 = listIntMarshaler.unmarshaler;
}
