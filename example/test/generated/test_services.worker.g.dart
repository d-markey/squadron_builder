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
sq.WorkerService $TestParameterLessInitializer(sq.WorkerRequest startRequest) =>
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
  _$TestReqPositionalWorkerService(int arg1) : super(arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestReqPositional
sq.WorkerService $TestReqPositionalInitializer(sq.WorkerRequest startRequest) =>
    _$TestReqPositionalWorkerService(startRequest.args[0]);

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
  _$TestOptNullPositionalWorkerService([int? arg1]) : super(arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullPositional
sq.WorkerService $TestOptNullPositionalInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptNullPositionalWorkerService(startRequest.args[0]);

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
  _$TestOptDefPositionalWorkerService([int arg1 = 0]) : super(arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefPositional
sq.WorkerService $TestOptDefPositionalInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptDefPositionalWorkerService(startRequest.args[0]);

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
  _$TestOptNullDefPositionalWorkerService([int? arg1 = 0]) : super(arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositional
sq.WorkerService $TestOptNullDefPositionalInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptNullDefPositionalWorkerService(startRequest.args[0]);

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
  _$TestReqPositionalFieldWorkerService(int arg1) : super(arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestReqPositionalField
sq.WorkerService $TestReqPositionalFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestReqPositionalFieldWorkerService(startRequest.args[0]);

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
  _$TestOptNullPositionalFieldWorkerService([int? arg1]) : super(arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullPositionalField
sq.WorkerService $TestOptNullPositionalFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptNullPositionalFieldWorkerService(startRequest.args[0]);

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
  _$TestOptDefPositionalFieldWorkerService([int arg1 = 0]) : super(arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefPositionalField
sq.WorkerService $TestOptDefPositionalFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptDefPositionalFieldWorkerService(startRequest.args[0]);

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
  _$TestOptNullDefPositionalFieldWorkerService([int? arg1 = 0]) : super(arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositionalField
sq.WorkerService $TestOptNullDefPositionalFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptNullDefPositionalFieldWorkerService(startRequest.args[0]);

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
  _$TestReqPositionalPrivateFieldWorkerService(int arg1) : super(arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestReqPositionalPrivateField
sq.WorkerService $TestReqPositionalPrivateFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestReqPositionalPrivateFieldWorkerService(startRequest.args[0]);

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
  _$TestOptNullPositionalPrivateFieldWorkerService([int? arg1]) : super(arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullPositionalPrivateField
sq.WorkerService $TestOptNullPositionalPrivateFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptNullPositionalPrivateFieldWorkerService(startRequest.args[0]);

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
  _$TestOptDefPositionalPrivateFieldWorkerService([int arg1 = 0]) : super(arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefPositionalPrivateField
sq.WorkerService $TestOptDefPositionalPrivateFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptDefPositionalPrivateFieldWorkerService(startRequest.args[0]);

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
  _$TestOptNullDefPositionalPrivateFieldWorkerService([int? arg1 = 0])
      : super(arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositionalPrivateField
sq.WorkerService $TestOptNullDefPositionalPrivateFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptNullDefPositionalPrivateFieldWorkerService(startRequest.args[0]);

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
  _$TestOptNullNamedWorkerService({int? arg1}) : super(arg1: arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullNamed
sq.WorkerService $TestOptNullNamedInitializer(sq.WorkerRequest startRequest) =>
    _$TestOptNullNamedWorkerService(arg1: startRequest.args[0]);

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
  _$TestOptDefNamedWorkerService({int arg1 = 0}) : super(arg1: arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefNamed
sq.WorkerService $TestOptDefNamedInitializer(sq.WorkerRequest startRequest) =>
    _$TestOptDefNamedWorkerService(arg1: startRequest.args[0]);

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
  _$TestOptNullDefNamedWorkerService({int? arg1 = 0}) : super(arg1: arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamed
sq.WorkerService $TestOptNullDefNamedInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptNullDefNamedWorkerService(arg1: startRequest.args[0]);

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
  _$TestOptNullNamedFieldWorkerService({int? arg1}) : super(arg1: arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullNamedField
sq.WorkerService $TestOptNullNamedFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptNullNamedFieldWorkerService(arg1: startRequest.args[0]);

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
  _$TestOptDefNamedFieldWorkerService({int arg1 = 0}) : super(arg1: arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefNamedField
sq.WorkerService $TestOptDefNamedFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptDefNamedFieldWorkerService(arg1: startRequest.args[0]);

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
  _$TestOptNullDefNamedFieldWorkerService({int? arg1 = 0}) : super(arg1: arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamedField
sq.WorkerService $TestOptNullDefNamedFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptNullDefNamedFieldWorkerService(arg1: startRequest.args[0]);

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
  _$TestOptNullNamedPrivateFieldWorkerService({int? arg1}) : super(arg1: arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullNamedPrivateField
sq.WorkerService $TestOptNullNamedPrivateFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptNullNamedPrivateFieldWorkerService(arg1: startRequest.args[0]);

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
  _$TestOptDefNamedPrivateFieldWorkerService({int arg1 = 0})
      : super(arg1: arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefNamedPrivateField
sq.WorkerService $TestOptDefNamedPrivateFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptDefNamedPrivateFieldWorkerService(arg1: startRequest.args[0]);

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
  _$TestOptNullDefNamedPrivateFieldWorkerService({int? arg1 = 0})
      : super(arg1: arg1);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamedPrivateField
sq.WorkerService $TestOptNullDefNamedPrivateFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptNullDefNamedPrivateFieldWorkerService(arg1: startRequest.args[0]);

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

/// WorkerService class for TestOptNullDefNamedPrivateNonFinalField
class _$TestOptNullDefNamedPrivateNonFinalFieldWorkerService
    extends TestOptNullDefNamedPrivateNonFinalField
    implements sq.WorkerService {
  _$TestOptNullDefNamedPrivateNonFinalFieldWorkerService({int? state = 0})
      : super(state: state);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$getStateId: ($) => getState(),
    _$setStateId: ($) => setState($.args[0]),
  });

  static const int _$getStateId = 1;
  static const int _$setStateId = 2;
}

/// Service initializer for TestOptNullDefNamedPrivateNonFinalField
sq.WorkerService $TestOptNullDefNamedPrivateNonFinalFieldInitializer(
        sq.WorkerRequest startRequest) =>
    _$TestOptNullDefNamedPrivateNonFinalFieldWorkerService(
        state: startRequest.args[0]);

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
  _$TestInstallableWorkerService(int delay) : super(delay);

  @override
  Map<int, sq.CommandHandler> get operations => _operations;

  late final Map<int, sq.CommandHandler> _operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestInstallable
sq.WorkerService $TestInstallableInitializer(sq.WorkerRequest startRequest) =>
    _$TestInstallableWorkerService(startRequest.args[0]);

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
