// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../test_services.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.3.1
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
class TestService1Worker extends Worker implements TestService1 {
  TestService1Worker({PlatformWorkerHook? platformWorkerHook})
      : super($TestService1Activator, platformWorkerHook: platformWorkerHook);

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for TestService1
class TestService1WorkerPool extends WorkerPool<TestService1Worker>
    implements TestService1 {
  TestService1WorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(() => TestService1Worker(platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Map<int, CommandHandler>? _operations;
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
class TestService2Worker extends Worker implements TestService2 {
  TestService2Worker(int arg1, {PlatformWorkerHook? platformWorkerHook})
      : super($TestService2Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for TestService2
class TestService2WorkerPool extends WorkerPool<TestService2Worker>
    implements TestService2 {
  TestService2WorkerPool(int arg1,
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestService2Worker(arg1,
                platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Map<int, CommandHandler>? _operations;
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
class TestService3Worker extends Worker implements TestService3 {
  TestService3Worker([int arg1 = 0, PlatformWorkerHook? platformWorkerHook])
      : super($TestService3Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for TestService3
class TestService3WorkerPool extends WorkerPool<TestService3Worker>
    implements TestService3 {
  TestService3WorkerPool(
      [int arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestService3Worker(arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Map<int, CommandHandler>? _operations;
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
class TestService4Worker extends Worker implements TestService4 {
  TestService4Worker({int arg1 = 0, PlatformWorkerHook? platformWorkerHook})
      : super($TestService4Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for TestService4
class TestService4WorkerPool extends WorkerPool<TestService4Worker>
    implements TestService4 {
  TestService4WorkerPool(
      {int arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestService4Worker(
                arg1: arg1, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Map<int, CommandHandler>? _operations;
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
class TestService5Worker extends Worker implements TestService5 {
  TestService5Worker(int arg1,
      {int? arg2, PlatformWorkerHook? platformWorkerHook})
      : super($TestService5Activator,
            args: [arg1, arg2], platformWorkerHook: platformWorkerHook);

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for TestService5
class TestService5WorkerPool extends WorkerPool<TestService5Worker>
    implements TestService5 {
  TestService5WorkerPool(int arg1,
      {int? arg2,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestService5Worker(arg1,
                arg2: arg2, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Map<int, CommandHandler>? _operations;
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
class TestService6Worker extends Worker implements TestService6 {
  TestService6Worker(int arg1,
      [int? arg2, PlatformWorkerHook? platformWorkerHook])
      : super($TestService6Activator,
            args: [arg1, arg2], platformWorkerHook: platformWorkerHook);

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for TestService6
class TestService6WorkerPool extends WorkerPool<TestService6Worker>
    implements TestService6 {
  TestService6WorkerPool(int arg1,
      [int? arg2,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestService6Worker(arg1, arg2, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  Map<int, CommandHandler>? _operations;
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
class TestService7Worker extends Worker implements TestService7 {
  TestService7Worker(this.arg1, {PlatformWorkerHook? platformWorkerHook})
      : super($TestService7Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int arg1;

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for TestService7
class TestService7WorkerPool extends WorkerPool<TestService7Worker>
    implements TestService7 {
  TestService7WorkerPool(this.arg1,
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
class TestService8Worker extends Worker implements TestService8 {
  TestService8Worker(this.arg1,
      [this.arg2, PlatformWorkerHook? platformWorkerHook])
      : super($TestService8Activator,
            args: [arg1, arg2], platformWorkerHook: platformWorkerHook);

  @override
  final int arg1;

  @override
  final int? arg2;

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for TestService8
class TestService8WorkerPool extends WorkerPool<TestService8Worker>
    implements TestService8 {
  TestService8WorkerPool(this.arg1,
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
class TestService9Worker extends Worker implements TestService9 {
  TestService9Worker(this.arg1,
      {this.arg2, PlatformWorkerHook? platformWorkerHook})
      : super($TestService9Activator,
            args: [arg1, arg2], platformWorkerHook: platformWorkerHook);

  @override
  final int arg1;

  @override
  final int? arg2;

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for TestService9
class TestService9WorkerPool extends WorkerPool<TestService9Worker>
    implements TestService9 {
  TestService9WorkerPool(this.arg1,
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
class TestService10Worker extends Worker implements TestService10 {
  TestService10Worker([this.arg1, PlatformWorkerHook? platformWorkerHook])
      : super($TestService10Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int? arg1;

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for TestService10
class TestService10WorkerPool extends WorkerPool<TestService10Worker>
    implements TestService10 {
  TestService10WorkerPool(
      [this.arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestService10Worker(arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final int? arg1;

  @override
  Map<int, CommandHandler>? _operations;
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
class TestService11Worker extends Worker implements TestService11 {
  TestService11Worker({this.arg1 = 0, PlatformWorkerHook? platformWorkerHook})
      : super($TestService11Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int arg1;

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for TestService11
class TestService11WorkerPool extends WorkerPool<TestService11Worker>
    implements TestService11 {
  TestService11WorkerPool(
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
class TestService12Worker extends Worker implements TestService12 {
  TestService12Worker(int arg1, {PlatformWorkerHook? platformWorkerHook})
      : super($TestService12Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  int get _arg1 => throw UnimplementedError();

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for TestService12
class TestService12WorkerPool extends WorkerPool<TestService12Worker>
    implements TestService12 {
  TestService12WorkerPool(int arg1,
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
class TestService13Worker extends Worker implements TestService13 {
  TestService13Worker([int? arg1, PlatformWorkerHook? platformWorkerHook])
      : super($TestService13Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  int? get _arg1 => throw UnimplementedError();

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for TestService13
class TestService13WorkerPool extends WorkerPool<TestService13Worker>
    implements TestService13 {
  TestService13WorkerPool(
      [int? arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestService13Worker(arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  int? get _arg1 => throw UnimplementedError();

  @override
  Map<int, CommandHandler>? _operations;
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
class TestService14Worker extends Worker implements TestService14 {
  TestService14Worker([int? arg1, PlatformWorkerHook? platformWorkerHook])
      : super($TestService14Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  int? get __arg1 => throw UnimplementedError();

  @override
  Map<int, CommandHandler>? _operations;
}

/// Worker pool for TestService14
class TestService14WorkerPool extends WorkerPool<TestService14Worker>
    implements TestService14 {
  TestService14WorkerPool(
      [int? arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestService14Worker(arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  int? get __arg1 => throw UnimplementedError();

  @override
  Map<int, CommandHandler>? _operations;
}
