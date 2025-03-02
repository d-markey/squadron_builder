// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fibonacci_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService class for FibonacciService
class _$FibonacciServiceWorkerService extends FibonacciService
    implements WorkerService {
  _$FibonacciServiceWorkerService({super.trace = false}) : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$fibonacciId: ($req_) async {
      int? $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = await fibonacci(
          $mc.value<int>()($req_.args[0]),
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return $res_;
      } finally {}
    },
    _$fibonacciList0Id: ($req_) async {
      Iterable<int>? $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = await fibonacciList0(
          $mc.value<int>()($req_.args[0]),
          $mc.value<int>()($req_.args[1]),
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return Converter.allowNull($mc.list())($res_);
      } finally {}
    },
    _$fibonacciList1Id: ($req_) async {
      List<int> $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = await fibonacciList1(
          $mc.value<int>()($req_.args[0]),
          $mc.value<int>()($req_.args[1]),
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return (($_) => (const ListIntMarshaler()).marshal($_, $mc))($res_);
      } finally {}
    },
    _$fibonacciList2Id: ($req_) async {
      List<int> $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = await fibonacciList2(
          $mc.value<int>()($req_.args[0]),
          $mc.value<int>()($req_.args[1]),
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return (($_) => listIntMarshaler.marshal($_, $mc))($res_);
      } finally {}
    },
    _$fibonacciStreamId: ($req_) {
      Stream<int> $res_;
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        $res_ = fibonacciStream(
          $mc.value<int>()($req_.args[0]),
          end: $mc.nvalue<int>()($req_.args[1]),
          token: $req_.cancelToken,
        );
      } finally {}
      try {
        // ignore: unused_local_variable
        final $mc = MarshalingContext();
        return $res_;
      } finally {}
    },
  });

  static const int _$fibonacciId = 1;
  static const int _$fibonacciList0Id = 2;
  static const int _$fibonacciList1Id = 3;
  static const int _$fibonacciList2Id = 4;
  static const int _$fibonacciStreamId = 5;
}

/// Service initializer for FibonacciService
WorkerService $FibonacciServiceInitializer(WorkerRequest $req_) {
  // ignore: unused_local_variable
  final $mc = MarshalingContext();
  return _$FibonacciServiceWorkerService(
    trace: $mc.value<bool>()($req_.args[0]),
  );
}

/// Worker for FibonacciService
base class FibonacciServiceWorker extends Worker implements FibonacciService {
  FibonacciServiceWorker(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super($FibonacciServiceActivator(Squadron.platformType), args: [
          trace,
        ]);

  FibonacciServiceWorker.vm(
      {bool trace = false,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super($FibonacciServiceActivator(SquadronPlatformType.vm), args: [
          trace,
        ]);

  @override
  Future<int?> fibonacci(int i) async {
    dynamic $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      $res_ = await send(
        _$FibonacciServiceWorkerService._$fibonacciId,
        args: [
          i,
        ],
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      return $mc.nvalue<int>()($res_);
    } finally {}
  }

  @override
  Future<Iterable<int>?> fibonacciList0(int s, int e) async {
    dynamic $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      $res_ = await send(
        _$FibonacciServiceWorkerService._$fibonacciList0Id,
        args: [
          s,
          e,
        ],
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      return Converter.allowNull($mc.list<int>($mc.value<int>()))($res_);
    } finally {}
  }

  @override
  Future<List<int>> fibonacciList1(int s, int e) async {
    dynamic $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      $res_ = await send(
        _$FibonacciServiceWorkerService._$fibonacciList1Id,
        args: [
          s,
          e,
        ],
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext();
      return (($_) => (const ListIntMarshaler())
          .unmarshal($mc.value<ByteBuffer>()($_), $mc))($res_);
    } finally {}
  }

  @override
  Future<List<int>> fibonacciList2(int s, int e) async {
    dynamic $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      $res_ = await send(
        _$FibonacciServiceWorkerService._$fibonacciList2Id,
        args: [
          s,
          e,
        ],
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext();
      return (($_) =>
          listIntMarshaler.unmarshal($mc.value<ByteBuffer>()($_), $mc))($res_);
    } finally {}
  }

  @override
  Stream<int> fibonacciStream(int start, {int? end, CancelationToken? token}) {
    Stream $res_;
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      $res_ = stream(
        _$FibonacciServiceWorkerService._$fibonacciStreamId,
        args: [
          start,
          end,
        ],
        token: token,
      );
    } finally {}
    try {
      // ignore: unused_local_variable
      final $mc = MarshalingContext.none;
      return $res_.map($mc.value<int>());
    } finally {}
  }

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
