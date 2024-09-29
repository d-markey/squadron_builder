// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../test_services.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.6
// **************************************************************************

/// WorkerService class for TestParameterLess
class _$TestParameterLessWorkerService extends TestParameterLess
    implements sq.WorkerService {
  _$TestParameterLessWorkerService() : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestParameterLess
sq.WorkerService $TestParameterLessInitializer(sq.WorkerRequest $$) =>
    _$TestParameterLessWorkerService();

/// Worker for TestParameterLess
base class TestParameterLessWorker extends sq.Worker
    implements TestParameterLess {
  TestParameterLessWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.Squadron.platformType));

  TestParameterLessWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.SquadronPlatformType.vm));

  TestParameterLessWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestParameterLessWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.SquadronPlatformType.wasm));
}

/// Worker pool for TestParameterLess
base class TestParameterLessWorkerPool extends sq
    .WorkerPool<TestParameterLessWorker> implements TestParameterLess {
  TestParameterLessWorkerPool(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestParameterLessWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestParameterLessWorkerPool.vm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestParameterLessWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestParameterLessWorkerPool.js(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestParameterLessWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestParameterLessWorkerPool.wasm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestParameterLessWorker.wasm(
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );
}

/// WorkerService class for TestReqPositional
class _$TestReqPositionalWorkerService extends TestReqPositional
    implements sq.WorkerService {
  _$TestReqPositionalWorkerService(super.arg1) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestReqPositional
sq.WorkerService $TestReqPositionalInitializer(sq.WorkerRequest $$) =>
    _$TestReqPositionalWorkerService(_$X.$0($$.args[0]));

/// Worker for TestReqPositional
base class TestReqPositionalWorker extends sq.Worker
    implements TestReqPositional {
  TestReqPositionalWorker(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestReqPositionalWorker.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestReqPositionalWorker.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestReqPositionalWorker.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);
}

/// Worker pool for TestReqPositional
base class TestReqPositionalWorkerPool extends sq
    .WorkerPool<TestReqPositionalWorker> implements TestReqPositional {
  TestReqPositionalWorkerPool(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestReqPositionalWorker(
              arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestReqPositionalWorkerPool.vm(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestReqPositionalWorker.vm(
              arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestReqPositionalWorkerPool.js(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestReqPositionalWorker.js(
              arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestReqPositionalWorkerPool.wasm(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalWorker.wasm(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );
}

/// WorkerService class for TestOptNullPositional
class _$TestOptNullPositionalWorkerService extends TestOptNullPositional
    implements sq.WorkerService {
  _$TestOptNullPositionalWorkerService([super.arg1]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullPositional
sq.WorkerService $TestOptNullPositionalInitializer(sq.WorkerRequest $$) =>
    _$TestOptNullPositionalWorkerService(_$X.$1($$.args[0]));

/// Worker for TestOptNullPositional
base class TestOptNullPositionalWorker extends sq.Worker
    implements TestOptNullPositional {
  TestOptNullPositionalWorker(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptNullPositionalWorker.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptNullPositionalWorker.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullPositionalWorker.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);
}

/// Worker pool for TestOptNullPositional
base class TestOptNullPositionalWorkerPool extends sq
    .WorkerPool<TestOptNullPositionalWorker> implements TestOptNullPositional {
  TestOptNullPositionalWorkerPool(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalWorker(arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullPositionalWorkerPool.vm(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullPositionalWorkerPool.js(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullPositionalWorkerPool.wasm(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );
}

/// WorkerService class for TestOptDefPositional
class _$TestOptDefPositionalWorkerService extends TestOptDefPositional
    implements sq.WorkerService {
  _$TestOptDefPositionalWorkerService([super.arg1 = 0]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefPositional
sq.WorkerService $TestOptDefPositionalInitializer(sq.WorkerRequest $$) =>
    _$TestOptDefPositionalWorkerService(_$X.$0($$.args[0]));

/// Worker for TestOptDefPositional
base class TestOptDefPositionalWorker extends sq.Worker
    implements TestOptDefPositional {
  TestOptDefPositionalWorker(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptDefPositionalWorker.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptDefPositionalWorker.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefPositionalWorker.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);
}

/// Worker pool for TestOptDefPositional
base class TestOptDefPositionalWorkerPool extends sq
    .WorkerPool<TestOptDefPositionalWorker> implements TestOptDefPositional {
  TestOptDefPositionalWorkerPool(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalWorker(arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefPositionalWorkerPool.vm(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalWorker.vm(arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefPositionalWorkerPool.js(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalWorker.js(arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefPositionalWorkerPool.wasm(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );
}

/// WorkerService class for TestOptNullDefPositional
class _$TestOptNullDefPositionalWorkerService extends TestOptNullDefPositional
    implements sq.WorkerService {
  _$TestOptNullDefPositionalWorkerService([super.arg1 = 0]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositional
sq.WorkerService $TestOptNullDefPositionalInitializer(sq.WorkerRequest $$) =>
    _$TestOptNullDefPositionalWorkerService(_$X.$1($$.args[0]));

/// Worker for TestOptNullDefPositional
base class TestOptNullDefPositionalWorker extends sq.Worker
    implements TestOptNullDefPositional {
  TestOptNullDefPositionalWorker(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullDefPositionalActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptNullDefPositionalWorker.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullDefPositionalActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptNullDefPositionalWorker.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullDefPositionalActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalWorker.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullDefPositionalActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);
}

/// Worker pool for TestOptNullDefPositional
base class TestOptNullDefPositionalWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalWorker>
    implements TestOptNullDefPositional {
  TestOptNullDefPositionalWorkerPool(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalWorker(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefPositionalWorkerPool.vm(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefPositionalWorkerPool.js(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefPositionalWorkerPool.wasm(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );
}

/// WorkerService class for TestReqPositionalField
class _$TestReqPositionalFieldWorkerService extends TestReqPositionalField
    implements sq.WorkerService {
  _$TestReqPositionalFieldWorkerService(super.arg1) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestReqPositionalField
sq.WorkerService $TestReqPositionalFieldInitializer(sq.WorkerRequest $$) =>
    _$TestReqPositionalFieldWorkerService(_$X.$0($$.args[0]));

/// Worker for TestReqPositionalField
base class TestReqPositionalFieldWorker extends sq.Worker
    implements TestReqPositionalField {
  TestReqPositionalFieldWorker(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestReqPositionalFieldWorker.vm(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestReqPositionalFieldWorker.js(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestReqPositionalFieldWorker.wasm(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalFieldActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  final int arg1;
}

/// Worker pool for TestReqPositionalField
base class TestReqPositionalFieldWorkerPool
    extends sq.WorkerPool<TestReqPositionalFieldWorker>
    implements TestReqPositionalField {
  TestReqPositionalFieldWorkerPool(this.arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalFieldWorker(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestReqPositionalFieldWorkerPool.vm(this.arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalFieldWorker.vm(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestReqPositionalFieldWorkerPool.js(this.arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalFieldWorker.js(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestReqPositionalFieldWorkerPool.wasm(this.arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalFieldWorker.wasm(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final int arg1;
}

/// WorkerService class for TestOptNullPositionalField
class _$TestOptNullPositionalFieldWorkerService
    extends TestOptNullPositionalField implements sq.WorkerService {
  _$TestOptNullPositionalFieldWorkerService([super.arg1]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullPositionalField
sq.WorkerService $TestOptNullPositionalFieldInitializer(sq.WorkerRequest $$) =>
    _$TestOptNullPositionalFieldWorkerService(_$X.$1($$.args[0]));

/// Worker for TestOptNullPositionalField
base class TestOptNullPositionalFieldWorker extends sq.Worker
    implements TestOptNullPositionalField {
  TestOptNullPositionalFieldWorker(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptNullPositionalFieldWorker.vm(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptNullPositionalFieldWorker.js(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullPositionalFieldWorker.wasm(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullPositionalFieldActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullPositionalField
base class TestOptNullPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptNullPositionalFieldWorker>
    implements TestOptNullPositionalField {
  TestOptNullPositionalFieldWorkerPool(
      [this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalFieldWorker(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullPositionalFieldWorkerPool.vm(
      [this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalFieldWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullPositionalFieldWorkerPool.js(
      [this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalFieldWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullPositionalFieldWorkerPool.wasm(
      [this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalFieldWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final int? arg1;
}

/// WorkerService class for TestOptDefPositionalField
class _$TestOptDefPositionalFieldWorkerService extends TestOptDefPositionalField
    implements sq.WorkerService {
  _$TestOptDefPositionalFieldWorkerService([super.arg1 = 0]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefPositionalField
sq.WorkerService $TestOptDefPositionalFieldInitializer(sq.WorkerRequest $$) =>
    _$TestOptDefPositionalFieldWorkerService(_$X.$0($$.args[0]));

/// Worker for TestOptDefPositionalField
base class TestOptDefPositionalFieldWorker extends sq.Worker
    implements TestOptDefPositionalField {
  TestOptDefPositionalFieldWorker(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptDefPositionalFieldWorker.vm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptDefPositionalFieldWorker.js(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefPositionalFieldWorker.wasm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalFieldActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  final int arg1;
}

/// Worker pool for TestOptDefPositionalField
base class TestOptDefPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptDefPositionalFieldWorker>
    implements TestOptDefPositionalField {
  TestOptDefPositionalFieldWorkerPool(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalFieldWorker(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefPositionalFieldWorkerPool.vm(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalFieldWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefPositionalFieldWorkerPool.js(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalFieldWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefPositionalFieldWorkerPool.wasm(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalFieldWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final int arg1;
}

/// WorkerService class for TestOptNullDefPositionalField
class _$TestOptNullDefPositionalFieldWorkerService
    extends TestOptNullDefPositionalField implements sq.WorkerService {
  _$TestOptNullDefPositionalFieldWorkerService([super.arg1 = 0]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositionalField
sq.WorkerService $TestOptNullDefPositionalFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestOptNullDefPositionalFieldWorkerService(_$X.$1($$.args[0]));

/// Worker for TestOptNullDefPositionalField
base class TestOptNullDefPositionalFieldWorker extends sq.Worker
    implements TestOptNullDefPositionalField {
  TestOptNullDefPositionalFieldWorker(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullDefPositionalFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptNullDefPositionalFieldWorker.vm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptNullDefPositionalFieldWorker.js(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalFieldWorker.wasm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullDefPositionalField
base class TestOptNullDefPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalFieldWorker>
    implements TestOptNullDefPositionalField {
  TestOptNullDefPositionalFieldWorkerPool(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalFieldWorker(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefPositionalFieldWorkerPool.vm(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalFieldWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefPositionalFieldWorkerPool.js(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalFieldWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefPositionalFieldWorkerPool.wasm(
      [this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalFieldWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final int? arg1;
}

/// WorkerService class for TestReqPositionalPrivateField
class _$TestReqPositionalPrivateFieldWorkerService
    extends TestReqPositionalPrivateField implements sq.WorkerService {
  _$TestReqPositionalPrivateFieldWorkerService(super.arg1) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestReqPositionalPrivateField
sq.WorkerService $TestReqPositionalPrivateFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestReqPositionalPrivateFieldWorkerService(_$X.$0($$.args[0]));

/// Worker for TestReqPositionalPrivateField
base class TestReqPositionalPrivateFieldWorker extends sq.Worker
    implements TestReqPositionalPrivateField {
  TestReqPositionalPrivateFieldWorker(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalPrivateFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestReqPositionalPrivateFieldWorker.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestReqPositionalPrivateFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestReqPositionalPrivateFieldWorker.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestReqPositionalPrivateFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestReqPositionalPrivateFieldWorker.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestReqPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestReqPositionalPrivateField
base class TestReqPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestReqPositionalPrivateFieldWorker>
    implements TestReqPositionalPrivateField {
  TestReqPositionalPrivateFieldWorkerPool(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalPrivateFieldWorker(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestReqPositionalPrivateFieldWorkerPool.vm(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalPrivateFieldWorker.vm(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestReqPositionalPrivateFieldWorkerPool.js(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalPrivateFieldWorker.js(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestReqPositionalPrivateFieldWorkerPool.wasm(int arg1,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestReqPositionalPrivateFieldWorker.wasm(arg1,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullPositionalPrivateField
class _$TestOptNullPositionalPrivateFieldWorkerService
    extends TestOptNullPositionalPrivateField implements sq.WorkerService {
  _$TestOptNullPositionalPrivateFieldWorkerService([super.arg1]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullPositionalPrivateField
sq.WorkerService $TestOptNullPositionalPrivateFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestOptNullPositionalPrivateFieldWorkerService(_$X.$1($$.args[0]));

/// Worker for TestOptNullPositionalPrivateField
base class TestOptNullPositionalPrivateFieldWorker extends sq.Worker
    implements TestOptNullPositionalPrivateField {
  TestOptNullPositionalPrivateFieldWorker(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            args: [arg1]);

  TestOptNullPositionalPrivateFieldWorker.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptNullPositionalPrivateFieldWorker.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullPositionalPrivateFieldWorker.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptNullPositionalPrivateField
base class TestOptNullPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullPositionalPrivateFieldWorker>
    implements TestOptNullPositionalPrivateField {
  TestOptNullPositionalPrivateFieldWorkerPool(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalPrivateFieldWorker(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullPositionalPrivateFieldWorkerPool.vm(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalPrivateFieldWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullPositionalPrivateFieldWorkerPool.js(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalPrivateFieldWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullPositionalPrivateFieldWorkerPool.wasm(
      [int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullPositionalPrivateFieldWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptDefPositionalPrivateField
class _$TestOptDefPositionalPrivateFieldWorkerService
    extends TestOptDefPositionalPrivateField implements sq.WorkerService {
  _$TestOptDefPositionalPrivateFieldWorkerService([super.arg1 = 0]) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefPositionalPrivateField
sq.WorkerService $TestOptDefPositionalPrivateFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestOptDefPositionalPrivateFieldWorkerService(_$X.$0($$.args[0]));

/// Worker for TestOptDefPositionalPrivateField
base class TestOptDefPositionalPrivateFieldWorker extends sq.Worker
    implements TestOptDefPositionalPrivateField {
  TestOptDefPositionalPrivateFieldWorker(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            args: [arg1]);

  TestOptDefPositionalPrivateFieldWorker.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptDefPositionalPrivateFieldWorker.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefPositionalPrivateFieldWorker.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptDefPositionalPrivateField
base class TestOptDefPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptDefPositionalPrivateFieldWorker>
    implements TestOptDefPositionalPrivateField {
  TestOptDefPositionalPrivateFieldWorkerPool(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalPrivateFieldWorker(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefPositionalPrivateFieldWorkerPool.vm(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalPrivateFieldWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefPositionalPrivateFieldWorkerPool.js(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalPrivateFieldWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefPositionalPrivateFieldWorkerPool.wasm(
      [int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefPositionalPrivateFieldWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullDefPositionalPrivateField
class _$TestOptNullDefPositionalPrivateFieldWorkerService
    extends TestOptNullDefPositionalPrivateField implements sq.WorkerService {
  _$TestOptNullDefPositionalPrivateFieldWorkerService([super.arg1 = 0])
      : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefPositionalPrivateField
sq.WorkerService $TestOptNullDefPositionalPrivateFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestOptNullDefPositionalPrivateFieldWorkerService(_$X.$1($$.args[0]));

/// Worker for TestOptNullDefPositionalPrivateField
base class TestOptNullDefPositionalPrivateFieldWorker extends sq.Worker
    implements TestOptNullDefPositionalPrivateField {
  TestOptNullDefPositionalPrivateFieldWorker(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            args: [arg1]);

  TestOptNullDefPositionalPrivateFieldWorker.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptNullDefPositionalPrivateFieldWorker.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalPrivateFieldWorker.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptNullDefPositionalPrivateField
base class TestOptNullDefPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalPrivateFieldWorker>
    implements TestOptNullDefPositionalPrivateField {
  TestOptNullDefPositionalPrivateFieldWorkerPool(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalPrivateFieldWorker(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefPositionalPrivateFieldWorkerPool.vm(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalPrivateFieldWorker.vm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefPositionalPrivateFieldWorkerPool.js(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalPrivateFieldWorker.js(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefPositionalPrivateFieldWorkerPool.wasm(
      [int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefPositionalPrivateFieldWorker.wasm(
                  arg1, threadHook, exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullNamed
class _$TestOptNullNamedWorkerService extends TestOptNullNamed
    implements sq.WorkerService {
  _$TestOptNullNamedWorkerService({super.arg1}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullNamed
sq.WorkerService $TestOptNullNamedInitializer(sq.WorkerRequest $$) =>
    _$TestOptNullNamedWorkerService(arg1: _$X.$1($$.args[0]));

/// Worker for TestOptNullNamed
base class TestOptNullNamedWorker extends sq.Worker
    implements TestOptNullNamed {
  TestOptNullNamedWorker(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptNullNamedWorker.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptNullNamedWorker.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullNamedWorker.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);
}

/// Worker pool for TestOptNullNamed
base class TestOptNullNamedWorkerPool
    extends sq.WorkerPool<TestOptNullNamedWorker> implements TestOptNullNamed {
  TestOptNullNamedWorkerPool(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptNullNamedWorker(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullNamedWorkerPool.vm(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptNullNamedWorker.vm(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullNamedWorkerPool.js(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptNullNamedWorker.js(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullNamedWorkerPool.wasm(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptNullNamedWorker.wasm(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );
}

/// WorkerService class for TestOptDefNamed
class _$TestOptDefNamedWorkerService extends TestOptDefNamed
    implements sq.WorkerService {
  _$TestOptDefNamedWorkerService({super.arg1 = 0}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefNamed
sq.WorkerService $TestOptDefNamedInitializer(sq.WorkerRequest $$) =>
    _$TestOptDefNamedWorkerService(arg1: _$X.$0($$.args[0]));

/// Worker for TestOptDefNamed
base class TestOptDefNamedWorker extends sq.Worker implements TestOptDefNamed {
  TestOptDefNamedWorker(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptDefNamedWorker.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptDefNamedWorker.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefNamedWorker.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);
}

/// Worker pool for TestOptDefNamed
base class TestOptDefNamedWorkerPool
    extends sq.WorkerPool<TestOptDefNamedWorker> implements TestOptDefNamed {
  TestOptDefNamedWorkerPool(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptDefNamedWorker(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefNamedWorkerPool.vm(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptDefNamedWorker.vm(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefNamedWorkerPool.js(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptDefNamedWorker.js(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefNamedWorkerPool.wasm(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptDefNamedWorker.wasm(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );
}

/// WorkerService class for TestOptNullDefNamed
class _$TestOptNullDefNamedWorkerService extends TestOptNullDefNamed
    implements sq.WorkerService {
  _$TestOptNullDefNamedWorkerService({super.arg1 = 0}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamed
sq.WorkerService $TestOptNullDefNamedInitializer(sq.WorkerRequest $$) =>
    _$TestOptNullDefNamedWorkerService(arg1: _$X.$1($$.args[0]));

/// Worker for TestOptNullDefNamed
base class TestOptNullDefNamedWorker extends sq.Worker
    implements TestOptNullDefNamed {
  TestOptNullDefNamedWorker(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptNullDefNamedWorker.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptNullDefNamedWorker.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedWorker.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);
}

/// Worker pool for TestOptNullDefNamed
base class TestOptNullDefNamedWorkerPool extends sq
    .WorkerPool<TestOptNullDefNamedWorker> implements TestOptNullDefNamed {
  TestOptNullDefNamedWorkerPool(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptNullDefNamedWorker(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefNamedWorkerPool.vm(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedWorker.vm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefNamedWorkerPool.js(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedWorker.js(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefNamedWorkerPool.wasm(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedWorker.wasm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );
}

/// WorkerService class for TestOptNullNamedField
class _$TestOptNullNamedFieldWorkerService extends TestOptNullNamedField
    implements sq.WorkerService {
  _$TestOptNullNamedFieldWorkerService({super.arg1}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullNamedField
sq.WorkerService $TestOptNullNamedFieldInitializer(sq.WorkerRequest $$) =>
    _$TestOptNullNamedFieldWorkerService(arg1: _$X.$1($$.args[0]));

/// Worker for TestOptNullNamedField
base class TestOptNullNamedFieldWorker extends sq.Worker
    implements TestOptNullNamedField {
  TestOptNullNamedFieldWorker(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptNullNamedFieldWorker.vm(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptNullNamedFieldWorker.js(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullNamedFieldWorker.wasm(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedFieldActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullNamedField
base class TestOptNullNamedFieldWorkerPool extends sq
    .WorkerPool<TestOptNullNamedFieldWorker> implements TestOptNullNamedField {
  TestOptNullNamedFieldWorkerPool(
      {this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptNullNamedFieldWorker(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullNamedFieldWorkerPool.vm(
      {this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullNamedFieldWorker.vm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullNamedFieldWorkerPool.js(
      {this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullNamedFieldWorker.js(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullNamedFieldWorkerPool.wasm(
      {this.arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullNamedFieldWorker.wasm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final int? arg1;
}

/// WorkerService class for TestOptDefNamedField
class _$TestOptDefNamedFieldWorkerService extends TestOptDefNamedField
    implements sq.WorkerService {
  _$TestOptDefNamedFieldWorkerService({super.arg1 = 0}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefNamedField
sq.WorkerService $TestOptDefNamedFieldInitializer(sq.WorkerRequest $$) =>
    _$TestOptDefNamedFieldWorkerService(arg1: _$X.$0($$.args[0]));

/// Worker for TestOptDefNamedField
base class TestOptDefNamedFieldWorker extends sq.Worker
    implements TestOptDefNamedField {
  TestOptDefNamedFieldWorker(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptDefNamedFieldWorker.vm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptDefNamedFieldWorker.js(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefNamedFieldWorker.wasm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedFieldActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  final int arg1;
}

/// Worker pool for TestOptDefNamedField
base class TestOptDefNamedFieldWorkerPool extends sq
    .WorkerPool<TestOptDefNamedFieldWorker> implements TestOptDefNamedField {
  TestOptDefNamedFieldWorkerPool(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestOptDefNamedFieldWorker(
              arg1: arg1,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefNamedFieldWorkerPool.vm(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefNamedFieldWorker.vm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefNamedFieldWorkerPool.js(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefNamedFieldWorker.js(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefNamedFieldWorkerPool.wasm(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefNamedFieldWorker.wasm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final int arg1;
}

/// WorkerService class for TestOptNullDefNamedField
class _$TestOptNullDefNamedFieldWorkerService extends TestOptNullDefNamedField
    implements sq.WorkerService {
  _$TestOptNullDefNamedFieldWorkerService({super.arg1 = 0}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamedField
sq.WorkerService $TestOptNullDefNamedFieldInitializer(sq.WorkerRequest $$) =>
    _$TestOptNullDefNamedFieldWorkerService(arg1: _$X.$1($$.args[0]));

/// Worker for TestOptNullDefNamedField
base class TestOptNullDefNamedFieldWorker extends sq.Worker
    implements TestOptNullDefNamedField {
  TestOptNullDefNamedFieldWorker(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptNullDefNamedFieldWorker.vm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptNullDefNamedFieldWorker.js(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedFieldWorker.wasm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedFieldActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullDefNamedField
base class TestOptNullDefNamedFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedFieldWorker>
    implements TestOptNullDefNamedField {
  TestOptNullDefNamedFieldWorkerPool(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedFieldWorker(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefNamedFieldWorkerPool.vm(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedFieldWorker.vm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefNamedFieldWorkerPool.js(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedFieldWorker.js(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefNamedFieldWorkerPool.wasm(
      {this.arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedFieldWorker.wasm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final int? arg1;
}

/// WorkerService class for TestOptNullNamedPrivateField
class _$TestOptNullNamedPrivateFieldWorkerService
    extends TestOptNullNamedPrivateField implements sq.WorkerService {
  _$TestOptNullNamedPrivateFieldWorkerService({super.arg1}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullNamedPrivateField
sq.WorkerService $TestOptNullNamedPrivateFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestOptNullNamedPrivateFieldWorkerService(arg1: _$X.$1($$.args[0]));

/// Worker for TestOptNullNamedPrivateField
base class TestOptNullNamedPrivateFieldWorker extends sq.Worker
    implements TestOptNullNamedPrivateField {
  TestOptNullNamedPrivateFieldWorker(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedPrivateFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptNullNamedPrivateFieldWorker.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullNamedPrivateFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptNullNamedPrivateFieldWorker.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullNamedPrivateFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullNamedPrivateFieldWorker.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullNamedPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptNullNamedPrivateField
base class TestOptNullNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullNamedPrivateFieldWorker>
    implements TestOptNullNamedPrivateField {
  TestOptNullNamedPrivateFieldWorkerPool(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullNamedPrivateFieldWorker(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullNamedPrivateFieldWorkerPool.vm(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullNamedPrivateFieldWorker.vm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullNamedPrivateFieldWorkerPool.js(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullNamedPrivateFieldWorker.js(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullNamedPrivateFieldWorkerPool.wasm(
      {int? arg1,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullNamedPrivateFieldWorker.wasm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptDefNamedPrivateField
class _$TestOptDefNamedPrivateFieldWorkerService
    extends TestOptDefNamedPrivateField implements sq.WorkerService {
  _$TestOptDefNamedPrivateFieldWorkerService({super.arg1 = 0}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptDefNamedPrivateField
sq.WorkerService $TestOptDefNamedPrivateFieldInitializer(sq.WorkerRequest $$) =>
    _$TestOptDefNamedPrivateFieldWorkerService(arg1: _$X.$0($$.args[0]));

/// Worker for TestOptDefNamedPrivateField
base class TestOptDefNamedPrivateFieldWorker extends sq.Worker
    implements TestOptDefNamedPrivateField {
  TestOptDefNamedPrivateFieldWorker(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedPrivateFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptDefNamedPrivateFieldWorker.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedPrivateFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptDefNamedPrivateFieldWorker.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedPrivateFieldActivator(sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefNamedPrivateFieldWorker.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptDefNamedPrivateFieldActivator(sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptDefNamedPrivateField
base class TestOptDefNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptDefNamedPrivateFieldWorker>
    implements TestOptDefNamedPrivateField {
  TestOptDefNamedPrivateFieldWorkerPool(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefNamedPrivateFieldWorker(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefNamedPrivateFieldWorkerPool.vm(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefNamedPrivateFieldWorker.vm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefNamedPrivateFieldWorkerPool.js(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefNamedPrivateFieldWorker.js(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptDefNamedPrivateFieldWorkerPool.wasm(
      {int arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptDefNamedPrivateFieldWorker.wasm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullDefNamedPrivateField
class _$TestOptNullDefNamedPrivateFieldWorkerService
    extends TestOptNullDefNamedPrivateField implements sq.WorkerService {
  _$TestOptNullDefNamedPrivateFieldWorkerService({super.arg1 = 0}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestOptNullDefNamedPrivateField
sq.WorkerService $TestOptNullDefNamedPrivateFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestOptNullDefNamedPrivateFieldWorkerService(arg1: _$X.$1($$.args[0]));

/// Worker for TestOptNullDefNamedPrivateField
base class TestOptNullDefNamedPrivateFieldWorker extends sq.Worker
    implements TestOptNullDefNamedPrivateField {
  TestOptNullDefNamedPrivateFieldWorker(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateFieldActivator(sq.Squadron.platformType),
            args: [arg1]);

  TestOptNullDefNamedPrivateFieldWorker.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [arg1]);

  TestOptNullDefNamedPrivateFieldWorker.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedPrivateFieldWorker.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [arg1]);

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// Worker pool for TestOptNullDefNamedPrivateField
base class TestOptNullDefNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedPrivateFieldWorker>
    implements TestOptNullDefNamedPrivateField {
  TestOptNullDefNamedPrivateFieldWorkerPool(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedPrivateFieldWorker(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefNamedPrivateFieldWorkerPool.vm(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedPrivateFieldWorker.vm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefNamedPrivateFieldWorkerPool.js(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedPrivateFieldWorker.js(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestOptNullDefNamedPrivateFieldWorkerPool.wasm(
      {int? arg1 = 0,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestOptNullDefNamedPrivateFieldWorker.wasm(
                  arg1: arg1,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestPrefixedImportType
class _$TestPrefixedImportTypeWorkerService extends TestPrefixedImportType
    implements sq.WorkerService {
  _$TestPrefixedImportTypeWorkerService(super.typedData) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$getTypedDataId: ($) async => _$X.$3(await getTypedData()),
  });

  static const int _$getTypedDataId = 1;
}

/// Service initializer for TestPrefixedImportType
sq.WorkerService $TestPrefixedImportTypeInitializer(sq.WorkerRequest $$) =>
    _$TestPrefixedImportTypeWorkerService(_$X.$4($$.args[0]));

/// Worker for TestPrefixedImportType
base class TestPrefixedImportTypeWorker extends sq.Worker
    implements TestPrefixedImportType {
  TestPrefixedImportTypeWorker(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestPrefixedImportTypeActivator(sq.Squadron.platformType),
            args: [_$X.$2(typedData)]);

  TestPrefixedImportTypeWorker.vm(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.vm),
            args: [_$X.$2(typedData)]);

  TestPrefixedImportTypeWorker.js(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.js),
            args: [_$X.$2(typedData)],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestPrefixedImportTypeWorker.wasm(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.wasm),
            args: [_$X.$2(typedData)]);

  @override
  final typed_data.Int8List typedData;

  @override
  Future<typed_data.Int8List?> getTypedData() =>
      send(_$TestPrefixedImportTypeWorkerService._$getTypedDataId, args: [])
          .then(_$X.$5);
}

/// Worker pool for TestPrefixedImportType
base class TestPrefixedImportTypeWorkerPool
    extends sq.WorkerPool<TestPrefixedImportTypeWorker>
    implements TestPrefixedImportType {
  TestPrefixedImportTypeWorkerPool(this.typedData,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestPrefixedImportTypeWorker(typedData,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestPrefixedImportTypeWorkerPool.vm(this.typedData,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestPrefixedImportTypeWorker.vm(typedData,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestPrefixedImportTypeWorkerPool.js(this.typedData,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestPrefixedImportTypeWorker.js(typedData,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestPrefixedImportTypeWorkerPool.wasm(this.typedData,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestPrefixedImportTypeWorker.wasm(typedData,
                  threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

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
  _$TestOptNullDefNamedPrivateNonFinalFieldWorkerService({super.state = 0})
      : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$getStateId: ($) => getState(),
    _$setStateId: ($) => setState(_$X.$1($.args[0])),
  });

  static const int _$getStateId = 1;
  static const int _$setStateId = 2;
}

/// Service initializer for TestOptNullDefNamedPrivateNonFinalField
sq.WorkerService $TestOptNullDefNamedPrivateNonFinalFieldInitializer(
        sq.WorkerRequest $$) =>
    _$TestOptNullDefNamedPrivateNonFinalFieldWorkerService(
        state: _$X.$1($$.args[0]));

/// Worker for TestOptNullDefNamedPrivateNonFinalField
base class TestOptNullDefNamedPrivateNonFinalFieldWorker extends sq.Worker
    implements TestOptNullDefNamedPrivateNonFinalField {
  TestOptNullDefNamedPrivateNonFinalFieldWorker(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.Squadron.platformType),
            args: [state]);

  TestOptNullDefNamedPrivateNonFinalFieldWorker.vm(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [state]);

  TestOptNullDefNamedPrivateNonFinalFieldWorker.js(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.SquadronPlatformType.js),
            args: [state],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedPrivateNonFinalFieldWorker.wasm(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.SquadronPlatformType.wasm),
            args: [state]);

  @override
  Future<int?> getState() =>
      send(_$TestOptNullDefNamedPrivateNonFinalFieldWorkerService._$getStateId,
          args: []).then(_$X.$1);

  @override
  Future<void> setState(int? state) =>
      send(_$TestOptNullDefNamedPrivateNonFinalFieldWorkerService._$setStateId,
          args: [state]).then(_$X.$6);

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
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{});
}

/// Service initializer for TestInstallable
sq.WorkerService $TestInstallableInitializer(sq.WorkerRequest $$) =>
    _$TestInstallableWorkerService(_$X.$0($$.args[0]));

/// Worker for TestInstallable
base class TestInstallableWorker extends sq.Worker implements TestInstallable {
  TestInstallableWorker(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestInstallableActivator(sq.Squadron.platformType),
            args: [delay]);

  TestInstallableWorker.vm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestInstallableActivator(sq.SquadronPlatformType.vm),
            args: [delay]);

  TestInstallableWorker.js(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestInstallableActivator(sq.SquadronPlatformType.js),
            args: [delay],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestInstallableWorker.wasm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestInstallableActivator(sq.SquadronPlatformType.wasm),
            args: [delay]);

  @override
  FutureOr<void> install() => throw UnimplementedError();

  @override
  FutureOr<void> uninstall() => throw UnimplementedError();

  @override
  // ignore: unused_element
  int get _delay => throw UnimplementedError();
}

/// Worker pool for TestInstallable
base class TestInstallableWorkerPool
    extends sq.WorkerPool<TestInstallableWorker> implements TestInstallable {
  TestInstallableWorkerPool(int delay,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestInstallableWorker(delay,
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestInstallableWorkerPool.vm(int delay,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestInstallableWorker.vm(
              delay,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestInstallableWorkerPool.js(int delay,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestInstallableWorker.js(
              delay,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestInstallableWorkerPool.wasm(int delay,
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestInstallableWorker.wasm(
              delay,
              threadHook: threadHook,
              exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

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
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$bothId: ($) async => _$X.$8(await both()),
    _$inputId: ($) =>
        input(_$X.$10($.args[0]), _$X.$13($.args[1]), _$X.$14($.args[2])),
    _$namedId: ($) => named().then(_$X.$15),
    _$unnamedId: ($) async => _$X.$16(await unnamed()),
  });

  static const int _$bothId = 1;
  static const int _$inputId = 2;
  static const int _$namedId = 3;
  static const int _$unnamedId = 4;
}

/// Service initializer for TestRecordTypes
sq.WorkerService $TestRecordTypesInitializer(sq.WorkerRequest $$) =>
    _$TestRecordTypesWorkerService();

/// Worker for TestRecordTypes
base class TestRecordTypesWorker extends sq.Worker implements TestRecordTypes {
  TestRecordTypesWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.Squadron.platformType));

  TestRecordTypesWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.SquadronPlatformType.vm));

  TestRecordTypesWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestRecordTypesWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.SquadronPlatformType.wasm));

  @override
  Future<(int, {List<int> items})> both() =>
      send(_$TestRecordTypesWorkerService._$bothId, args: []).then(_$X.$10);

  @override
  Future<bool> input((int, {List<int> items}) both, (int, List<dynamic>) pos,
          ({int count, List<dynamic> items}) named) =>
      send(_$TestRecordTypesWorkerService._$inputId,
          args: [_$X.$8(both), _$X.$16(pos), _$X.$15(named)]).then(_$X.$17);

  @override
  Future<({int count, List<dynamic> items})> named() =>
      send(_$TestRecordTypesWorkerService._$namedId, args: []).then(_$X.$14);

  @override
  Future<(int, List<dynamic>)> unnamed() =>
      send(_$TestRecordTypesWorkerService._$unnamedId, args: []).then(_$X.$13);
}

/// Worker pool for TestRecordTypes
base class TestRecordTypesWorkerPool
    extends sq.WorkerPool<TestRecordTypesWorker> implements TestRecordTypes {
  TestRecordTypesWorkerPool(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestRecordTypesWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestRecordTypesWorkerPool.vm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestRecordTypesWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestRecordTypesWorkerPool.js(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestRecordTypesWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestRecordTypesWorkerPool.wasm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestRecordTypesWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Future<(int, {List<int> items})> both() => execute((w) => w.both());

  @override
  Future<bool> input((int, {List<int> items}) both, (int, List<dynamic>) pos,
          ({int count, List<dynamic> items}) named) =>
      execute((w) => w.input(both, pos, named));

  @override
  Future<({int count, List<dynamic> items})> named() =>
      execute((w) => w.named());

  @override
  Future<(int, List<dynamic>)> unnamed() => execute((w) => w.unnamed());
}

/// WorkerService class for TestRequiredSuperParam
class _$TestRequiredSuperParamWorkerService extends TestRequiredSuperParam
    implements sq.WorkerService {
  _$TestRequiredSuperParamWorkerService({required super.path}) : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$clearId: ($) => clear(),
  });

  static const int _$clearId = 1;
}

/// Service initializer for TestRequiredSuperParam
sq.WorkerService $TestRequiredSuperParamInitializer(sq.WorkerRequest $$) =>
    _$TestRequiredSuperParamWorkerService(path: _$X.$18($$.args[0]));

/// Worker for TestRequiredSuperParam
base class TestRequiredSuperParamWorker extends sq.Worker
    implements TestRequiredSuperParam {
  TestRequiredSuperParamWorker(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRequiredSuperParamActivator(sq.Squadron.platformType),
            args: [path]);

  TestRequiredSuperParamWorker.vm(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRequiredSuperParamActivator(sq.SquadronPlatformType.vm),
            args: [path]);

  TestRequiredSuperParamWorker.js(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRequiredSuperParamActivator(sq.SquadronPlatformType.js),
            args: [path],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestRequiredSuperParamWorker.wasm(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRequiredSuperParamActivator(sq.SquadronPlatformType.wasm),
            args: [path]);

  @override
  final String path;

  @override
  Future<void> clear() =>
      send(_$TestRequiredSuperParamWorkerService._$clearId, args: [])
          .then(_$X.$6);
}

/// Worker pool for TestRequiredSuperParam
base class TestRequiredSuperParamWorkerPool
    extends sq.WorkerPool<TestRequiredSuperParamWorker>
    implements TestRequiredSuperParam {
  TestRequiredSuperParamWorkerPool(
      {required this.path,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestRequiredSuperParamWorker(
                  path: path,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestRequiredSuperParamWorkerPool.vm(
      {required this.path,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestRequiredSuperParamWorker.vm(
                  path: path,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestRequiredSuperParamWorkerPool.js(
      {required this.path,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestRequiredSuperParamWorker.js(
                  path: path,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestRequiredSuperParamWorkerPool.wasm(
      {required this.path,
      sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) =>
              TestRequiredSuperParamWorker.wasm(
                  path: path,
                  threadHook: threadHook,
                  exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  final String path;

  @override
  Future<void> clear() => execute((w) => w.clear());
}

/// WorkerService class for TestBigInt
class _$TestBigIntWorkerService extends TestBigInt implements sq.WorkerService {
  _$TestBigIntWorkerService() : super();

  @override
  late final Map<int, sq.CommandHandler> operations =
      Map.unmodifiable(<int, sq.CommandHandler>{
    _$addId: ($) async =>
        _$X.$20(await add(_$X.$19($.args[0]), _$X.$19($.args[1]))),
  });

  static const int _$addId = 1;
}

/// Service initializer for TestBigInt
sq.WorkerService $TestBigIntInitializer(sq.WorkerRequest $$) =>
    _$TestBigIntWorkerService();

/// Worker for TestBigInt
base class TestBigIntWorker extends sq.Worker implements TestBigInt {
  TestBigIntWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestBigIntActivator(sq.Squadron.platformType));

  TestBigIntWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestBigIntActivator(sq.SquadronPlatformType.vm));

  TestBigIntWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestBigIntActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestBigIntWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestBigIntActivator(sq.SquadronPlatformType.wasm));

  @override
  Future<BigInt> add(BigInt a, BigInt b) =>
      send(_$TestBigIntWorkerService._$addId, args: [_$X.$20(a), _$X.$20(b)])
          .then(_$X.$19);
}

/// Worker pool for TestBigInt
base class TestBigIntWorkerPool extends sq.WorkerPool<TestBigIntWorker>
    implements TestBigInt {
  TestBigIntWorkerPool(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestBigIntWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestBigIntWorkerPool.vm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestBigIntWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestBigIntWorkerPool.js(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestBigIntWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestBigIntWorkerPool.wasm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestBigIntWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Future<BigInt> add(BigInt a, BigInt b) => execute((w) => w.add(a, b));
}

sealed class _$X {
  static final $0 = sq.Squadron.converter.value<int>();
  static final $1 = sq.Squadron.converter.nullable($0);
  static final $2 = (($) => ($ as typed_data.Int8List).buffer);
  static final $3 = sq.Squadron.converter.nullable($2);
  static final $4 = sq.Squadron.converter.typedData<typed_data.Int8List>();
  static final $5 = sq.Squadron.converter.nullable($4);
  static final $6 = sq.Squadron.converter.value<void>();
  static final $7 = sq.Squadron.converter.list();
  static final $8 = (((int, {List<int> items}) $) => [$.$1, _$X.$7($.items)]);
  static final $9 = sq.Squadron.converter.list<int>(_$X.$0);
  static final $10 = (($) {
    $ as List;
    return (_$X.$0($[0]), items: _$X.$9($[1]));
  });
  static final $11 = sq.Squadron.converter.value<dynamic>();
  static final $12 = sq.Squadron.converter.list<dynamic>(_$X.$11);
  static final $13 = (($) {
    $ as List;
    return (_$X.$0($[0]), _$X.$12($[1]));
  });
  static final $14 = (($) {
    $ as List;
    return (count: _$X.$0($[0]), items: _$X.$12($[1]));
  });
  static final $15 =
      ((({int count, List<dynamic> items}) $) => [$.count, _$X.$7($.items)]);
  static final $16 = (((int, List<dynamic>) $) => [$.$1, _$X.$7($.$2)]);
  static final $17 = sq.Squadron.converter.value<bool>();
  static final $18 = sq.Squadron.converter.value<String>();
  static final $19 = (($) => (const _BigIntMarshaler()).unmarshal($));
  static final $20 = (($) => (const _BigIntMarshaler()).marshal($));
}
