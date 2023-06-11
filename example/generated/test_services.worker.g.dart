// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../test_services.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.3.0
// **************************************************************************

/// Operations map for TestService1
mixin $TestService1Operations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {};
      _operations = ops;
    }
    return ops;
  }
}

/// Service initializer for TestService1
TestService1 $TestService1Initializer(WorkerRequest startRequest) =>
    TestService1();

/// Worker for TestService1
class _TestService1Worker extends Worker implements TestService1 {
  _TestService1Worker({PlatformWorkerHook? platformWorkerHook})
      : super($TestService1Activator, platformWorkerHook: platformWorkerHook);

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestService1
class TestService1Worker implements _TestService1Worker {
  TestService1Worker({PlatformWorkerHook? platformWorkerHook})
      : _worker = _TestService1Worker(platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  final _TestService1Worker _worker;

  static final Finalizer<_TestService1Worker> _finalizer =
      Finalizer<_TestService1Worker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for TestService1
class _TestService1WorkerPool extends WorkerPool<TestService1Worker>
    implements TestService1 {
  _TestService1WorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(() => TestService1Worker(platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestService1
class TestService1WorkerPool implements _TestService1WorkerPool {
  TestService1WorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : _pool = _TestService1WorkerPool(
            concurrencySettings: concurrencySettings,
            platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  final _TestService1WorkerPool _pool;

  static final Finalizer<_TestService1WorkerPool> _finalizer =
      Finalizer<_TestService1WorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(TestService1Worker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestService1Worker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestService1Worker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestService1Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(TestService1Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(TestService1Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestService1Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}

/// Operations map for TestService2
mixin $TestService2Operations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {};
      _operations = ops;
    }
    return ops;
  }
}

/// Service initializer for TestService2
TestService2 $TestService2Initializer(WorkerRequest startRequest) =>
    TestService2(startRequest.args[0]);

/// Worker for TestService2
class _TestService2Worker extends Worker implements TestService2 {
  _TestService2Worker(int arg1, {PlatformWorkerHook? platformWorkerHook})
      : super($TestService2Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestService2
class TestService2Worker implements _TestService2Worker {
  TestService2Worker(int arg1, {PlatformWorkerHook? platformWorkerHook})
      : _worker =
            _TestService2Worker(arg1, platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  final _TestService2Worker _worker;

  static final Finalizer<_TestService2Worker> _finalizer =
      Finalizer<_TestService2Worker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for TestService2
class _TestService2WorkerPool extends WorkerPool<TestService2Worker>
    implements TestService2 {
  _TestService2WorkerPool(int arg1,
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestService2Worker(arg1,
                platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestService2
class TestService2WorkerPool implements _TestService2WorkerPool {
  TestService2WorkerPool(int arg1,
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : _pool = _TestService2WorkerPool(arg1,
            concurrencySettings: concurrencySettings,
            platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  final _TestService2WorkerPool _pool;

  static final Finalizer<_TestService2WorkerPool> _finalizer =
      Finalizer<_TestService2WorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(TestService2Worker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestService2Worker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestService2Worker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestService2Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(TestService2Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(TestService2Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestService2Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}

/// Operations map for TestService3
mixin $TestService3Operations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {};
      _operations = ops;
    }
    return ops;
  }
}

/// Service initializer for TestService3
TestService3 $TestService3Initializer(WorkerRequest startRequest) =>
    TestService3(startRequest.args[0]);

/// Worker for TestService3
class _TestService3Worker extends Worker implements TestService3 {
  _TestService3Worker([int arg1 = 0, PlatformWorkerHook? platformWorkerHook])
      : super($TestService3Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestService3
class TestService3Worker implements _TestService3Worker {
  TestService3Worker([int arg1 = 0, PlatformWorkerHook? platformWorkerHook])
      : _worker = _TestService3Worker(arg1, platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  final _TestService3Worker _worker;

  static final Finalizer<_TestService3Worker> _finalizer =
      Finalizer<_TestService3Worker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for TestService3
class _TestService3WorkerPool extends WorkerPool<TestService3Worker>
    implements TestService3 {
  _TestService3WorkerPool(
      [int arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestService3Worker(arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestService3
class TestService3WorkerPool implements _TestService3WorkerPool {
  TestService3WorkerPool(
      [int arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : _pool = _TestService3WorkerPool(
            arg1, concurrencySettings, platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  final _TestService3WorkerPool _pool;

  static final Finalizer<_TestService3WorkerPool> _finalizer =
      Finalizer<_TestService3WorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(TestService3Worker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestService3Worker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestService3Worker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestService3Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(TestService3Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(TestService3Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestService3Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}

/// Operations map for TestService4
mixin $TestService4Operations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {};
      _operations = ops;
    }
    return ops;
  }
}

/// Service initializer for TestService4
TestService4 $TestService4Initializer(WorkerRequest startRequest) =>
    TestService4(arg1: startRequest.args[0]);

/// Worker for TestService4
class _TestService4Worker extends Worker implements TestService4 {
  _TestService4Worker({int arg1 = 0, PlatformWorkerHook? platformWorkerHook})
      : super($TestService4Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestService4
class TestService4Worker implements _TestService4Worker {
  TestService4Worker({int arg1 = 0, PlatformWorkerHook? platformWorkerHook})
      : _worker = _TestService4Worker(
            arg1: arg1, platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  final _TestService4Worker _worker;

  static final Finalizer<_TestService4Worker> _finalizer =
      Finalizer<_TestService4Worker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for TestService4
class _TestService4WorkerPool extends WorkerPool<TestService4Worker>
    implements TestService4 {
  _TestService4WorkerPool(
      {int arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestService4Worker(
                arg1: arg1, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestService4
class TestService4WorkerPool implements _TestService4WorkerPool {
  TestService4WorkerPool(
      {int arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : _pool = _TestService4WorkerPool(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  final _TestService4WorkerPool _pool;

  static final Finalizer<_TestService4WorkerPool> _finalizer =
      Finalizer<_TestService4WorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(TestService4Worker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestService4Worker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestService4Worker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestService4Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(TestService4Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(TestService4Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestService4Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}

/// Operations map for TestService5
mixin $TestService5Operations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {};
      _operations = ops;
    }
    return ops;
  }
}

/// Service initializer for TestService5
TestService5 $TestService5Initializer(WorkerRequest startRequest) =>
    TestService5(startRequest.args[0], arg2: startRequest.args[1]);

/// Worker for TestService5
class _TestService5Worker extends Worker implements TestService5 {
  _TestService5Worker(int arg1,
      {int? arg2, PlatformWorkerHook? platformWorkerHook})
      : super($TestService5Activator,
            args: [arg1, arg2], platformWorkerHook: platformWorkerHook);

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestService5
class TestService5Worker implements _TestService5Worker {
  TestService5Worker(int arg1,
      {int? arg2, PlatformWorkerHook? platformWorkerHook})
      : _worker = _TestService5Worker(arg1,
            arg2: arg2, platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  final _TestService5Worker _worker;

  static final Finalizer<_TestService5Worker> _finalizer =
      Finalizer<_TestService5Worker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for TestService5
class _TestService5WorkerPool extends WorkerPool<TestService5Worker>
    implements TestService5 {
  _TestService5WorkerPool(int arg1,
      {int? arg2,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestService5Worker(arg1,
                arg2: arg2, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestService5
class TestService5WorkerPool implements _TestService5WorkerPool {
  TestService5WorkerPool(int arg1,
      {int? arg2,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : _pool = _TestService5WorkerPool(arg1,
            arg2: arg2,
            concurrencySettings: concurrencySettings,
            platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  final _TestService5WorkerPool _pool;

  static final Finalizer<_TestService5WorkerPool> _finalizer =
      Finalizer<_TestService5WorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(TestService5Worker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestService5Worker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestService5Worker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestService5Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(TestService5Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(TestService5Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestService5Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}

/// Operations map for TestService6
mixin $TestService6Operations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {};
      _operations = ops;
    }
    return ops;
  }
}

/// Service initializer for TestService6
TestService6 $TestService6Initializer(WorkerRequest startRequest) =>
    TestService6(startRequest.args[0], startRequest.args[1]);

/// Worker for TestService6
class _TestService6Worker extends Worker implements TestService6 {
  _TestService6Worker(int arg1,
      [int? arg2, PlatformWorkerHook? platformWorkerHook])
      : super($TestService6Activator,
            args: [arg1, arg2], platformWorkerHook: platformWorkerHook);

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestService6
class TestService6Worker implements _TestService6Worker {
  TestService6Worker(int arg1,
      [int? arg2, PlatformWorkerHook? platformWorkerHook])
      : _worker = _TestService6Worker(arg1, arg2, platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  final _TestService6Worker _worker;

  static final Finalizer<_TestService6Worker> _finalizer =
      Finalizer<_TestService6Worker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for TestService6
class _TestService6WorkerPool extends WorkerPool<TestService6Worker>
    implements TestService6 {
  _TestService6WorkerPool(int arg1,
      [int? arg2,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestService6Worker(arg1, arg2, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestService6
class TestService6WorkerPool implements _TestService6WorkerPool {
  TestService6WorkerPool(int arg1,
      [int? arg2,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : _pool = _TestService6WorkerPool(
            arg1, arg2, concurrencySettings, platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  final _TestService6WorkerPool _pool;

  static final Finalizer<_TestService6WorkerPool> _finalizer =
      Finalizer<_TestService6WorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(TestService6Worker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestService6Worker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestService6Worker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestService6Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(TestService6Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(TestService6Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestService6Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}

/// Operations map for TestService7
mixin $TestService7Operations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {};
      _operations = ops;
    }
    return ops;
  }
}

/// Service initializer for TestService7
TestService7 $TestService7Initializer(WorkerRequest startRequest) =>
    TestService7(startRequest.args[0]);

/// Worker for TestService7
class _TestService7Worker extends Worker implements TestService7 {
  _TestService7Worker(this.arg1, {PlatformWorkerHook? platformWorkerHook})
      : super($TestService7Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int arg1;

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestService7
class TestService7Worker implements _TestService7Worker {
  TestService7Worker(int arg1, {PlatformWorkerHook? platformWorkerHook})
      : _worker =
            _TestService7Worker(arg1, platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  @override
  int get arg1 => _worker.arg1;

  final _TestService7Worker _worker;

  static final Finalizer<_TestService7Worker> _finalizer =
      Finalizer<_TestService7Worker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for TestService7
class _TestService7WorkerPool extends WorkerPool<TestService7Worker>
    implements TestService7 {
  _TestService7WorkerPool(this.arg1,
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestService7Worker(arg1,
                platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final int arg1;

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestService7
class TestService7WorkerPool implements _TestService7WorkerPool {
  TestService7WorkerPool(int arg1,
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : _pool = _TestService7WorkerPool(arg1,
            concurrencySettings: concurrencySettings,
            platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  @override
  int get arg1 => _pool.arg1;

  final _TestService7WorkerPool _pool;

  static final Finalizer<_TestService7WorkerPool> _finalizer =
      Finalizer<_TestService7WorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(TestService7Worker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestService7Worker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestService7Worker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestService7Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(TestService7Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(TestService7Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestService7Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}

/// Operations map for TestService8
mixin $TestService8Operations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {};
      _operations = ops;
    }
    return ops;
  }
}

/// Service initializer for TestService8
TestService8 $TestService8Initializer(WorkerRequest startRequest) =>
    TestService8(startRequest.args[0], startRequest.args[1]);

/// Worker for TestService8
class _TestService8Worker extends Worker implements TestService8 {
  _TestService8Worker(this.arg1,
      [this.arg2, PlatformWorkerHook? platformWorkerHook])
      : super($TestService8Activator,
            args: [arg1, arg2], platformWorkerHook: platformWorkerHook);

  @override
  final int arg1;

  @override
  final int? arg2;

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestService8
class TestService8Worker implements _TestService8Worker {
  TestService8Worker(int arg1,
      [int? arg2, PlatformWorkerHook? platformWorkerHook])
      : _worker = _TestService8Worker(arg1, arg2, platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  @override
  int get arg1 => _worker.arg1;

  @override
  int? get arg2 => _worker.arg2;

  final _TestService8Worker _worker;

  static final Finalizer<_TestService8Worker> _finalizer =
      Finalizer<_TestService8Worker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for TestService8
class _TestService8WorkerPool extends WorkerPool<TestService8Worker>
    implements TestService8 {
  _TestService8WorkerPool(this.arg1,
      [this.arg2,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestService8Worker(arg1, arg2, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final int arg1;

  @override
  final int? arg2;

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestService8
class TestService8WorkerPool implements _TestService8WorkerPool {
  TestService8WorkerPool(int arg1,
      [int? arg2,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : _pool = _TestService8WorkerPool(
            arg1, arg2, concurrencySettings, platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  @override
  int get arg1 => _pool.arg1;

  @override
  int? get arg2 => _pool.arg2;

  final _TestService8WorkerPool _pool;

  static final Finalizer<_TestService8WorkerPool> _finalizer =
      Finalizer<_TestService8WorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(TestService8Worker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestService8Worker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestService8Worker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestService8Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(TestService8Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(TestService8Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestService8Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}

/// Operations map for TestService9
mixin $TestService9Operations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {};
      _operations = ops;
    }
    return ops;
  }
}

/// Service initializer for TestService9
TestService9 $TestService9Initializer(WorkerRequest startRequest) =>
    TestService9(startRequest.args[0], arg2: startRequest.args[1]);

/// Worker for TestService9
class _TestService9Worker extends Worker implements TestService9 {
  _TestService9Worker(this.arg1,
      {this.arg2, PlatformWorkerHook? platformWorkerHook})
      : super($TestService9Activator,
            args: [arg1, arg2], platformWorkerHook: platformWorkerHook);

  @override
  final int arg1;

  @override
  final int? arg2;

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestService9
class TestService9Worker implements _TestService9Worker {
  TestService9Worker(int arg1,
      {int? arg2, PlatformWorkerHook? platformWorkerHook})
      : _worker = _TestService9Worker(arg1,
            arg2: arg2, platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  @override
  int get arg1 => _worker.arg1;

  @override
  int? get arg2 => _worker.arg2;

  final _TestService9Worker _worker;

  static final Finalizer<_TestService9Worker> _finalizer =
      Finalizer<_TestService9Worker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for TestService9
class _TestService9WorkerPool extends WorkerPool<TestService9Worker>
    implements TestService9 {
  _TestService9WorkerPool(this.arg1,
      {this.arg2,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestService9Worker(arg1,
                arg2: arg2, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final int arg1;

  @override
  final int? arg2;

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestService9
class TestService9WorkerPool implements _TestService9WorkerPool {
  TestService9WorkerPool(int arg1,
      {int? arg2,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : _pool = _TestService9WorkerPool(arg1,
            arg2: arg2,
            concurrencySettings: concurrencySettings,
            platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  @override
  int get arg1 => _pool.arg1;

  @override
  int? get arg2 => _pool.arg2;

  final _TestService9WorkerPool _pool;

  static final Finalizer<_TestService9WorkerPool> _finalizer =
      Finalizer<_TestService9WorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(TestService9Worker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestService9Worker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestService9Worker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestService9Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(TestService9Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(TestService9Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestService9Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}

/// Operations map for TestService10
mixin $TestService10Operations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {};
      _operations = ops;
    }
    return ops;
  }
}

/// Service initializer for TestService10
TestService10 $TestService10Initializer(WorkerRequest startRequest) =>
    TestService10(startRequest.args[0]);

/// Worker for TestService10
class _TestService10Worker extends Worker implements TestService10 {
  _TestService10Worker([this.arg1, PlatformWorkerHook? platformWorkerHook])
      : super($TestService10Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int? arg1;

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestService10
class TestService10Worker implements _TestService10Worker {
  TestService10Worker([int? arg1, PlatformWorkerHook? platformWorkerHook])
      : _worker = _TestService10Worker(arg1, platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  @override
  int? get arg1 => _worker.arg1;

  final _TestService10Worker _worker;

  static final Finalizer<_TestService10Worker> _finalizer =
      Finalizer<_TestService10Worker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for TestService10
class _TestService10WorkerPool extends WorkerPool<TestService10Worker>
    implements TestService10 {
  _TestService10WorkerPool(
      [this.arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestService10Worker(arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final int? arg1;

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestService10
class TestService10WorkerPool implements _TestService10WorkerPool {
  TestService10WorkerPool(
      [int? arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : _pool = _TestService10WorkerPool(
            arg1, concurrencySettings, platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  @override
  int? get arg1 => _pool.arg1;

  final _TestService10WorkerPool _pool;

  static final Finalizer<_TestService10WorkerPool> _finalizer =
      Finalizer<_TestService10WorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(TestService10Worker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestService10Worker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestService10Worker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestService10Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(TestService10Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(TestService10Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestService10Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}

/// Operations map for TestService11
mixin $TestService11Operations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {};
      _operations = ops;
    }
    return ops;
  }
}

/// Service initializer for TestService11
TestService11 $TestService11Initializer(WorkerRequest startRequest) =>
    TestService11(arg1: startRequest.args[0]);

/// Worker for TestService11
class _TestService11Worker extends Worker implements TestService11 {
  _TestService11Worker({this.arg1 = 0, PlatformWorkerHook? platformWorkerHook})
      : super($TestService11Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int arg1;

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestService11
class TestService11Worker implements _TestService11Worker {
  TestService11Worker({int arg1 = 0, PlatformWorkerHook? platformWorkerHook})
      : _worker = _TestService11Worker(
            arg1: arg1, platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  @override
  int get arg1 => _worker.arg1;

  final _TestService11Worker _worker;

  static final Finalizer<_TestService11Worker> _finalizer =
      Finalizer<_TestService11Worker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for TestService11
class _TestService11WorkerPool extends WorkerPool<TestService11Worker>
    implements TestService11 {
  _TestService11WorkerPool(
      {this.arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestService11Worker(
                arg1: arg1, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final int arg1;

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestService11
class TestService11WorkerPool implements _TestService11WorkerPool {
  TestService11WorkerPool(
      {int arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : _pool = _TestService11WorkerPool(
            arg1: arg1,
            concurrencySettings: concurrencySettings,
            platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  @override
  int get arg1 => _pool.arg1;

  final _TestService11WorkerPool _pool;

  static final Finalizer<_TestService11WorkerPool> _finalizer =
      Finalizer<_TestService11WorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(TestService11Worker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestService11Worker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestService11Worker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestService11Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(TestService11Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(TestService11Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestService11Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}

/// Operations map for TestService12
mixin $TestService12Operations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {};
      _operations = ops;
    }
    return ops;
  }
}

/// Service initializer for TestService12
TestService12 $TestService12Initializer(WorkerRequest startRequest) =>
    TestService12(startRequest.args[0]);

/// Worker for TestService12
class _TestService12Worker extends Worker implements TestService12 {
  _TestService12Worker(int arg1, {PlatformWorkerHook? platformWorkerHook})
      : super($TestService12Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  int get _arg1 => throw UnimplementedError();

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestService12
class TestService12Worker implements _TestService12Worker {
  TestService12Worker(int arg1, {PlatformWorkerHook? platformWorkerHook})
      : _worker =
            _TestService12Worker(arg1, platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  final _TestService12Worker _worker;

  static final Finalizer<_TestService12Worker> _finalizer =
      Finalizer<_TestService12Worker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  int get _arg1 => _worker._arg1;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for TestService12
class _TestService12WorkerPool extends WorkerPool<TestService12Worker>
    implements TestService12 {
  _TestService12WorkerPool(int arg1,
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestService12Worker(arg1,
                platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  int get _arg1 => throw UnimplementedError();

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestService12
class TestService12WorkerPool implements _TestService12WorkerPool {
  TestService12WorkerPool(int arg1,
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : _pool = _TestService12WorkerPool(arg1,
            concurrencySettings: concurrencySettings,
            platformWorkerHook: platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  final _TestService12WorkerPool _pool;

  static final Finalizer<_TestService12WorkerPool> _finalizer =
      Finalizer<_TestService12WorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  int get _arg1 => _pool._arg1;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(TestService12Worker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestService12Worker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestService12Worker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestService12Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(TestService12Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(TestService12Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestService12Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}

/// Operations map for TestService13
mixin $TestService13Operations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {};
      _operations = ops;
    }
    return ops;
  }
}

/// Service initializer for TestService13
TestService13 $TestService13Initializer(WorkerRequest startRequest) =>
    TestService13(startRequest.args[0]);

/// Worker for TestService13
class _TestService13Worker extends Worker implements TestService13 {
  _TestService13Worker([int? arg1, PlatformWorkerHook? platformWorkerHook])
      : super($TestService13Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  int? get _arg1 => throw UnimplementedError();

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestService13
class TestService13Worker implements _TestService13Worker {
  TestService13Worker([int? arg1, PlatformWorkerHook? platformWorkerHook])
      : _worker = _TestService13Worker(arg1, platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  final _TestService13Worker _worker;

  static final Finalizer<_TestService13Worker> _finalizer =
      Finalizer<_TestService13Worker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  int? get _arg1 => _worker._arg1;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for TestService13
class _TestService13WorkerPool extends WorkerPool<TestService13Worker>
    implements TestService13 {
  _TestService13WorkerPool(
      [int? arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestService13Worker(arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  int? get _arg1 => throw UnimplementedError();

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestService13
class TestService13WorkerPool implements _TestService13WorkerPool {
  TestService13WorkerPool(
      [int? arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : _pool = _TestService13WorkerPool(
            arg1, concurrencySettings, platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  final _TestService13WorkerPool _pool;

  static final Finalizer<_TestService13WorkerPool> _finalizer =
      Finalizer<_TestService13WorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  int? get _arg1 => _pool._arg1;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(TestService13Worker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestService13Worker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestService13Worker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestService13Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(TestService13Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(TestService13Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestService13Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}

/// Operations map for TestService14
mixin $TestService14Operations on WorkerService {
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations {
    var ops = _operations;
    if (ops == null) {
      ops = {};
      _operations = ops;
    }
    return ops;
  }
}

/// Service initializer for TestService14
TestService14 $TestService14Initializer(WorkerRequest startRequest) =>
    TestService14(startRequest.args[0]);

/// Worker for TestService14
class _TestService14Worker extends Worker implements TestService14 {
  _TestService14Worker([int? arg1, PlatformWorkerHook? platformWorkerHook])
      : super($TestService14Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  int? get __arg1 => throw UnimplementedError();

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker wrapper for TestService14
class TestService14Worker implements _TestService14Worker {
  TestService14Worker([int? arg1, PlatformWorkerHook? platformWorkerHook])
      : _worker = _TestService14Worker(arg1, platformWorkerHook) {
    _finalizer.attach(this, _worker, detach: _worker._detachToken);
  }

  final _TestService14Worker _worker;

  static final Finalizer<_TestService14Worker> _finalizer =
      Finalizer<_TestService14Worker>((w) {
    try {
      _finalizer.detach(w._detachToken);
      w.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  int? get __arg1 => _worker.__arg1;

  @override
  List get args => _worker.args;

  @override
  Channel? get channel => _worker.channel;

  @override
  Duration get idleTime => _worker.idleTime;

  @override
  bool get isStopped => _worker.isStopped;

  @override
  int get maxWorkload => _worker.maxWorkload;

  @override
  WorkerStat get stats => _worker.stats;

  @override
  String get status => _worker.status;

  @override
  int get totalErrors => _worker.totalErrors;

  @override
  int get totalWorkload => _worker.totalWorkload;

  @override
  Duration get upTime => _worker.upTime;

  @override
  String get workerId => _worker.workerId;

  @override
  int get workload => _worker.workload;

  @override
  PlatformWorkerHook? get platformWorkerHook => _worker.platformWorkerHook;

  @override
  Future<Channel> start() => _worker.start();

  @override
  void stop() => _worker.stop();

  @override
  Future<T> send<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.send<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Stream<T> stream<T>(int command,
          {List args = const [],
          CancellationToken? token,
          bool inspectRequest = false,
          bool inspectResponse = false}) =>
      _worker.stream<T>(command,
          args: args,
          token: token,
          inspectRequest: inspectRequest,
          inspectResponse: inspectResponse);

  @override
  Object get _detachToken => _worker._detachToken;
}

/// Worker pool for TestService14
class _TestService14WorkerPool extends WorkerPool<TestService14Worker>
    implements TestService14 {
  _TestService14WorkerPool(
      [int? arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestService14Worker(arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  int? get __arg1 => throw UnimplementedError();

  @override
  Map<int, CommandHandler>? _operations;

  final Object _detachToken = Object();
}

/// Finalizable worker pool wrapper for TestService14
class TestService14WorkerPool implements _TestService14WorkerPool {
  TestService14WorkerPool(
      [int? arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : _pool = _TestService14WorkerPool(
            arg1, concurrencySettings, platformWorkerHook) {
    _finalizer.attach(this, _pool, detach: _pool._detachToken);
  }

  final _TestService14WorkerPool _pool;

  static final Finalizer<_TestService14WorkerPool> _finalizer =
      Finalizer<_TestService14WorkerPool>((p) {
    try {
      _finalizer.detach(p._detachToken);
      p.stop();
    } catch (ex) {
      // finalizers must not throw
    }
  });

  @override
  Map<int, CommandHandler>? _operations;

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  int? get __arg1 => _pool.__arg1;

  @override
  ConcurrencySettings get concurrencySettings => _pool.concurrencySettings;

  @override
  Iterable<WorkerStat> get fullStats => _pool.fullStats;

  @override
  int get maxConcurrency => _pool.maxConcurrency;

  @override
  int get maxParallel => _pool.maxParallel;

  @override
  int get maxSize => _pool.maxSize;

  @override
  int get maxWorkers => _pool.maxWorkers;

  @override
  int get maxWorkload => _pool.maxWorkload;

  @override
  int get minWorkers => _pool.minWorkers;

  @override
  int get pendingWorkload => _pool.pendingWorkload;

  @override
  int get size => _pool.size;

  @override
  Iterable<WorkerStat> get stats => _pool.stats;

  @override
  bool get stopped => _pool.stopped;

  @override
  int get totalErrors => _pool.totalErrors;

  @override
  int get totalWorkload => _pool.totalWorkload;

  @override
  int get workload => _pool.workload;

  @override
  void cancel([Task? task, String? message]) => _pool.cancel(task, message);

  @override
  FutureOr start() => _pool.start();

  @override
  int stop([bool Function(TestService14Worker worker)? predicate]) =>
      _pool.stop(predicate);

  @override
  Object registerWorkerPoolListener(
          void Function(TestService14Worker worker, bool removed) listener) =>
      _pool.registerWorkerPoolListener(listener);

  @override
  void unregisterWorkerPoolListener(
          {void Function(TestService14Worker worker, bool removed)? listener,
          Object? token}) =>
      _pool.unregisterWorkerPoolListener(listener: listener, token: token);

  @override
  Future<T> execute<T>(Future<T> Function(TestService14Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.execute<T>(task, counter: counter);

  @override
  StreamTask<T> scheduleStream<T>(
          Stream<T> Function(TestService14Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleStream<T>(task, counter: counter);

  @override
  ValueTask<T> scheduleTask<T>(
          Future<T> Function(TestService14Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.scheduleTask<T>(task, counter: counter);

  @override
  Stream<T> stream<T>(Stream<T> Function(TestService14Worker worker) task,
          {PerfCounter? counter}) =>
      _pool.stream<T>(task, counter: counter);

  @override
  Object get _detachToken => _pool._detachToken;
}
