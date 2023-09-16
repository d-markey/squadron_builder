// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../test_services.dart';

// **************************************************************************
// Generator: WorkerGenerator 2.4.2
// **************************************************************************

/// WorkerService class for TestParameterLess
class _$TestParameterLessWorkerService extends TestParameterLess
    implements WorkerService {
  _$TestParameterLessWorkerService() : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestParameterLess
WorkerService $TestParameterLessInitializer(WorkerRequest startRequest) =>
    _$TestParameterLessWorkerService();

/// Operations map for TestParameterLess
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestParameterLessOperations anymore.')
mixin $TestParameterLessOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestParameterLess
class TestParameterLessWorker extends Worker implements TestParameterLess {
  TestParameterLessWorker({PlatformWorkerHook? platformWorkerHook})
      : super($TestParameterLessActivator,
            platformWorkerHook: platformWorkerHook);
}

/// Worker pool for TestParameterLess
class TestParameterLessWorkerPool extends WorkerPool<TestParameterLessWorker>
    implements TestParameterLess {
  TestParameterLessWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () =>
                TestParameterLessWorker(platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestReqPositional
class _$TestReqPositionalWorkerService extends TestReqPositional
    implements WorkerService {
  _$TestReqPositionalWorkerService(int arg1) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestReqPositional
WorkerService $TestReqPositionalInitializer(WorkerRequest startRequest) =>
    _$TestReqPositionalWorkerService(startRequest.args[0]);

/// Operations map for TestReqPositional
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestReqPositionalOperations anymore.')
mixin $TestReqPositionalOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestReqPositional
class TestReqPositionalWorker extends Worker implements TestReqPositional {
  TestReqPositionalWorker(int arg1, {PlatformWorkerHook? platformWorkerHook})
      : super($TestReqPositionalActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);
}

/// Worker pool for TestReqPositional
class TestReqPositionalWorkerPool extends WorkerPool<TestReqPositionalWorker>
    implements TestReqPositional {
  TestReqPositionalWorkerPool(int arg1,
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestReqPositionalWorker(arg1,
                platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestOptNullPositional
class _$TestOptNullPositionalWorkerService extends TestOptNullPositional
    implements WorkerService {
  _$TestOptNullPositionalWorkerService([int? arg1]) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptNullPositional
WorkerService $TestOptNullPositionalInitializer(WorkerRequest startRequest) =>
    _$TestOptNullPositionalWorkerService(startRequest.args[0]);

/// Operations map for TestOptNullPositional
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptNullPositionalOperations anymore.')
mixin $TestOptNullPositionalOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptNullPositional
class TestOptNullPositionalWorker extends Worker
    implements TestOptNullPositional {
  TestOptNullPositionalWorker(
      [int? arg1, PlatformWorkerHook? platformWorkerHook])
      : super($TestOptNullPositionalActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);
}

/// Worker pool for TestOptNullPositional
class TestOptNullPositionalWorkerPool
    extends WorkerPool<TestOptNullPositionalWorker>
    implements TestOptNullPositional {
  TestOptNullPositionalWorkerPool(
      [int? arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestOptNullPositionalWorker(arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestOptDefPositional
class _$TestOptDefPositionalWorkerService extends TestOptDefPositional
    implements WorkerService {
  _$TestOptDefPositionalWorkerService([int arg1 = 0]) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptDefPositional
WorkerService $TestOptDefPositionalInitializer(WorkerRequest startRequest) =>
    _$TestOptDefPositionalWorkerService(startRequest.args[0]);

/// Operations map for TestOptDefPositional
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptDefPositionalOperations anymore.')
mixin $TestOptDefPositionalOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptDefPositional
class TestOptDefPositionalWorker extends Worker
    implements TestOptDefPositional {
  TestOptDefPositionalWorker(
      [int arg1 = 0, PlatformWorkerHook? platformWorkerHook])
      : super($TestOptDefPositionalActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);
}

/// Worker pool for TestOptDefPositional
class TestOptDefPositionalWorkerPool
    extends WorkerPool<TestOptDefPositionalWorker>
    implements TestOptDefPositional {
  TestOptDefPositionalWorkerPool(
      [int arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestOptDefPositionalWorker(arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestOptNullDefPositional
class _$TestOptNullDefPositionalWorkerService extends TestOptNullDefPositional
    implements WorkerService {
  _$TestOptNullDefPositionalWorkerService([int? arg1 = 0]) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositional
WorkerService $TestOptNullDefPositionalInitializer(
        WorkerRequest startRequest) =>
    _$TestOptNullDefPositionalWorkerService(startRequest.args[0]);

/// Operations map for TestOptNullDefPositional
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptNullDefPositionalOperations anymore.')
mixin $TestOptNullDefPositionalOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptNullDefPositional
class TestOptNullDefPositionalWorker extends Worker
    implements TestOptNullDefPositional {
  TestOptNullDefPositionalWorker(
      [int? arg1 = 0, PlatformWorkerHook? platformWorkerHook])
      : super($TestOptNullDefPositionalActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);
}

/// Worker pool for TestOptNullDefPositional
class TestOptNullDefPositionalWorkerPool
    extends WorkerPool<TestOptNullDefPositionalWorker>
    implements TestOptNullDefPositional {
  TestOptNullDefPositionalWorkerPool(
      [int? arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestOptNullDefPositionalWorker(arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestReqPositionalField
class _$TestReqPositionalFieldWorkerService extends TestReqPositionalField
    implements WorkerService {
  _$TestReqPositionalFieldWorkerService(int arg1) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestReqPositionalField
WorkerService $TestReqPositionalFieldInitializer(WorkerRequest startRequest) =>
    _$TestReqPositionalFieldWorkerService(startRequest.args[0]);

/// Operations map for TestReqPositionalField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestReqPositionalFieldOperations anymore.')
mixin $TestReqPositionalFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestReqPositionalField
class TestReqPositionalFieldWorker extends Worker
    implements TestReqPositionalField {
  TestReqPositionalFieldWorker(this.arg1,
      {PlatformWorkerHook? platformWorkerHook})
      : super($TestReqPositionalFieldActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int arg1;
}

/// Worker pool for TestReqPositionalField
class TestReqPositionalFieldWorkerPool
    extends WorkerPool<TestReqPositionalFieldWorker>
    implements TestReqPositionalField {
  TestReqPositionalFieldWorkerPool(this.arg1,
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestReqPositionalFieldWorker(arg1,
                platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final int arg1;
}

/// WorkerService class for TestOptNullPositionalField
class _$TestOptNullPositionalFieldWorkerService
    extends TestOptNullPositionalField implements WorkerService {
  _$TestOptNullPositionalFieldWorkerService([int? arg1]) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptNullPositionalField
WorkerService $TestOptNullPositionalFieldInitializer(
        WorkerRequest startRequest) =>
    _$TestOptNullPositionalFieldWorkerService(startRequest.args[0]);

/// Operations map for TestOptNullPositionalField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptNullPositionalFieldOperations anymore.')
mixin $TestOptNullPositionalFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptNullPositionalField
class TestOptNullPositionalFieldWorker extends Worker
    implements TestOptNullPositionalField {
  TestOptNullPositionalFieldWorker(
      [this.arg1, PlatformWorkerHook? platformWorkerHook])
      : super($TestOptNullPositionalFieldActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullPositionalField
class TestOptNullPositionalFieldWorkerPool
    extends WorkerPool<TestOptNullPositionalFieldWorker>
    implements TestOptNullPositionalField {
  TestOptNullPositionalFieldWorkerPool(
      [this.arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestOptNullPositionalFieldWorker(arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final int? arg1;
}

/// WorkerService class for TestOptDefPositionalField
class _$TestOptDefPositionalFieldWorkerService extends TestOptDefPositionalField
    implements WorkerService {
  _$TestOptDefPositionalFieldWorkerService([int arg1 = 0]) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptDefPositionalField
WorkerService $TestOptDefPositionalFieldInitializer(
        WorkerRequest startRequest) =>
    _$TestOptDefPositionalFieldWorkerService(startRequest.args[0]);

/// Operations map for TestOptDefPositionalField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptDefPositionalFieldOperations anymore.')
mixin $TestOptDefPositionalFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptDefPositionalField
class TestOptDefPositionalFieldWorker extends Worker
    implements TestOptDefPositionalField {
  TestOptDefPositionalFieldWorker(
      [this.arg1 = 0, PlatformWorkerHook? platformWorkerHook])
      : super($TestOptDefPositionalFieldActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int arg1;
}

/// Worker pool for TestOptDefPositionalField
class TestOptDefPositionalFieldWorkerPool
    extends WorkerPool<TestOptDefPositionalFieldWorker>
    implements TestOptDefPositionalField {
  TestOptDefPositionalFieldWorkerPool(
      [this.arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(() => TestOptDefPositionalFieldWorker(arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final int arg1;
}

/// WorkerService class for TestOptNullDefPositionalField
class _$TestOptNullDefPositionalFieldWorkerService
    extends TestOptNullDefPositionalField implements WorkerService {
  _$TestOptNullDefPositionalFieldWorkerService([int? arg1 = 0]) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositionalField
WorkerService $TestOptNullDefPositionalFieldInitializer(
        WorkerRequest startRequest) =>
    _$TestOptNullDefPositionalFieldWorkerService(startRequest.args[0]);

/// Operations map for TestOptNullDefPositionalField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptNullDefPositionalFieldOperations anymore.')
mixin $TestOptNullDefPositionalFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptNullDefPositionalField
class TestOptNullDefPositionalFieldWorker extends Worker
    implements TestOptNullDefPositionalField {
  TestOptNullDefPositionalFieldWorker(
      [this.arg1 = 0, PlatformWorkerHook? platformWorkerHook])
      : super($TestOptNullDefPositionalFieldActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullDefPositionalField
class TestOptNullDefPositionalFieldWorkerPool
    extends WorkerPool<TestOptNullDefPositionalFieldWorker>
    implements TestOptNullDefPositionalField {
  TestOptNullDefPositionalFieldWorkerPool(
      [this.arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(
            () => TestOptNullDefPositionalFieldWorker(arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final int? arg1;
}

/// WorkerService class for TestReqPositionalPrivateField
class _$TestReqPositionalPrivateFieldWorkerService
    extends TestReqPositionalPrivateField implements WorkerService {
  _$TestReqPositionalPrivateFieldWorkerService(int arg1) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestReqPositionalPrivateField
WorkerService $TestReqPositionalPrivateFieldInitializer(
        WorkerRequest startRequest) =>
    _$TestReqPositionalPrivateFieldWorkerService(startRequest.args[0]);

/// Operations map for TestReqPositionalPrivateField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestReqPositionalPrivateFieldOperations anymore.')
mixin $TestReqPositionalPrivateFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestReqPositionalPrivateField
class TestReqPositionalPrivateFieldWorker extends Worker
    implements TestReqPositionalPrivateField {
  TestReqPositionalPrivateFieldWorker(int arg1,
      {PlatformWorkerHook? platformWorkerHook})
      : super($TestReqPositionalPrivateFieldActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestReqPositionalPrivateField
class TestReqPositionalPrivateFieldWorkerPool
    extends WorkerPool<TestReqPositionalPrivateFieldWorker>
    implements TestReqPositionalPrivateField {
  TestReqPositionalPrivateFieldWorkerPool(int arg1,
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestReqPositionalPrivateFieldWorker(arg1,
                platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullPositionalPrivateField
class _$TestOptNullPositionalPrivateFieldWorkerService
    extends TestOptNullPositionalPrivateField implements WorkerService {
  _$TestOptNullPositionalPrivateFieldWorkerService([int? arg1]) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptNullPositionalPrivateField
WorkerService $TestOptNullPositionalPrivateFieldInitializer(
        WorkerRequest startRequest) =>
    _$TestOptNullPositionalPrivateFieldWorkerService(startRequest.args[0]);

/// Operations map for TestOptNullPositionalPrivateField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptNullPositionalPrivateFieldOperations anymore.')
mixin $TestOptNullPositionalPrivateFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptNullPositionalPrivateField
class TestOptNullPositionalPrivateFieldWorker extends Worker
    implements TestOptNullPositionalPrivateField {
  TestOptNullPositionalPrivateFieldWorker(
      [int? arg1, PlatformWorkerHook? platformWorkerHook])
      : super($TestOptNullPositionalPrivateFieldActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptNullPositionalPrivateField
class TestOptNullPositionalPrivateFieldWorkerPool
    extends WorkerPool<TestOptNullPositionalPrivateFieldWorker>
    implements TestOptNullPositionalPrivateField {
  TestOptNullPositionalPrivateFieldWorkerPool(
      [int? arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(
            () => TestOptNullPositionalPrivateFieldWorker(
                arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptDefPositionalPrivateField
class _$TestOptDefPositionalPrivateFieldWorkerService
    extends TestOptDefPositionalPrivateField implements WorkerService {
  _$TestOptDefPositionalPrivateFieldWorkerService([int arg1 = 0]) : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptDefPositionalPrivateField
WorkerService $TestOptDefPositionalPrivateFieldInitializer(
        WorkerRequest startRequest) =>
    _$TestOptDefPositionalPrivateFieldWorkerService(startRequest.args[0]);

/// Operations map for TestOptDefPositionalPrivateField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptDefPositionalPrivateFieldOperations anymore.')
mixin $TestOptDefPositionalPrivateFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptDefPositionalPrivateField
class TestOptDefPositionalPrivateFieldWorker extends Worker
    implements TestOptDefPositionalPrivateField {
  TestOptDefPositionalPrivateFieldWorker(
      [int arg1 = 0, PlatformWorkerHook? platformWorkerHook])
      : super($TestOptDefPositionalPrivateFieldActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptDefPositionalPrivateField
class TestOptDefPositionalPrivateFieldWorkerPool
    extends WorkerPool<TestOptDefPositionalPrivateFieldWorker>
    implements TestOptDefPositionalPrivateField {
  TestOptDefPositionalPrivateFieldWorkerPool(
      [int arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(
            () => TestOptDefPositionalPrivateFieldWorker(
                arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullDefPositionalPrivateField
class _$TestOptNullDefPositionalPrivateFieldWorkerService
    extends TestOptNullDefPositionalPrivateField implements WorkerService {
  _$TestOptNullDefPositionalPrivateFieldWorkerService([int? arg1 = 0])
      : super(arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositionalPrivateField
WorkerService $TestOptNullDefPositionalPrivateFieldInitializer(
        WorkerRequest startRequest) =>
    _$TestOptNullDefPositionalPrivateFieldWorkerService(startRequest.args[0]);

/// Operations map for TestOptNullDefPositionalPrivateField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptNullDefPositionalPrivateFieldOperations anymore.')
mixin $TestOptNullDefPositionalPrivateFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptNullDefPositionalPrivateField
class TestOptNullDefPositionalPrivateFieldWorker extends Worker
    implements TestOptNullDefPositionalPrivateField {
  TestOptNullDefPositionalPrivateFieldWorker(
      [int? arg1 = 0, PlatformWorkerHook? platformWorkerHook])
      : super($TestOptNullDefPositionalPrivateFieldActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptNullDefPositionalPrivateField
class TestOptNullDefPositionalPrivateFieldWorkerPool
    extends WorkerPool<TestOptNullDefPositionalPrivateFieldWorker>
    implements TestOptNullDefPositionalPrivateField {
  TestOptNullDefPositionalPrivateFieldWorkerPool(
      [int? arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook])
      : super(
            () => TestOptNullDefPositionalPrivateFieldWorker(
                arg1, platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullNamed
class _$TestOptNullNamedWorkerService extends TestOptNullNamed
    implements WorkerService {
  _$TestOptNullNamedWorkerService({int? arg1}) : super(arg1: arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptNullNamed
WorkerService $TestOptNullNamedInitializer(WorkerRequest startRequest) =>
    _$TestOptNullNamedWorkerService(arg1: startRequest.args[0]);

/// Operations map for TestOptNullNamed
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptNullNamedOperations anymore.')
mixin $TestOptNullNamedOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptNullNamed
class TestOptNullNamedWorker extends Worker implements TestOptNullNamed {
  TestOptNullNamedWorker({int? arg1, PlatformWorkerHook? platformWorkerHook})
      : super($TestOptNullNamedActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);
}

/// Worker pool for TestOptNullNamed
class TestOptNullNamedWorkerPool extends WorkerPool<TestOptNullNamedWorker>
    implements TestOptNullNamed {
  TestOptNullNamedWorkerPool(
      {int? arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestOptNullNamedWorker(
                arg1: arg1, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestOptDefNamed
class _$TestOptDefNamedWorkerService extends TestOptDefNamed
    implements WorkerService {
  _$TestOptDefNamedWorkerService({int arg1 = 0}) : super(arg1: arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptDefNamed
WorkerService $TestOptDefNamedInitializer(WorkerRequest startRequest) =>
    _$TestOptDefNamedWorkerService(arg1: startRequest.args[0]);

/// Operations map for TestOptDefNamed
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptDefNamedOperations anymore.')
mixin $TestOptDefNamedOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptDefNamed
class TestOptDefNamedWorker extends Worker implements TestOptDefNamed {
  TestOptDefNamedWorker({int arg1 = 0, PlatformWorkerHook? platformWorkerHook})
      : super($TestOptDefNamedActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);
}

/// Worker pool for TestOptDefNamed
class TestOptDefNamedWorkerPool extends WorkerPool<TestOptDefNamedWorker>
    implements TestOptDefNamed {
  TestOptDefNamedWorkerPool(
      {int arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestOptDefNamedWorker(
                arg1: arg1, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestOptNullDefNamed
class _$TestOptNullDefNamedWorkerService extends TestOptNullDefNamed
    implements WorkerService {
  _$TestOptNullDefNamedWorkerService({int? arg1 = 0}) : super(arg1: arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamed
WorkerService $TestOptNullDefNamedInitializer(WorkerRequest startRequest) =>
    _$TestOptNullDefNamedWorkerService(arg1: startRequest.args[0]);

/// Operations map for TestOptNullDefNamed
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptNullDefNamedOperations anymore.')
mixin $TestOptNullDefNamedOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptNullDefNamed
class TestOptNullDefNamedWorker extends Worker implements TestOptNullDefNamed {
  TestOptNullDefNamedWorker(
      {int? arg1 = 0, PlatformWorkerHook? platformWorkerHook})
      : super($TestOptNullDefNamedActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);
}

/// Worker pool for TestOptNullDefNamed
class TestOptNullDefNamedWorkerPool
    extends WorkerPool<TestOptNullDefNamedWorker>
    implements TestOptNullDefNamed {
  TestOptNullDefNamedWorkerPool(
      {int? arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestOptNullDefNamedWorker(
                arg1: arg1, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestOptNullNamedField
class _$TestOptNullNamedFieldWorkerService extends TestOptNullNamedField
    implements WorkerService {
  _$TestOptNullNamedFieldWorkerService({int? arg1}) : super(arg1: arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptNullNamedField
WorkerService $TestOptNullNamedFieldInitializer(WorkerRequest startRequest) =>
    _$TestOptNullNamedFieldWorkerService(arg1: startRequest.args[0]);

/// Operations map for TestOptNullNamedField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptNullNamedFieldOperations anymore.')
mixin $TestOptNullNamedFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptNullNamedField
class TestOptNullNamedFieldWorker extends Worker
    implements TestOptNullNamedField {
  TestOptNullNamedFieldWorker(
      {this.arg1, PlatformWorkerHook? platformWorkerHook})
      : super($TestOptNullNamedFieldActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullNamedField
class TestOptNullNamedFieldWorkerPool
    extends WorkerPool<TestOptNullNamedFieldWorker>
    implements TestOptNullNamedField {
  TestOptNullNamedFieldWorkerPool(
      {this.arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestOptNullNamedFieldWorker(
                arg1: arg1, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final int? arg1;
}

/// WorkerService class for TestOptDefNamedField
class _$TestOptDefNamedFieldWorkerService extends TestOptDefNamedField
    implements WorkerService {
  _$TestOptDefNamedFieldWorkerService({int arg1 = 0}) : super(arg1: arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptDefNamedField
WorkerService $TestOptDefNamedFieldInitializer(WorkerRequest startRequest) =>
    _$TestOptDefNamedFieldWorkerService(arg1: startRequest.args[0]);

/// Operations map for TestOptDefNamedField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptDefNamedFieldOperations anymore.')
mixin $TestOptDefNamedFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptDefNamedField
class TestOptDefNamedFieldWorker extends Worker
    implements TestOptDefNamedField {
  TestOptDefNamedFieldWorker(
      {this.arg1 = 0, PlatformWorkerHook? platformWorkerHook})
      : super($TestOptDefNamedFieldActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int arg1;
}

/// Worker pool for TestOptDefNamedField
class TestOptDefNamedFieldWorkerPool
    extends WorkerPool<TestOptDefNamedFieldWorker>
    implements TestOptDefNamedField {
  TestOptDefNamedFieldWorkerPool(
      {this.arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestOptDefNamedFieldWorker(
                arg1: arg1, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final int arg1;
}

/// WorkerService class for TestOptNullDefNamedField
class _$TestOptNullDefNamedFieldWorkerService extends TestOptNullDefNamedField
    implements WorkerService {
  _$TestOptNullDefNamedFieldWorkerService({int? arg1 = 0}) : super(arg1: arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamedField
WorkerService $TestOptNullDefNamedFieldInitializer(
        WorkerRequest startRequest) =>
    _$TestOptNullDefNamedFieldWorkerService(arg1: startRequest.args[0]);

/// Operations map for TestOptNullDefNamedField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptNullDefNamedFieldOperations anymore.')
mixin $TestOptNullDefNamedFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptNullDefNamedField
class TestOptNullDefNamedFieldWorker extends Worker
    implements TestOptNullDefNamedField {
  TestOptNullDefNamedFieldWorker(
      {this.arg1 = 0, PlatformWorkerHook? platformWorkerHook})
      : super($TestOptNullDefNamedFieldActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullDefNamedField
class TestOptNullDefNamedFieldWorkerPool
    extends WorkerPool<TestOptNullDefNamedFieldWorker>
    implements TestOptNullDefNamedField {
  TestOptNullDefNamedFieldWorkerPool(
      {this.arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestOptNullDefNamedFieldWorker(
                arg1: arg1, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  final int? arg1;
}

/// WorkerService class for TestOptNullNamedPrivateField
class _$TestOptNullNamedPrivateFieldWorkerService
    extends TestOptNullNamedPrivateField implements WorkerService {
  _$TestOptNullNamedPrivateFieldWorkerService({int? arg1}) : super(arg1: arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptNullNamedPrivateField
WorkerService $TestOptNullNamedPrivateFieldInitializer(
        WorkerRequest startRequest) =>
    _$TestOptNullNamedPrivateFieldWorkerService(arg1: startRequest.args[0]);

/// Operations map for TestOptNullNamedPrivateField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptNullNamedPrivateFieldOperations anymore.')
mixin $TestOptNullNamedPrivateFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptNullNamedPrivateField
class TestOptNullNamedPrivateFieldWorker extends Worker
    implements TestOptNullNamedPrivateField {
  TestOptNullNamedPrivateFieldWorker(
      {int? arg1, PlatformWorkerHook? platformWorkerHook})
      : super($TestOptNullNamedPrivateFieldActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptNullNamedPrivateField
class TestOptNullNamedPrivateFieldWorkerPool
    extends WorkerPool<TestOptNullNamedPrivateFieldWorker>
    implements TestOptNullNamedPrivateField {
  TestOptNullNamedPrivateFieldWorkerPool(
      {int? arg1,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestOptNullNamedPrivateFieldWorker(
                arg1: arg1, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptDefNamedPrivateField
class _$TestOptDefNamedPrivateFieldWorkerService
    extends TestOptDefNamedPrivateField implements WorkerService {
  _$TestOptDefNamedPrivateFieldWorkerService({int arg1 = 0})
      : super(arg1: arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptDefNamedPrivateField
WorkerService $TestOptDefNamedPrivateFieldInitializer(
        WorkerRequest startRequest) =>
    _$TestOptDefNamedPrivateFieldWorkerService(arg1: startRequest.args[0]);

/// Operations map for TestOptDefNamedPrivateField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptDefNamedPrivateFieldOperations anymore.')
mixin $TestOptDefNamedPrivateFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptDefNamedPrivateField
class TestOptDefNamedPrivateFieldWorker extends Worker
    implements TestOptDefNamedPrivateField {
  TestOptDefNamedPrivateFieldWorker(
      {int arg1 = 0, PlatformWorkerHook? platformWorkerHook})
      : super($TestOptDefNamedPrivateFieldActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptDefNamedPrivateField
class TestOptDefNamedPrivateFieldWorkerPool
    extends WorkerPool<TestOptDefNamedPrivateFieldWorker>
    implements TestOptDefNamedPrivateField {
  TestOptDefNamedPrivateFieldWorkerPool(
      {int arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestOptDefNamedPrivateFieldWorker(
                arg1: arg1, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullDefNamedPrivateField
class _$TestOptNullDefNamedPrivateFieldWorkerService
    extends TestOptNullDefNamedPrivateField implements WorkerService {
  _$TestOptNullDefNamedPrivateFieldWorkerService({int? arg1 = 0})
      : super(arg1: arg1);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamedPrivateField
WorkerService $TestOptNullDefNamedPrivateFieldInitializer(
        WorkerRequest startRequest) =>
    _$TestOptNullDefNamedPrivateFieldWorkerService(arg1: startRequest.args[0]);

/// Operations map for TestOptNullDefNamedPrivateField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptNullDefNamedPrivateFieldOperations anymore.')
mixin $TestOptNullDefNamedPrivateFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptNullDefNamedPrivateField
class TestOptNullDefNamedPrivateFieldWorker extends Worker
    implements TestOptNullDefNamedPrivateField {
  TestOptNullDefNamedPrivateFieldWorker(
      {int? arg1 = 0, PlatformWorkerHook? platformWorkerHook})
      : super($TestOptNullDefNamedPrivateFieldActivator,
            args: [arg1], platformWorkerHook: platformWorkerHook);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptNullDefNamedPrivateField
class TestOptNullDefNamedPrivateFieldWorkerPool
    extends WorkerPool<TestOptNullDefNamedPrivateFieldWorker>
    implements TestOptNullDefNamedPrivateField {
  TestOptNullDefNamedPrivateFieldWorkerPool(
      {int? arg1 = 0,
      ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestOptNullDefNamedPrivateFieldWorker(
                arg1: arg1, platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullDefNamedPrivateNonFinalField
class _$TestOptNullDefNamedPrivateNonFinalFieldWorkerService
    extends TestOptNullDefNamedPrivateNonFinalField implements WorkerService {
  _$TestOptNullDefNamedPrivateNonFinalFieldWorkerService({int? state = 0})
      : super(state: state);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$getStateId: ($) => getState(),
    _$setStateId: ($) => setState($.args[0]),
  });

  static const int _$getStateId = 1;
  static const int _$setStateId = 2;
}

/// Service initializer for TestOptNullDefNamedPrivateNonFinalField
WorkerService $TestOptNullDefNamedPrivateNonFinalFieldInitializer(
        WorkerRequest startRequest) =>
    _$TestOptNullDefNamedPrivateNonFinalFieldWorkerService(
        state: startRequest.args[0]);

/// Operations map for TestOptNullDefNamedPrivateNonFinalField
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestOptNullDefNamedPrivateNonFinalFieldOperations anymore.')
mixin $TestOptNullDefNamedPrivateNonFinalFieldOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestOptNullDefNamedPrivateNonFinalField
class TestOptNullDefNamedPrivateNonFinalFieldWorker extends Worker
    implements TestOptNullDefNamedPrivateNonFinalField {
  TestOptNullDefNamedPrivateNonFinalFieldWorker(
      {int? state = 0, PlatformWorkerHook? platformWorkerHook})
      : super($TestOptNullDefNamedPrivateNonFinalFieldActivator,
            args: [state], platformWorkerHook: platformWorkerHook);

  @override
  Future<int?> getState() =>
      send(_$TestOptNullDefNamedPrivateNonFinalFieldWorkerService._$getStateId,
          args: []);

  @override
  Future<void> setState(int? state) =>
      send(_$TestOptNullDefNamedPrivateNonFinalFieldWorkerService._$setStateId,
          args: [state]);

  @override
  // ignore: unused_element
  int? get _state => throw UnimplementedError();

  @override
  // ignore: unused_element
  set _state(void value) => throw UnimplementedError();
}

/// WorkerService class for TestInstallable
class _$TestInstallableWorkerService extends TestInstallable
    implements WorkerService {
  _$TestInstallableWorkerService(int delay) : super(delay);

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{});
}

/// Service initializer for TestInstallable
WorkerService $TestInstallableInitializer(WorkerRequest startRequest) =>
    _$TestInstallableWorkerService(startRequest.args[0]);

/// Operations map for TestInstallable
@Deprecated(
    'squadron_builder now supports "plain old Dart objects" as services. '
    'Services do not need to derive from WorkerService nor do they need to mix in '
    'with \$TestInstallableOperations anymore.')
mixin $TestInstallableOperations on WorkerService {
  @override
  // not needed anymore, generated for compatibility with previous versions of squadron_builder
  Map<int, CommandHandler> get operations => WorkerService.noOperations;
}

/// Worker for TestInstallable
class TestInstallableWorker extends Worker implements TestInstallable {
  TestInstallableWorker(int delay, {PlatformWorkerHook? platformWorkerHook})
      : super($TestInstallableActivator,
            args: [delay], platformWorkerHook: platformWorkerHook);

  @override
  FutureOr<void> install() => throw UnimplementedError();

  @override
  FutureOr<void> uninstall() => throw UnimplementedError();

  @override
  // ignore: unused_element
  int get _delay => throw UnimplementedError();
}

/// Worker pool for TestInstallable
class TestInstallableWorkerPool extends WorkerPool<TestInstallableWorker>
    implements TestInstallable {
  TestInstallableWorkerPool(int delay,
      {ConcurrencySettings? concurrencySettings,
      PlatformWorkerHook? platformWorkerHook})
      : super(
            () => TestInstallableWorker(delay,
                platformWorkerHook: platformWorkerHook),
            concurrencySettings: concurrencySettings);

  @override
  FutureOr<void> install() => throw UnimplementedError();

  @override
  FutureOr<void> uninstall() => throw UnimplementedError();

  @override
  // ignore: unused_element
  int get _delay => throw UnimplementedError();
}
