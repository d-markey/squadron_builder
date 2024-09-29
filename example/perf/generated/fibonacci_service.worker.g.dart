// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fibonacci_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.3
// **************************************************************************

/// WorkerService class for FibonacciService
class _$FibonacciServiceWorkerService extends FibonacciService
    implements WorkerService {
  _$FibonacciServiceWorkerService({super.trace = false}) : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$fibonacciId: ($) => fibonacci(_$X.$0($.args[0])),
    _$fibonacciList0Id: ($) async =>
        _$X.$2(await fibonacciList0(_$X.$0($.args[0]), _$X.$0($.args[1]))),
    _$fibonacciList1Id: ($) async =>
        _$X.$3(await fibonacciList1(_$X.$0($.args[0]), _$X.$0($.args[1]))),
    _$fibonacciList2Id: ($) async =>
        _$X.$4(await fibonacciList2(_$X.$0($.args[0]), _$X.$0($.args[1]))),
    _$fibonacciStreamId: ($) => fibonacciStream(_$X.$0($.args[0]),
        end: _$X.$5($.args[1]), token: $.cancelToken),
  });

  static const int _$fibonacciId = 1;
  static const int _$fibonacciList0Id = 2;
  static const int _$fibonacciList1Id = 3;
  static const int _$fibonacciList2Id = 4;
  static const int _$fibonacciStreamId = 5;
}

/// Service initializer for FibonacciService
WorkerService $FibonacciServiceInitializer(WorkerRequest $$) =>
    _$FibonacciServiceWorkerService(trace: _$X.$6($$.args[0]));

/// Worker for FibonacciService
base class FibonacciServiceWorker extends Worker implements FibonacciService {
  FibonacciServiceWorker(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super($FibonacciServiceActivator(Squadron.platformType), args: [trace]);

  FibonacciServiceWorker.vm(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super($FibonacciServiceActivator(SquadronPlatformType.vm),
            args: [trace]);

  @override
  Future<int?> fibonacci(int i) =>
      send(_$FibonacciServiceWorkerService._$fibonacciId, args: [i])
          .then(_$X.$5);

  @override
  Future<Iterable<int>?> fibonacciList0(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList0Id, args: [s, e])
          .then(_$X.$8);

  @override
  Future<List<int>> fibonacciList1(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList1Id, args: [s, e])
          .then(_$X.$9);

  @override
  Future<List<int>> fibonacciList2(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList2Id, args: [s, e])
          .then(_$X.$10);

  @override
  Stream<int> fibonacciStream(int start, {int? end, CancelationToken? token}) =>
      stream(_$FibonacciServiceWorkerService._$fibonacciStreamId,
              args: [start, end], token: token)
          .map(_$X.$0);

  @override
  // ignore: unused_element
  Logger? get _logger => throw UnimplementedError();
}

/// Worker pool for FibonacciService
base class FibonacciServiceWorkerPool extends WorkerPool<FibonacciServiceWorker>
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

  @override
  // ignore: unused_element
  Logger? get _logger => throw UnimplementedError();
}

sealed class _$X {
  static final $0 = Squadron.converter.value<int>();
  static final $1 = Squadron.converter.list();
  static final $2 = Squadron.converter.nullable($1);
  static final $3 = (($) => (const ListIntMarshaler()).marshal($));
  static final $4 = (($) => listIntMarshaler.marshal($));
  static final $5 = Squadron.converter.nullable($0);
  static final $6 = Squadron.converter.value<bool>();
  static final $7 = Squadron.converter.list<int>(_$X.$0);
  static final $8 = Squadron.converter.nullable($7);
  static final $9 = (($) => (const ListIntMarshaler()).unmarshal($));
  static final $10 = (($) => listIntMarshaler.unmarshal($));
}
