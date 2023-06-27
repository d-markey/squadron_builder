// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../test_services.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.5.0
// **************************************************************************

/// WorkerService class for TestService1
class _$TestService1WorkerService extends TestService1
    implements WorkerService {
  _$TestService1WorkerService() : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {};
}

/// Service initializer for TestService1
WorkerService $TestService1Initializer(WorkerRequest startRequest) =>
    _$TestService1WorkerService();

/// Operations map for TestService1
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestService1Operations anymore.')
mixin $TestService1Operations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestService1
class TestService1Worker extends Worker implements TestService1 {
  TestService1Worker({PlatformWorkerHook? platformWorkerHook})
      : super($TestService1Activator, platformWorkerHook: platformWorkerHook);
}

/// Worker pool for TestService1
class TestService1WorkerPool extends WorkerPool<TestService1Worker>
    implements TestService1 {
  TestService1WorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(() => TestService1Worker(platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestService2
class _$TestService2WorkerService extends TestService2
    implements WorkerService {
  _$TestService2WorkerService(int arg1) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {};
}

/// Service initializer for TestService2
WorkerService $TestService2Initializer(WorkerRequest startRequest) =>
    _$TestService2WorkerService(startRequest.args[0]);

/// Operations map for TestService2
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestService2Operations anymore.')
mixin $TestService2Operations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestService2
class TestService2Worker extends Worker implements TestService2 {
  TestService2Worker(int arg1, {PlatformWorkerHook? platformWorkerHook})
      : super($TestService2Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);
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
}

/// WorkerService class for TestService3
class _$TestService3WorkerService extends TestService3
    implements WorkerService {
  _$TestService3WorkerService([int arg1 = 0]) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {};
}

/// Service initializer for TestService3
WorkerService $TestService3Initializer(WorkerRequest startRequest) =>
    _$TestService3WorkerService(startRequest.args[0]);

/// Operations map for TestService3
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestService3Operations anymore.')
mixin $TestService3Operations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestService3
class TestService3Worker extends Worker implements TestService3 {
  TestService3Worker([int arg1 = 0, PlatformWorkerHook? platformWorkerHook])
      : super($TestService3Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);
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
}

/// WorkerService class for TestService4
class _$TestService4WorkerService extends TestService4
    implements WorkerService {
  _$TestService4WorkerService({int arg1 = 0}) : super(arg1: arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {};
}

/// Service initializer for TestService4
WorkerService $TestService4Initializer(WorkerRequest startRequest) =>
    _$TestService4WorkerService(arg1: startRequest.args[0]);

/// Operations map for TestService4
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestService4Operations anymore.')
mixin $TestService4Operations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestService4
class TestService4Worker extends Worker implements TestService4 {
  TestService4Worker({int arg1 = 0, PlatformWorkerHook? platformWorkerHook})
      : super($TestService4Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);
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
}

/// WorkerService class for TestService5
class _$TestService5WorkerService extends TestService5
    implements WorkerService {
  _$TestService5WorkerService(int arg1, {int? arg2}) : super(arg1, arg2: arg2);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {};
}

/// Service initializer for TestService5
WorkerService $TestService5Initializer(WorkerRequest startRequest) =>
    _$TestService5WorkerService(startRequest.args[0],
        arg2: startRequest.args[1]);

/// Operations map for TestService5
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestService5Operations anymore.')
mixin $TestService5Operations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestService5
class TestService5Worker extends Worker implements TestService5 {
  TestService5Worker(int arg1,
      {int? arg2, PlatformWorkerHook? platformWorkerHook})
      : super($TestService5Activator,
            args: [arg1, arg2], platformWorkerHook: platformWorkerHook);
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
}

/// WorkerService class for TestService6
class _$TestService6WorkerService extends TestService6
    implements WorkerService {
  _$TestService6WorkerService(int arg1, [int? arg2]) : super(arg1, arg2);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {};
}

/// Service initializer for TestService6
WorkerService $TestService6Initializer(WorkerRequest startRequest) =>
    _$TestService6WorkerService(startRequest.args[0], startRequest.args[1]);

/// Operations map for TestService6
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestService6Operations anymore.')
mixin $TestService6Operations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestService6
class TestService6Worker extends Worker implements TestService6 {
  TestService6Worker(int arg1,
      [int? arg2, PlatformWorkerHook? platformWorkerHook])
      : super($TestService6Activator,
            args: [arg1, arg2], platformWorkerHook: platformWorkerHook);
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
}

/// WorkerService class for TestService7
class _$TestService7WorkerService extends TestService7
    implements WorkerService {
  _$TestService7WorkerService(int arg1) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {};
}

/// Service initializer for TestService7
WorkerService $TestService7Initializer(WorkerRequest startRequest) =>
    _$TestService7WorkerService(startRequest.args[0]);

/// Operations map for TestService7
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestService7Operations anymore.')
mixin $TestService7Operations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestService7
class TestService7Worker extends Worker implements TestService7 {
  TestService7Worker(this.arg1, {PlatformWorkerHook? platformWorkerHook})
      : super($TestService7Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int arg1;
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
}

/// WorkerService class for TestService8
class _$TestService8WorkerService extends TestService8
    implements WorkerService {
  _$TestService8WorkerService(int arg1, [int? arg2]) : super(arg1, arg2);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {};
}

/// Service initializer for TestService8
WorkerService $TestService8Initializer(WorkerRequest startRequest) =>
    _$TestService8WorkerService(startRequest.args[0], startRequest.args[1]);

/// Operations map for TestService8
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestService8Operations anymore.')
mixin $TestService8Operations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

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
}

/// WorkerService class for TestService9
class _$TestService9WorkerService extends TestService9
    implements WorkerService {
  _$TestService9WorkerService(int arg1, {int? arg2}) : super(arg1, arg2: arg2);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {};
}

/// Service initializer for TestService9
WorkerService $TestService9Initializer(WorkerRequest startRequest) =>
    _$TestService9WorkerService(startRequest.args[0],
        arg2: startRequest.args[1]);

/// Operations map for TestService9
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestService9Operations anymore.')
mixin $TestService9Operations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

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
}

/// WorkerService class for TestService10
class _$TestService10WorkerService extends TestService10
    implements WorkerService {
  _$TestService10WorkerService([int? arg1]) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {};
}

/// Service initializer for TestService10
WorkerService $TestService10Initializer(WorkerRequest startRequest) =>
    _$TestService10WorkerService(startRequest.args[0]);

/// Operations map for TestService10
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestService10Operations anymore.')
mixin $TestService10Operations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestService10
class TestService10Worker extends Worker implements TestService10 {
  TestService10Worker([this.arg1, PlatformWorkerHook? platformWorkerHook])
      : super($TestService10Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int? arg1;
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
}

/// WorkerService class for TestService11
class _$TestService11WorkerService extends TestService11
    implements WorkerService {
  _$TestService11WorkerService({int arg1 = 0}) : super(arg1: arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {};
}

/// Service initializer for TestService11
WorkerService $TestService11Initializer(WorkerRequest startRequest) =>
    _$TestService11WorkerService(arg1: startRequest.args[0]);

/// Operations map for TestService11
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestService11Operations anymore.')
mixin $TestService11Operations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestService11
class TestService11Worker extends Worker implements TestService11 {
  TestService11Worker({this.arg1 = 0, PlatformWorkerHook? platformWorkerHook})
      : super($TestService11Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int arg1;
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
}

/// WorkerService class for TestService12
class _$TestService12WorkerService extends TestService12
    implements WorkerService {
  _$TestService12WorkerService(int arg1) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {};
}

/// Service initializer for TestService12
WorkerService $TestService12Initializer(WorkerRequest startRequest) =>
    _$TestService12WorkerService(startRequest.args[0]);

/// Operations map for TestService12
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestService12Operations anymore.')
mixin $TestService12Operations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestService12
class TestService12Worker extends Worker implements TestService12 {
  TestService12Worker(int arg1, {PlatformWorkerHook? platformWorkerHook})
      : super($TestService12Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  int get _arg1 => throw UnimplementedError();
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
}

/// WorkerService class for TestService13
class _$TestService13WorkerService extends TestService13
    implements WorkerService {
  _$TestService13WorkerService([int? arg1]) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {};
}

/// Service initializer for TestService13
WorkerService $TestService13Initializer(WorkerRequest startRequest) =>
    _$TestService13WorkerService(startRequest.args[0]);

/// Operations map for TestService13
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestService13Operations anymore.')
mixin $TestService13Operations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestService13
class TestService13Worker extends Worker implements TestService13 {
  TestService13Worker([int? arg1, PlatformWorkerHook? platformWorkerHook])
      : super($TestService13Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  int? get _arg1 => throw UnimplementedError();
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
}

/// WorkerService class for TestService14
class _$TestService14WorkerService extends TestService14
    implements WorkerService {
  _$TestService14WorkerService([int? arg1]) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations = {};
}

/// Service initializer for TestService14
WorkerService $TestService14Initializer(WorkerRequest startRequest) =>
    _$TestService14WorkerService(startRequest.args[0]);

/// Operations map for TestService14
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestService14Operations anymore.')
mixin $TestService14Operations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestService14
class TestService14Worker extends Worker implements TestService14 {
  TestService14Worker([int? arg1, PlatformWorkerHook? platformWorkerHook])
      : super($TestService14Activator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  int? get __arg1 => throw UnimplementedError();
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
}
