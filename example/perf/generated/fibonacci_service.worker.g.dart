// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fibonacci_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.2.0
// **************************************************************************

/// WorkerService class for FibonacciService
class _$FibonacciServiceWorkerService extends FibonacciService
    implements WorkerService {
  _$FibonacciServiceWorkerService({super.trace = false}) : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$fibonacciId: ($) => fibonacci(_$X.$impl.$dsr0($.args[0])),
    _$fibonacciList0Id: ($) async => _$X.$impl.$sr2(await fibonacciList0(
        _$X.$impl.$dsr0($.args[0]), _$X.$impl.$dsr0($.args[1]))),
    _$fibonacciList1Id: ($) async => _$X.$impl.$sr3(await fibonacciList1(
        _$X.$impl.$dsr0($.args[0]), _$X.$impl.$dsr0($.args[1]))),
    _$fibonacciList2Id: ($) async => _$X.$impl.$sr4(await fibonacciList2(
        _$X.$impl.$dsr0($.args[0]), _$X.$impl.$dsr0($.args[1]))),
    _$fibonacciStreamId: ($) => fibonacciStream(_$X.$impl.$dsr0($.args[0]),
        end: _$X.$impl.$dsr5($.args[1]), token: $.cancelToken),
  });

  static const int _$fibonacciId = 1;
  static const int _$fibonacciList0Id = 2;
  static const int _$fibonacciList1Id = 3;
  static const int _$fibonacciList2Id = 4;
  static const int _$fibonacciStreamId = 5;
}

/// Service initializer for FibonacciService
WorkerService $FibonacciServiceInitializer(WorkerRequest $$) =>
    _$FibonacciServiceWorkerService(trace: _$X.$impl.$dsr6($$.args[0]));

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
          .then(_$X.$impl.$dsr5);

  @override
  Future<Iterable<int>?> fibonacciList0(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList0Id, args: [s, e])
          .then(_$X.$impl.$dsr8);

  @override
  Future<List<int>> fibonacciList1(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList1Id, args: [s, e])
          .then(_$X.$impl.$dsr9);

  @override
  Future<List<int>> fibonacciList2(int s, int e) =>
      send(_$FibonacciServiceWorkerService._$fibonacciList2Id, args: [s, e])
          .then(_$X.$impl.$dsr10);

  @override
  Stream<int> fibonacciStream(int start, {int? end, CancelationToken? token}) =>
      stream(_$FibonacciServiceWorkerService._$fibonacciStreamId,
              args: [start, end], token: token)
          .map(_$X.$impl.$dsr0);

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

final class _$X {
  _$X._();

  static _$X? _impl;

  static _$X get $impl {
    if (_impl == null) {
      Squadron.onConverterChanged(() => _impl = _$X._());
      _impl = _$X._();
    }
    return _impl!;
  }

  late final $dsr0 = Squadron.converter.value<int>();
  late final $sr1 = Squadron.converter.list();
  late final $sr2 = Squadron.converter.nullable($sr1);
  late final $sr3 = (($) => (const ListIntMarshaler()).marshal($));
  late final $sr4 = (($) => listIntMarshaler.marshal($));
  late final $dsr5 = Squadron.converter.nullable($dsr0);
  late final $dsr6 = Squadron.converter.value<bool>();
  late final $dsr7 = Squadron.converter.list<int>($dsr0);
  late final $dsr8 = Squadron.converter.nullable($dsr7);
  late final $dsr9 = (($) => (const ListIntMarshaler()).unmarshal($));
  late final $dsr10 = (($) => listIntMarshaler.unmarshal($));
}
