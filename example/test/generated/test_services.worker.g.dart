// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../test_services.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for TestParameterLess
class _$TestParameterLessWorkerService extends TestParameterLess
    implements sq.WorkerService {
  _$TestParameterLessWorkerService() : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestParameterLess
sq.WorkerService $TestParameterLessInitializer(sq.WorkerRequest $in) =>
    _$TestParameterLessWorkerService();

/// Worker for TestParameterLess
class TestParameterLessWorker extends sq.Worker implements TestParameterLess {
  TestParameterLessWorker({sq.PlatformThreadHook? threadHook})
      : super($TestParameterLessActivator, threadHook: threadHook);
}

/// Worker pool for TestParameterLess
class TestParameterLessWorkerPool extends sq.WorkerPool<TestParameterLessWorker>
    implements TestParameterLess {
  TestParameterLessWorkerPool(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(() => TestParameterLessWorker(threadHook: threadHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestReqPositional
class _$TestReqPositionalWorkerService extends TestReqPositional
    implements sq.WorkerService {
  _$TestReqPositionalWorkerService(super.arg1) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestReqPositional
sq.WorkerService $TestReqPositionalInitializer(sq.WorkerRequest $in) =>
    _$TestReqPositionalWorkerService(sq.Cast.toInt($in.args[0]));

/// Worker for TestReqPositional
class TestReqPositionalWorker extends sq.Worker implements TestReqPositional {
  TestReqPositionalWorker(int arg1, {sq.PlatformThreadHook? threadHook})
      : super($TestReqPositionalActivator,
            args: [arg1], threadHook: threadHook);
}

/// Worker pool for TestReqPositional
class TestReqPositionalWorkerPool extends sq.WorkerPool<TestReqPositionalWorker>
    implements TestReqPositional {
  TestReqPositionalWorkerPool(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(() => TestReqPositionalWorker(arg1, threadHook: threadHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestOptNullPositional
class _$TestOptNullPositionalWorkerService extends TestOptNullPositional
    implements sq.WorkerService {
  _$TestOptNullPositionalWorkerService([super.arg1]) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullPositional
sq.WorkerService $TestOptNullPositionalInitializer(sq.WorkerRequest $in) =>
    _$TestOptNullPositionalWorkerService(sq.Cast.toNullableInt($in.args[0]));

/// Worker for TestOptNullPositional
class TestOptNullPositionalWorker extends sq.Worker
    implements TestOptNullPositional {
  TestOptNullPositionalWorker([int? arg1, sq.PlatformThreadHook? threadHook])
      : super($TestOptNullPositionalActivator,
            args: [arg1], threadHook: threadHook);
}

/// Worker pool for TestOptNullPositional
class TestOptNullPositionalWorkerPool extends sq
    .WorkerPool<TestOptNullPositionalWorker> implements TestOptNullPositional {
  TestOptNullPositionalWorkerPool(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook])
      : super(() => TestOptNullPositionalWorker(arg1, threadHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestOptDefPositional
class _$TestOptDefPositionalWorkerService extends TestOptDefPositional
    implements sq.WorkerService {
  _$TestOptDefPositionalWorkerService([super.arg1]) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefPositional
sq.WorkerService $TestOptDefPositionalInitializer(sq.WorkerRequest $in) =>
    _$TestOptDefPositionalWorkerService(sq.Cast.toInt($in.args[0]));

/// Worker for TestOptDefPositional
class TestOptDefPositionalWorker extends sq.Worker
    implements TestOptDefPositional {
  TestOptDefPositionalWorker([int arg1 = 0, sq.PlatformThreadHook? threadHook])
      : super($TestOptDefPositionalActivator,
            args: [arg1], threadHook: threadHook);
}

/// Worker pool for TestOptDefPositional
class TestOptDefPositionalWorkerPool extends sq
    .WorkerPool<TestOptDefPositionalWorker> implements TestOptDefPositional {
  TestOptDefPositionalWorkerPool(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook])
      : super(() => TestOptDefPositionalWorker(arg1, threadHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestOptNullDefPositional
class _$TestOptNullDefPositionalWorkerService extends TestOptNullDefPositional
    implements sq.WorkerService {
  _$TestOptNullDefPositionalWorkerService([super.arg1]) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositional
sq.WorkerService $TestOptNullDefPositionalInitializer(sq.WorkerRequest $in) =>
    _$TestOptNullDefPositionalWorkerService(sq.Cast.toNullableInt($in.args[0]));

/// Worker for TestOptNullDefPositional
class TestOptNullDefPositionalWorker extends sq.Worker
    implements TestOptNullDefPositional {
  TestOptNullDefPositionalWorker(
      [int? arg1 = 0, sq.PlatformThreadHook? threadHook])
      : super($TestOptNullDefPositionalActivator,
            args: [arg1], threadHook: threadHook);
}

/// Worker pool for TestOptNullDefPositional
class TestOptNullDefPositionalWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalWorker>
    implements TestOptNullDefPositional {
  TestOptNullDefPositionalWorkerPool(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook])
      : super(() => TestOptNullDefPositionalWorker(arg1, threadHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestReqPositionalField
class _$TestReqPositionalFieldWorkerService extends TestReqPositionalField
    implements sq.WorkerService {
  _$TestReqPositionalFieldWorkerService(super.arg1) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestReqPositionalField
sq.WorkerService $TestReqPositionalFieldInitializer(sq.WorkerRequest $in) =>
    _$TestReqPositionalFieldWorkerService(sq.Cast.toInt($in.args[0]));

/// Worker for TestReqPositionalField
class TestReqPositionalFieldWorker extends sq.Worker
    implements TestReqPositionalField {
  TestReqPositionalFieldWorker(this.arg1, {sq.PlatformThreadHook? threadHook})
      : super($TestReqPositionalFieldActivator,
            args: [arg1], threadHook: threadHook);

  @override
  final int arg1;
}

/// Worker pool for TestReqPositionalField
class TestReqPositionalFieldWorkerPool
    extends sq.WorkerPool<TestReqPositionalFieldWorker>
    implements TestReqPositionalField {
  TestReqPositionalFieldWorkerPool(this.arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(() => TestReqPositionalFieldWorker(arg1, threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  final int arg1;
}

/// WorkerService class for TestOptNullPositionalField
class _$TestOptNullPositionalFieldWorkerService
    extends TestOptNullPositionalField implements sq.WorkerService {
  _$TestOptNullPositionalFieldWorkerService([super.arg1]) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullPositionalField
sq.WorkerService $TestOptNullPositionalFieldInitializer(sq.WorkerRequest $in) =>
    _$TestOptNullPositionalFieldWorkerService(
        sq.Cast.toNullableInt($in.args[0]));

/// Worker for TestOptNullPositionalField
class TestOptNullPositionalFieldWorker extends sq.Worker
    implements TestOptNullPositionalField {
  TestOptNullPositionalFieldWorker(
      [this.arg1, sq.PlatformThreadHook? threadHook])
      : super($TestOptNullPositionalFieldActivator,
            args: [arg1], threadHook: threadHook);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullPositionalField
class TestOptNullPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptNullPositionalFieldWorker>
    implements TestOptNullPositionalField {
  TestOptNullPositionalFieldWorkerPool(
      [this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook])
      : super(() => TestOptNullPositionalFieldWorker(arg1, threadHook),
            concurrencySettings: concurrencySettings);

  @override
  final int? arg1;
}

/// WorkerService class for TestOptDefPositionalField
class _$TestOptDefPositionalFieldWorkerService extends TestOptDefPositionalField
    implements sq.WorkerService {
  _$TestOptDefPositionalFieldWorkerService([super.arg1]) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefPositionalField
sq.WorkerService $TestOptDefPositionalFieldInitializer(sq.WorkerRequest $in) =>
    _$TestOptDefPositionalFieldWorkerService(sq.Cast.toInt($in.args[0]));

/// Worker for TestOptDefPositionalField
class TestOptDefPositionalFieldWorker extends sq.Worker
    implements TestOptDefPositionalField {
  TestOptDefPositionalFieldWorker(
      [this.arg1 = 0, sq.PlatformThreadHook? threadHook])
      : super($TestOptDefPositionalFieldActivator,
            args: [arg1], threadHook: threadHook);

  @override
  final int arg1;
}

/// Worker pool for TestOptDefPositionalField
class TestOptDefPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptDefPositionalFieldWorker>
    implements TestOptDefPositionalField {
  TestOptDefPositionalFieldWorkerPool(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook])
      : super(() => TestOptDefPositionalFieldWorker(arg1, threadHook),
            concurrencySettings: concurrencySettings);

  @override
  final int arg1;
}

/// WorkerService class for TestOptNullDefPositionalField
class _$TestOptNullDefPositionalFieldWorkerService
    extends TestOptNullDefPositionalField implements sq.WorkerService {
  _$TestOptNullDefPositionalFieldWorkerService([super.arg1]) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositionalField
sq.WorkerService $TestOptNullDefPositionalFieldInitializer(
        sq.WorkerRequest $in) =>
    _$TestOptNullDefPositionalFieldWorkerService(
        sq.Cast.toNullableInt($in.args[0]));

/// Worker for TestOptNullDefPositionalField
class TestOptNullDefPositionalFieldWorker extends sq.Worker
    implements TestOptNullDefPositionalField {
  TestOptNullDefPositionalFieldWorker(
      [this.arg1 = 0, sq.PlatformThreadHook? threadHook])
      : super($TestOptNullDefPositionalFieldActivator,
            args: [arg1], threadHook: threadHook);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullDefPositionalField
class TestOptNullDefPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalFieldWorker>
    implements TestOptNullDefPositionalField {
  TestOptNullDefPositionalFieldWorkerPool(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook])
      : super(() => TestOptNullDefPositionalFieldWorker(arg1, threadHook),
            concurrencySettings: concurrencySettings);

  @override
  final int? arg1;
}

/// WorkerService class for TestReqPositionalPrivateField
class _$TestReqPositionalPrivateFieldWorkerService
    extends TestReqPositionalPrivateField implements sq.WorkerService {
  _$TestReqPositionalPrivateFieldWorkerService(super.arg1) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestReqPositionalPrivateField
sq.WorkerService $TestReqPositionalPrivateFieldInitializer(
        sq.WorkerRequest $in) =>
    _$TestReqPositionalPrivateFieldWorkerService(sq.Cast.toInt($in.args[0]));

/// Worker for TestReqPositionalPrivateField
class TestReqPositionalPrivateFieldWorker extends sq.Worker
    implements TestReqPositionalPrivateField {
  TestReqPositionalPrivateFieldWorker(int arg1,
      {sq.PlatformThreadHook? threadHook})
      : super($TestReqPositionalPrivateFieldActivator,
            args: [arg1], threadHook: threadHook);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestReqPositionalPrivateField
class TestReqPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestReqPositionalPrivateFieldWorker>
    implements TestReqPositionalPrivateField {
  TestReqPositionalPrivateFieldWorkerPool(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(
            () => TestReqPositionalPrivateFieldWorker(arg1,
                threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullPositionalPrivateField
class _$TestOptNullPositionalPrivateFieldWorkerService
    extends TestOptNullPositionalPrivateField implements sq.WorkerService {
  _$TestOptNullPositionalPrivateFieldWorkerService([super.arg1]) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullPositionalPrivateField
sq.WorkerService $TestOptNullPositionalPrivateFieldInitializer(
        sq.WorkerRequest $in) =>
    _$TestOptNullPositionalPrivateFieldWorkerService(
        sq.Cast.toNullableInt($in.args[0]));

/// Worker for TestOptNullPositionalPrivateField
class TestOptNullPositionalPrivateFieldWorker extends sq.Worker
    implements TestOptNullPositionalPrivateField {
  TestOptNullPositionalPrivateFieldWorker(
      [int? arg1, sq.PlatformThreadHook? threadHook])
      : super($TestOptNullPositionalPrivateFieldActivator,
            args: [arg1], threadHook: threadHook);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptNullPositionalPrivateField
class TestOptNullPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullPositionalPrivateFieldWorker>
    implements TestOptNullPositionalPrivateField {
  TestOptNullPositionalPrivateFieldWorkerPool(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook])
      : super(() => TestOptNullPositionalPrivateFieldWorker(arg1, threadHook),
            concurrencySettings: concurrencySettings);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptDefPositionalPrivateField
class _$TestOptDefPositionalPrivateFieldWorkerService
    extends TestOptDefPositionalPrivateField implements sq.WorkerService {
  _$TestOptDefPositionalPrivateFieldWorkerService([super.arg1]) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefPositionalPrivateField
sq.WorkerService $TestOptDefPositionalPrivateFieldInitializer(
        sq.WorkerRequest $in) =>
    _$TestOptDefPositionalPrivateFieldWorkerService(sq.Cast.toInt($in.args[0]));

/// Worker for TestOptDefPositionalPrivateField
class TestOptDefPositionalPrivateFieldWorker extends sq.Worker
    implements TestOptDefPositionalPrivateField {
  TestOptDefPositionalPrivateFieldWorker(
      [int arg1 = 0, sq.PlatformThreadHook? threadHook])
      : super($TestOptDefPositionalPrivateFieldActivator,
            args: [arg1], threadHook: threadHook);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptDefPositionalPrivateField
class TestOptDefPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptDefPositionalPrivateFieldWorker>
    implements TestOptDefPositionalPrivateField {
  TestOptDefPositionalPrivateFieldWorkerPool(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook])
      : super(() => TestOptDefPositionalPrivateFieldWorker(arg1, threadHook),
            concurrencySettings: concurrencySettings);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullDefPositionalPrivateField
class _$TestOptNullDefPositionalPrivateFieldWorkerService
    extends TestOptNullDefPositionalPrivateField implements sq.WorkerService {
  _$TestOptNullDefPositionalPrivateFieldWorkerService([super.arg1]) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositionalPrivateField
sq.WorkerService $TestOptNullDefPositionalPrivateFieldInitializer(
        sq.WorkerRequest $in) =>
    _$TestOptNullDefPositionalPrivateFieldWorkerService(
        sq.Cast.toNullableInt($in.args[0]));

/// Worker for TestOptNullDefPositionalPrivateField
class TestOptNullDefPositionalPrivateFieldWorker extends sq.Worker
    implements TestOptNullDefPositionalPrivateField {
  TestOptNullDefPositionalPrivateFieldWorker(
      [int? arg1 = 0, sq.PlatformThreadHook? threadHook])
      : super($TestOptNullDefPositionalPrivateFieldActivator,
            args: [arg1], threadHook: threadHook);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptNullDefPositionalPrivateField
class TestOptNullDefPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalPrivateFieldWorker>
    implements TestOptNullDefPositionalPrivateField {
  TestOptNullDefPositionalPrivateFieldWorkerPool(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook])
      : super(
            () => TestOptNullDefPositionalPrivateFieldWorker(arg1, threadHook),
            concurrencySettings: concurrencySettings);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullNamed
class _$TestOptNullNamedWorkerService extends TestOptNullNamed
    implements sq.WorkerService {
  _$TestOptNullNamedWorkerService({super.arg1}) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullNamed
sq.WorkerService $TestOptNullNamedInitializer(sq.WorkerRequest $in) =>
    _$TestOptNullNamedWorkerService(arg1: sq.Cast.toNullableInt($in.args[0]));

/// Worker for TestOptNullNamed
class TestOptNullNamedWorker extends sq.Worker implements TestOptNullNamed {
  TestOptNullNamedWorker({int? arg1, sq.PlatformThreadHook? threadHook})
      : super($TestOptNullNamedActivator, args: [arg1], threadHook: threadHook);
}

/// Worker pool for TestOptNullNamed
class TestOptNullNamedWorkerPool extends sq.WorkerPool<TestOptNullNamedWorker>
    implements TestOptNullNamed {
  TestOptNullNamedWorkerPool(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(() => TestOptNullNamedWorker(arg1: arg1, threadHook: threadHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestOptDefNamed
class _$TestOptDefNamedWorkerService extends TestOptDefNamed
    implements sq.WorkerService {
  _$TestOptDefNamedWorkerService({super.arg1}) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefNamed
sq.WorkerService $TestOptDefNamedInitializer(sq.WorkerRequest $in) =>
    _$TestOptDefNamedWorkerService(arg1: sq.Cast.toInt($in.args[0]));

/// Worker for TestOptDefNamed
class TestOptDefNamedWorker extends sq.Worker implements TestOptDefNamed {
  TestOptDefNamedWorker({int arg1 = 0, sq.PlatformThreadHook? threadHook})
      : super($TestOptDefNamedActivator, args: [arg1], threadHook: threadHook);
}

/// Worker pool for TestOptDefNamed
class TestOptDefNamedWorkerPool extends sq.WorkerPool<TestOptDefNamedWorker>
    implements TestOptDefNamed {
  TestOptDefNamedWorkerPool(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(() => TestOptDefNamedWorker(arg1: arg1, threadHook: threadHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestOptNullDefNamed
class _$TestOptNullDefNamedWorkerService extends TestOptNullDefNamed
    implements sq.WorkerService {
  _$TestOptNullDefNamedWorkerService({super.arg1}) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamed
sq.WorkerService $TestOptNullDefNamedInitializer(sq.WorkerRequest $in) =>
    _$TestOptNullDefNamedWorkerService(
        arg1: sq.Cast.toNullableInt($in.args[0]));

/// Worker for TestOptNullDefNamed
class TestOptNullDefNamedWorker extends sq.Worker
    implements TestOptNullDefNamed {
  TestOptNullDefNamedWorker({int? arg1 = 0, sq.PlatformThreadHook? threadHook})
      : super($TestOptNullDefNamedActivator,
            args: [arg1], threadHook: threadHook);
}

/// Worker pool for TestOptNullDefNamed
class TestOptNullDefNamedWorkerPool extends sq
    .WorkerPool<TestOptNullDefNamedWorker> implements TestOptNullDefNamed {
  TestOptNullDefNamedWorkerPool(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(
            () => TestOptNullDefNamedWorker(arg1: arg1, threadHook: threadHook),
            concurrencySettings: concurrencySettings);
}

/// WorkerService class for TestOptNullNamedField
class _$TestOptNullNamedFieldWorkerService extends TestOptNullNamedField
    implements sq.WorkerService {
  _$TestOptNullNamedFieldWorkerService({super.arg1}) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullNamedField
sq.WorkerService $TestOptNullNamedFieldInitializer(sq.WorkerRequest $in) =>
    _$TestOptNullNamedFieldWorkerService(
        arg1: sq.Cast.toNullableInt($in.args[0]));

/// Worker for TestOptNullNamedField
class TestOptNullNamedFieldWorker extends sq.Worker
    implements TestOptNullNamedField {
  TestOptNullNamedFieldWorker({this.arg1, sq.PlatformThreadHook? threadHook})
      : super($TestOptNullNamedFieldActivator,
            args: [arg1], threadHook: threadHook);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullNamedField
class TestOptNullNamedFieldWorkerPool extends sq
    .WorkerPool<TestOptNullNamedFieldWorker> implements TestOptNullNamedField {
  TestOptNullNamedFieldWorkerPool(
      {this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(
            () =>
                TestOptNullNamedFieldWorker(arg1: arg1, threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  final int? arg1;
}

/// WorkerService class for TestOptDefNamedField
class _$TestOptDefNamedFieldWorkerService extends TestOptDefNamedField
    implements sq.WorkerService {
  _$TestOptDefNamedFieldWorkerService({super.arg1}) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefNamedField
sq.WorkerService $TestOptDefNamedFieldInitializer(sq.WorkerRequest $in) =>
    _$TestOptDefNamedFieldWorkerService(arg1: sq.Cast.toInt($in.args[0]));

/// Worker for TestOptDefNamedField
class TestOptDefNamedFieldWorker extends sq.Worker
    implements TestOptDefNamedField {
  TestOptDefNamedFieldWorker({this.arg1 = 0, sq.PlatformThreadHook? threadHook})
      : super($TestOptDefNamedFieldActivator,
            args: [arg1], threadHook: threadHook);

  @override
  final int arg1;
}

/// Worker pool for TestOptDefNamedField
class TestOptDefNamedFieldWorkerPool extends sq
    .WorkerPool<TestOptDefNamedFieldWorker> implements TestOptDefNamedField {
  TestOptDefNamedFieldWorkerPool(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(
            () =>
                TestOptDefNamedFieldWorker(arg1: arg1, threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  final int arg1;
}

/// WorkerService class for TestOptNullDefNamedField
class _$TestOptNullDefNamedFieldWorkerService extends TestOptNullDefNamedField
    implements sq.WorkerService {
  _$TestOptNullDefNamedFieldWorkerService({super.arg1}) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamedField
sq.WorkerService $TestOptNullDefNamedFieldInitializer(sq.WorkerRequest $in) =>
    _$TestOptNullDefNamedFieldWorkerService(
        arg1: sq.Cast.toNullableInt($in.args[0]));

/// Worker for TestOptNullDefNamedField
class TestOptNullDefNamedFieldWorker extends sq.Worker
    implements TestOptNullDefNamedField {
  TestOptNullDefNamedFieldWorker(
      {this.arg1 = 0, sq.PlatformThreadHook? threadHook})
      : super($TestOptNullDefNamedFieldActivator,
            args: [arg1], threadHook: threadHook);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullDefNamedField
class TestOptNullDefNamedFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedFieldWorker>
    implements TestOptNullDefNamedField {
  TestOptNullDefNamedFieldWorkerPool(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(
            () => TestOptNullDefNamedFieldWorker(
                arg1: arg1, threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  final int? arg1;
}

/// WorkerService class for TestOptNullNamedPrivateField
class _$TestOptNullNamedPrivateFieldWorkerService
    extends TestOptNullNamedPrivateField implements sq.WorkerService {
  _$TestOptNullNamedPrivateFieldWorkerService({super.arg1}) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullNamedPrivateField
sq.WorkerService $TestOptNullNamedPrivateFieldInitializer(
        sq.WorkerRequest $in) =>
    _$TestOptNullNamedPrivateFieldWorkerService(
        arg1: sq.Cast.toNullableInt($in.args[0]));

/// Worker for TestOptNullNamedPrivateField
class TestOptNullNamedPrivateFieldWorker extends sq.Worker
    implements TestOptNullNamedPrivateField {
  TestOptNullNamedPrivateFieldWorker(
      {int? arg1, sq.PlatformThreadHook? threadHook})
      : super($TestOptNullNamedPrivateFieldActivator,
            args: [arg1], threadHook: threadHook);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptNullNamedPrivateField
class TestOptNullNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullNamedPrivateFieldWorker>
    implements TestOptNullNamedPrivateField {
  TestOptNullNamedPrivateFieldWorkerPool(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(
            () => TestOptNullNamedPrivateFieldWorker(
                arg1: arg1, threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptDefNamedPrivateField
class _$TestOptDefNamedPrivateFieldWorkerService
    extends TestOptDefNamedPrivateField implements sq.WorkerService {
  _$TestOptDefNamedPrivateFieldWorkerService({super.arg1}) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefNamedPrivateField
sq.WorkerService $TestOptDefNamedPrivateFieldInitializer(
        sq.WorkerRequest $in) =>
    _$TestOptDefNamedPrivateFieldWorkerService(
        arg1: sq.Cast.toInt($in.args[0]));

/// Worker for TestOptDefNamedPrivateField
class TestOptDefNamedPrivateFieldWorker extends sq.Worker
    implements TestOptDefNamedPrivateField {
  TestOptDefNamedPrivateFieldWorker(
      {int arg1 = 0, sq.PlatformThreadHook? threadHook})
      : super($TestOptDefNamedPrivateFieldActivator,
            args: [arg1], threadHook: threadHook);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptDefNamedPrivateField
class TestOptDefNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptDefNamedPrivateFieldWorker>
    implements TestOptDefNamedPrivateField {
  TestOptDefNamedPrivateFieldWorkerPool(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(
            () => TestOptDefNamedPrivateFieldWorker(
                arg1: arg1, threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullDefNamedPrivateField
class _$TestOptNullDefNamedPrivateFieldWorkerService
    extends TestOptNullDefNamedPrivateField implements sq.WorkerService {
  _$TestOptNullDefNamedPrivateFieldWorkerService({super.arg1}) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamedPrivateField
sq.WorkerService $TestOptNullDefNamedPrivateFieldInitializer(
        sq.WorkerRequest $in) =>
    _$TestOptNullDefNamedPrivateFieldWorkerService(
        arg1: sq.Cast.toNullableInt($in.args[0]));

/// Worker for TestOptNullDefNamedPrivateField
class TestOptNullDefNamedPrivateFieldWorker extends sq.Worker
    implements TestOptNullDefNamedPrivateField {
  TestOptNullDefNamedPrivateFieldWorker(
      {int? arg1 = 0, sq.PlatformThreadHook? threadHook})
      : super($TestOptNullDefNamedPrivateFieldActivator,
            args: [arg1], threadHook: threadHook);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptNullDefNamedPrivateField
class TestOptNullDefNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedPrivateFieldWorker>
    implements TestOptNullDefNamedPrivateField {
  TestOptNullDefNamedPrivateFieldWorkerPool(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(
            () => TestOptNullDefNamedPrivateFieldWorker(
                arg1: arg1, threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestPrefixedImportType
class _$TestPrefixedImportTypeWorkerService extends TestPrefixedImportType
    implements sq.WorkerService {
  _$TestPrefixedImportTypeWorkerService(super.typedData) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$getTypedDataId: ($in) => getTypedData(),
  });

  static const int _$getTypedDataId = 1;
}

/// Service initializer for TestPrefixedImportType
sq.WorkerService $TestPrefixedImportTypeInitializer(sq.WorkerRequest $in) =>
    _$TestPrefixedImportTypeWorkerService($in.args[0] as typed_data.Int8List);

/// Worker for TestPrefixedImportType
class TestPrefixedImportTypeWorker extends sq.Worker
    implements TestPrefixedImportType {
  TestPrefixedImportTypeWorker(this.typedData,
      {sq.PlatformThreadHook? threadHook})
      : super($TestPrefixedImportTypeActivator,
            args: [typedData], threadHook: threadHook);

  @override
  final typed_data.Int8List typedData;

  @override
  Future<typed_data.Int8List?> getTypedData() =>
      send(_$TestPrefixedImportTypeWorkerService._$getTypedDataId, args: []);
}

/// Worker pool for TestPrefixedImportType
class TestPrefixedImportTypeWorkerPool
    extends sq.WorkerPool<TestPrefixedImportTypeWorker>
    implements TestPrefixedImportType {
  TestPrefixedImportTypeWorkerPool(this.typedData,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(
            () =>
                TestPrefixedImportTypeWorker(typedData, threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  final typed_data.Int8List typedData;

  @override
  Future<typed_data.Int8List?> getTypedData() =>
      execute((w) => w.getTypedData());
}

/// WorkerService class for TestOptNullDefNamedPrivateNonFinalField
class _$TestOptNullDefNamedPrivateNonFinalFieldWorkerService
    extends TestOptNullDefNamedPrivateNonFinalField
    implements sq.WorkerService {
  _$TestOptNullDefNamedPrivateNonFinalFieldWorkerService({super.state})
      : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$getStateId: ($in) => getState(),
    _$setStateId: ($in) => setState(sq.Cast.toNullableInt($in.args[0])),
  });

  static const int _$getStateId = 1;
  static const int _$setStateId = 2;
}

/// Service initializer for TestOptNullDefNamedPrivateNonFinalField
sq.WorkerService $TestOptNullDefNamedPrivateNonFinalFieldInitializer(
        sq.WorkerRequest $in) =>
    _$TestOptNullDefNamedPrivateNonFinalFieldWorkerService(
        state: sq.Cast.toNullableInt($in.args[0]));

/// Worker for TestOptNullDefNamedPrivateNonFinalField
class TestOptNullDefNamedPrivateNonFinalFieldWorker extends sq.Worker
    implements TestOptNullDefNamedPrivateNonFinalField {
  TestOptNullDefNamedPrivateNonFinalFieldWorker(
      {int? state = 0, sq.PlatformThreadHook? threadHook})
      : super($TestOptNullDefNamedPrivateNonFinalFieldActivator,
            args: [state], threadHook: threadHook);

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
    implements sq.WorkerService {
  _$TestInstallableWorkerService(super.delay) : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestInstallable
sq.WorkerService $TestInstallableInitializer(sq.WorkerRequest $in) =>
    _$TestInstallableWorkerService(sq.Cast.toInt($in.args[0]));

/// Worker for TestInstallable
class TestInstallableWorker extends sq.Worker implements TestInstallable {
  TestInstallableWorker(int delay, {sq.PlatformThreadHook? threadHook})
      : super($TestInstallableActivator, args: [delay], threadHook: threadHook);

  @override
  FutureOr<void> install() => throw UnimplementedError();

  @override
  FutureOr<void> uninstall() => throw UnimplementedError();

  @override
  // ignore: unused_element
  int get _delay => throw UnimplementedError();
}

/// Worker pool for TestInstallable
class TestInstallableWorkerPool extends sq.WorkerPool<TestInstallableWorker>
    implements TestInstallable {
  TestInstallableWorkerPool(int delay,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(() => TestInstallableWorker(delay, threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  FutureOr<void> install() => throw UnimplementedError();

  @override
  FutureOr<void> uninstall() => throw UnimplementedError();

  @override
  // ignore: unused_element
  int get _delay => throw UnimplementedError();
}

/// WorkerService class for TestRecordTypes
class _$TestRecordTypesWorkerService extends TestRecordTypes
    implements sq.WorkerService {
  _$TestRecordTypesWorkerService() : super();

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$bothId: ($in) async {
      final $out = await both();
      return [$out.$1, $out.items];
    },
    _$namedId: ($in) async {
      final $out = await named();
      return [$out.count, $out.items];
    },
    _$unnamedId: ($in) async {
      final $out = await unnamed();
      return [$out.$1, $out.$2];
    },
  });

  static const int _$bothId = 1;
  static const int _$namedId = 2;
  static const int _$unnamedId = 3;
}

/// Service initializer for TestRecordTypes
sq.WorkerService $TestRecordTypesInitializer(sq.WorkerRequest $in) =>
    _$TestRecordTypesWorkerService();

/// Worker for TestRecordTypes
class TestRecordTypesWorker extends sq.Worker implements TestRecordTypes {
  TestRecordTypesWorker({sq.PlatformThreadHook? threadHook})
      : super($TestRecordTypesActivator, threadHook: threadHook);

  @override
  Future<(int, {List<dynamic> items})> both() =>
      send(_$TestRecordTypesWorkerService._$bothId, args: [])
          .then(($x) => (sq.Cast.toInt($x[0]), items: $x[1] as List<dynamic>));

  @override
  Future<({int count, List<dynamic> items})> named() =>
      send(_$TestRecordTypesWorkerService._$namedId, args: []).then(
          ($x) => (count: sq.Cast.toInt($x[0]), items: $x[1] as List<dynamic>));

  @override
  Future<(int, List<dynamic>)> unnamed() =>
      send(_$TestRecordTypesWorkerService._$unnamedId, args: [])
          .then(($x) => (sq.Cast.toInt($x[0]), $x[1] as List<dynamic>));
}

/// Worker pool for TestRecordTypes
class TestRecordTypesWorkerPool extends sq.WorkerPool<TestRecordTypesWorker>
    implements TestRecordTypes {
  TestRecordTypesWorkerPool(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook})
      : super(() => TestRecordTypesWorker(threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<(int, {List<dynamic> items})> both() => execute((w) => w.both());

  @override
  Future<({int count, List<dynamic> items})> named() =>
      execute((w) => w.named());

  @override
  Future<(int, List<dynamic>)> unnamed() => execute((w) => w.unnamed());
}
