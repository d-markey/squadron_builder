// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../test_services.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

/// WorkerService operations for TestParameterLess
extension _$TestParameterLess$Operations on TestParameterLess {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestParameterLess, implements the public interface to invoke the
/// remote service.
mixin _$TestParameterLess$Invoker on sq.Invoker implements TestParameterLess {}

/// Facade for TestParameterLess, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestParameterLess$Facade implements TestParameterLess {}

/// WorkerService class for TestParameterLess
class _$TestParameterLess$WorkerService extends TestParameterLess
    implements sq.WorkerService {
  _$TestParameterLess$WorkerService() : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestParameterLess
sq.WorkerService $TestParameterLessInitializer(sq.WorkerRequest $req) =>
    _$TestParameterLess$WorkerService();

/// Worker for TestParameterLess
base class TestParameterLessWorker extends sq.Worker
    with _$TestParameterLess$Invoker, _$TestParameterLess$Facade
    implements TestParameterLess {
  TestParameterLessWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestParameterLessWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestParameterLessWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestParameterLessWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestParameterLessActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);
}

/// Worker pool for TestParameterLess
base class TestParameterLessWorkerPool
    extends sq.WorkerPool<TestParameterLessWorker>
    with _$TestParameterLess$Facade
    implements TestParameterLess {
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

/// WorkerService operations for TestReqPositional
extension _$TestReqPositional$Operations on TestReqPositional {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestReqPositional, implements the public interface to invoke the
/// remote service.
mixin _$TestReqPositional$Invoker on sq.Invoker implements TestReqPositional {}

/// Facade for TestReqPositional, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestReqPositional$Facade implements TestReqPositional {}

/// WorkerService class for TestReqPositional
class _$TestReqPositional$WorkerService extends TestReqPositional
    implements sq.WorkerService {
  _$TestReqPositional$WorkerService(super.arg1) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestReqPositional
sq.WorkerService $TestReqPositionalInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestReqPositional$WorkerService($mc.$de0($req.args[0]));
}

/// Worker for TestReqPositional
base class TestReqPositionalWorker extends sq.Worker
    with _$TestReqPositional$Invoker, _$TestReqPositional$Facade
    implements TestReqPositional {
  TestReqPositionalWorker(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestReqPositionalWorker.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestReqPositional
base class TestReqPositionalWorkerPool
    extends sq.WorkerPool<TestReqPositionalWorker>
    with _$TestReqPositional$Facade
    implements TestReqPositional {
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

/// WorkerService operations for TestOptNullPositional
extension _$TestOptNullPositional$Operations on TestOptNullPositional {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptNullPositional, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullPositional$Invoker on sq.Invoker
    implements TestOptNullPositional {}

/// Facade for TestOptNullPositional, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptNullPositional$Facade implements TestOptNullPositional {}

/// WorkerService class for TestOptNullPositional
class _$TestOptNullPositional$WorkerService extends TestOptNullPositional
    implements sq.WorkerService {
  _$TestOptNullPositional$WorkerService([super.arg1]) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptNullPositional
sq.WorkerService $TestOptNullPositionalInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptNullPositional$WorkerService($mc.$de1($req.args[0]));
}

/// Worker for TestOptNullPositional
base class TestOptNullPositionalWorker extends sq.Worker
    with _$TestOptNullPositional$Invoker, _$TestOptNullPositional$Facade
    implements TestOptNullPositional {
  TestOptNullPositionalWorker(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullPositionalWorker.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestOptNullPositional
base class TestOptNullPositionalWorkerPool
    extends sq.WorkerPool<TestOptNullPositionalWorker>
    with _$TestOptNullPositional$Facade
    implements TestOptNullPositional {
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

/// WorkerService operations for TestOptDefPositional
extension _$TestOptDefPositional$Operations on TestOptDefPositional {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptDefPositional, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefPositional$Invoker on sq.Invoker
    implements TestOptDefPositional {}

/// Facade for TestOptDefPositional, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptDefPositional$Facade implements TestOptDefPositional {}

/// WorkerService class for TestOptDefPositional
class _$TestOptDefPositional$WorkerService extends TestOptDefPositional
    implements sq.WorkerService {
  _$TestOptDefPositional$WorkerService([super.arg1 = 0]) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptDefPositional
sq.WorkerService $TestOptDefPositionalInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptDefPositional$WorkerService($mc.$de0($req.args[0]));
}

/// Worker for TestOptDefPositional
base class TestOptDefPositionalWorker extends sq.Worker
    with _$TestOptDefPositional$Invoker, _$TestOptDefPositional$Facade
    implements TestOptDefPositional {
  TestOptDefPositionalWorker(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefPositionalWorker.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestOptDefPositional
base class TestOptDefPositionalWorkerPool
    extends sq.WorkerPool<TestOptDefPositionalWorker>
    with _$TestOptDefPositional$Facade
    implements TestOptDefPositional {
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

/// WorkerService operations for TestOptNullDefPositional
extension _$TestOptNullDefPositional$Operations on TestOptNullDefPositional {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptNullDefPositional, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefPositional$Invoker on sq.Invoker
    implements TestOptNullDefPositional {}

/// Facade for TestOptNullDefPositional, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptNullDefPositional$Facade implements TestOptNullDefPositional {}

/// WorkerService class for TestOptNullDefPositional
class _$TestOptNullDefPositional$WorkerService extends TestOptNullDefPositional
    implements sq.WorkerService {
  _$TestOptNullDefPositional$WorkerService([super.arg1 = 0]) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptNullDefPositional
sq.WorkerService $TestOptNullDefPositionalInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptNullDefPositional$WorkerService($mc.$de1($req.args[0]));
}

/// Worker for TestOptNullDefPositional
base class TestOptNullDefPositionalWorker extends sq.Worker
    with _$TestOptNullDefPositional$Invoker, _$TestOptNullDefPositional$Facade
    implements TestOptNullDefPositional {
  TestOptNullDefPositionalWorker(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullDefPositionalActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalWorker.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullDefPositionalActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestOptNullDefPositional
base class TestOptNullDefPositionalWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalWorker>
    with _$TestOptNullDefPositional$Facade
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

/// WorkerService operations for TestReqPositionalField
extension _$TestReqPositionalField$Operations on TestReqPositionalField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestReqPositionalField, implements the public interface to invoke the
/// remote service.
mixin _$TestReqPositionalField$Invoker on sq.Invoker
    implements TestReqPositionalField {}

/// Facade for TestReqPositionalField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestReqPositionalField$Facade implements TestReqPositionalField {}

/// WorkerService class for TestReqPositionalField
class _$TestReqPositionalField$WorkerService extends TestReqPositionalField
    implements sq.WorkerService {
  _$TestReqPositionalField$WorkerService(super.arg1) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestReqPositionalField
sq.WorkerService $TestReqPositionalFieldInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestReqPositionalField$WorkerService($mc.$de0($req.args[0]));
}

/// Worker for TestReqPositionalField
base class TestReqPositionalFieldWorker extends sq.Worker
    with _$TestReqPositionalField$Invoker, _$TestReqPositionalField$Facade
    implements TestReqPositionalField {
  TestReqPositionalFieldWorker(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalFieldActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestReqPositionalFieldWorker.vm(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  @override
  final int arg1;
}

/// Worker pool for TestReqPositionalField
base class TestReqPositionalFieldWorkerPool
    extends sq.WorkerPool<TestReqPositionalFieldWorker>
    with _$TestReqPositionalField$Facade
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

/// WorkerService operations for TestOptNullPositionalField
extension _$TestOptNullPositionalField$Operations
    on TestOptNullPositionalField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptNullPositionalField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullPositionalField$Invoker on sq.Invoker
    implements TestOptNullPositionalField {}

/// Facade for TestOptNullPositionalField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptNullPositionalField$Facade
    implements TestOptNullPositionalField {}

/// WorkerService class for TestOptNullPositionalField
class _$TestOptNullPositionalField$WorkerService
    extends TestOptNullPositionalField implements sq.WorkerService {
  _$TestOptNullPositionalField$WorkerService([super.arg1]) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptNullPositionalField
sq.WorkerService $TestOptNullPositionalFieldInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptNullPositionalField$WorkerService($mc.$de1($req.args[0]));
}

/// Worker for TestOptNullPositionalField
base class TestOptNullPositionalFieldWorker extends sq.Worker
    with
        _$TestOptNullPositionalField$Invoker,
        _$TestOptNullPositionalField$Facade
    implements TestOptNullPositionalField {
  TestOptNullPositionalFieldWorker(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalFieldActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullPositionalFieldWorker.vm(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullPositionalFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullPositionalField
base class TestOptNullPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptNullPositionalFieldWorker>
    with _$TestOptNullPositionalField$Facade
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

/// WorkerService operations for TestOptDefPositionalField
extension _$TestOptDefPositionalField$Operations on TestOptDefPositionalField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptDefPositionalField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefPositionalField$Invoker on sq.Invoker
    implements TestOptDefPositionalField {}

/// Facade for TestOptDefPositionalField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptDefPositionalField$Facade implements TestOptDefPositionalField {}

/// WorkerService class for TestOptDefPositionalField
class _$TestOptDefPositionalField$WorkerService
    extends TestOptDefPositionalField implements sq.WorkerService {
  _$TestOptDefPositionalField$WorkerService([super.arg1 = 0]) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptDefPositionalField
sq.WorkerService $TestOptDefPositionalFieldInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptDefPositionalField$WorkerService($mc.$de0($req.args[0]));
}

/// Worker for TestOptDefPositionalField
base class TestOptDefPositionalFieldWorker extends sq.Worker
    with _$TestOptDefPositionalField$Invoker, _$TestOptDefPositionalField$Facade
    implements TestOptDefPositionalField {
  TestOptDefPositionalFieldWorker(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalFieldActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefPositionalFieldWorker.vm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptDefPositionalFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  @override
  final int arg1;
}

/// Worker pool for TestOptDefPositionalField
base class TestOptDefPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptDefPositionalFieldWorker>
    with _$TestOptDefPositionalField$Facade
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

/// WorkerService operations for TestOptNullDefPositionalField
extension _$TestOptNullDefPositionalField$Operations
    on TestOptNullDefPositionalField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptNullDefPositionalField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefPositionalField$Invoker on sq.Invoker
    implements TestOptNullDefPositionalField {}

/// Facade for TestOptNullDefPositionalField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptNullDefPositionalField$Facade
    implements TestOptNullDefPositionalField {}

/// WorkerService class for TestOptNullDefPositionalField
class _$TestOptNullDefPositionalField$WorkerService
    extends TestOptNullDefPositionalField implements sq.WorkerService {
  _$TestOptNullDefPositionalField$WorkerService([super.arg1 = 0]) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptNullDefPositionalField
sq.WorkerService $TestOptNullDefPositionalFieldInitializer(
    sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptNullDefPositionalField$WorkerService($mc.$de1($req.args[0]));
}

/// Worker for TestOptNullDefPositionalField
base class TestOptNullDefPositionalFieldWorker extends sq.Worker
    with
        _$TestOptNullDefPositionalField$Invoker,
        _$TestOptNullDefPositionalField$Facade
    implements TestOptNullDefPositionalField {
  TestOptNullDefPositionalFieldWorker(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super($TestOptNullDefPositionalFieldActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalFieldWorker.vm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullDefPositionalField
base class TestOptNullDefPositionalFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalFieldWorker>
    with _$TestOptNullDefPositionalField$Facade
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

/// WorkerService operations for TestReqPositionalPrivateField
extension _$TestReqPositionalPrivateField$Operations
    on TestReqPositionalPrivateField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestReqPositionalPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestReqPositionalPrivateField$Invoker on sq.Invoker
    implements TestReqPositionalPrivateField {}

/// Facade for TestReqPositionalPrivateField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestReqPositionalPrivateField$Facade
    implements TestReqPositionalPrivateField {
  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestReqPositionalPrivateField
class _$TestReqPositionalPrivateField$WorkerService
    extends TestReqPositionalPrivateField implements sq.WorkerService {
  _$TestReqPositionalPrivateField$WorkerService(super.arg1) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestReqPositionalPrivateField
sq.WorkerService $TestReqPositionalPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestReqPositionalPrivateField$WorkerService($mc.$de0($req.args[0]));
}

/// Worker for TestReqPositionalPrivateField
base class TestReqPositionalPrivateFieldWorker extends sq.Worker
    with
        _$TestReqPositionalPrivateField$Invoker,
        _$TestReqPositionalPrivateField$Facade
    implements TestReqPositionalPrivateField {
  TestReqPositionalPrivateFieldWorker(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestReqPositionalPrivateFieldActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestReqPositionalPrivateFieldWorker.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestReqPositionalPrivateFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestReqPositionalPrivateField
base class TestReqPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestReqPositionalPrivateFieldWorker>
    with _$TestReqPositionalPrivateField$Facade
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
}

/// WorkerService operations for TestOptNullPositionalPrivateField
extension _$TestOptNullPositionalPrivateField$Operations
    on TestOptNullPositionalPrivateField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptNullPositionalPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullPositionalPrivateField$Invoker on sq.Invoker
    implements TestOptNullPositionalPrivateField {}

/// Facade for TestOptNullPositionalPrivateField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptNullPositionalPrivateField$Facade
    implements TestOptNullPositionalPrivateField {
  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullPositionalPrivateField
class _$TestOptNullPositionalPrivateField$WorkerService
    extends TestOptNullPositionalPrivateField implements sq.WorkerService {
  _$TestOptNullPositionalPrivateField$WorkerService([super.arg1]) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptNullPositionalPrivateField
sq.WorkerService $TestOptNullPositionalPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptNullPositionalPrivateField$WorkerService(
      $mc.$de1($req.args[0]));
}

/// Worker for TestOptNullPositionalPrivateField
base class TestOptNullPositionalPrivateFieldWorker extends sq.Worker
    with
        _$TestOptNullPositionalPrivateField$Invoker,
        _$TestOptNullPositionalPrivateField$Facade
    implements TestOptNullPositionalPrivateField {
  TestOptNullPositionalPrivateFieldWorker(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullPositionalPrivateFieldWorker.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestOptNullPositionalPrivateField
base class TestOptNullPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullPositionalPrivateFieldWorker>
    with _$TestOptNullPositionalPrivateField$Facade
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
}

/// WorkerService operations for TestOptDefPositionalPrivateField
extension _$TestOptDefPositionalPrivateField$Operations
    on TestOptDefPositionalPrivateField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptDefPositionalPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefPositionalPrivateField$Invoker on sq.Invoker
    implements TestOptDefPositionalPrivateField {}

/// Facade for TestOptDefPositionalPrivateField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptDefPositionalPrivateField$Facade
    implements TestOptDefPositionalPrivateField {
  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptDefPositionalPrivateField
class _$TestOptDefPositionalPrivateField$WorkerService
    extends TestOptDefPositionalPrivateField implements sq.WorkerService {
  _$TestOptDefPositionalPrivateField$WorkerService([super.arg1 = 0]) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptDefPositionalPrivateField
sq.WorkerService $TestOptDefPositionalPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptDefPositionalPrivateField$WorkerService(
      $mc.$de0($req.args[0]));
}

/// Worker for TestOptDefPositionalPrivateField
base class TestOptDefPositionalPrivateFieldWorker extends sq.Worker
    with
        _$TestOptDefPositionalPrivateField$Invoker,
        _$TestOptDefPositionalPrivateField$Facade
    implements TestOptDefPositionalPrivateField {
  TestOptDefPositionalPrivateFieldWorker(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefPositionalPrivateFieldWorker.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestOptDefPositionalPrivateField
base class TestOptDefPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptDefPositionalPrivateFieldWorker>
    with _$TestOptDefPositionalPrivateField$Facade
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
}

/// WorkerService operations for TestOptNullDefPositionalPrivateField
extension _$TestOptNullDefPositionalPrivateField$Operations
    on TestOptNullDefPositionalPrivateField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptNullDefPositionalPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefPositionalPrivateField$Invoker on sq.Invoker
    implements TestOptNullDefPositionalPrivateField {}

/// Facade for TestOptNullDefPositionalPrivateField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptNullDefPositionalPrivateField$Facade
    implements TestOptNullDefPositionalPrivateField {
  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullDefPositionalPrivateField
class _$TestOptNullDefPositionalPrivateField$WorkerService
    extends TestOptNullDefPositionalPrivateField implements sq.WorkerService {
  _$TestOptNullDefPositionalPrivateField$WorkerService([super.arg1 = 0])
      : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptNullDefPositionalPrivateField
sq.WorkerService $TestOptNullDefPositionalPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptNullDefPositionalPrivateField$WorkerService(
      $mc.$de1($req.args[0]));
}

/// Worker for TestOptNullDefPositionalPrivateField
base class TestOptNullDefPositionalPrivateFieldWorker extends sq.Worker
    with
        _$TestOptNullDefPositionalPrivateField$Invoker,
        _$TestOptNullDefPositionalPrivateField$Facade
    implements TestOptNullDefPositionalPrivateField {
  TestOptNullDefPositionalPrivateFieldWorker(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalPrivateFieldWorker.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestOptNullDefPositionalPrivateField
base class TestOptNullDefPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalPrivateFieldWorker>
    with _$TestOptNullDefPositionalPrivateField$Facade
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
}

/// WorkerService operations for TestOptNullNamed
extension _$TestOptNullNamed$Operations on TestOptNullNamed {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptNullNamed, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullNamed$Invoker on sq.Invoker implements TestOptNullNamed {}

/// Facade for TestOptNullNamed, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptNullNamed$Facade implements TestOptNullNamed {}

/// WorkerService class for TestOptNullNamed
class _$TestOptNullNamed$WorkerService extends TestOptNullNamed
    implements sq.WorkerService {
  _$TestOptNullNamed$WorkerService({super.arg1}) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptNullNamed
sq.WorkerService $TestOptNullNamedInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptNullNamed$WorkerService(arg1: $mc.$de1($req.args[0]));
}

/// Worker for TestOptNullNamed
base class TestOptNullNamedWorker extends sq.Worker
    with _$TestOptNullNamed$Invoker, _$TestOptNullNamed$Facade
    implements TestOptNullNamed {
  TestOptNullNamedWorker(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullNamedWorker.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestOptNullNamed
base class TestOptNullNamedWorkerPool
    extends sq.WorkerPool<TestOptNullNamedWorker>
    with _$TestOptNullNamed$Facade
    implements TestOptNullNamed {
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

/// WorkerService operations for TestOptDefNamed
extension _$TestOptDefNamed$Operations on TestOptDefNamed {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptDefNamed, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefNamed$Invoker on sq.Invoker implements TestOptDefNamed {}

/// Facade for TestOptDefNamed, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptDefNamed$Facade implements TestOptDefNamed {}

/// WorkerService class for TestOptDefNamed
class _$TestOptDefNamed$WorkerService extends TestOptDefNamed
    implements sq.WorkerService {
  _$TestOptDefNamed$WorkerService({super.arg1 = 0}) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptDefNamed
sq.WorkerService $TestOptDefNamedInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptDefNamed$WorkerService(arg1: $mc.$de0($req.args[0]));
}

/// Worker for TestOptDefNamed
base class TestOptDefNamedWorker extends sq.Worker
    with _$TestOptDefNamed$Invoker, _$TestOptDefNamed$Facade
    implements TestOptDefNamed {
  TestOptDefNamedWorker(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefNamedWorker.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestOptDefNamed
base class TestOptDefNamedWorkerPool
    extends sq.WorkerPool<TestOptDefNamedWorker>
    with _$TestOptDefNamed$Facade
    implements TestOptDefNamed {
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

/// WorkerService operations for TestOptNullDefNamed
extension _$TestOptNullDefNamed$Operations on TestOptNullDefNamed {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptNullDefNamed, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefNamed$Invoker on sq.Invoker
    implements TestOptNullDefNamed {}

/// Facade for TestOptNullDefNamed, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptNullDefNamed$Facade implements TestOptNullDefNamed {}

/// WorkerService class for TestOptNullDefNamed
class _$TestOptNullDefNamed$WorkerService extends TestOptNullDefNamed
    implements sq.WorkerService {
  _$TestOptNullDefNamed$WorkerService({super.arg1 = 0}) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptNullDefNamed
sq.WorkerService $TestOptNullDefNamedInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptNullDefNamed$WorkerService(arg1: $mc.$de1($req.args[0]));
}

/// Worker for TestOptNullDefNamed
base class TestOptNullDefNamedWorker extends sq.Worker
    with _$TestOptNullDefNamed$Invoker, _$TestOptNullDefNamed$Facade
    implements TestOptNullDefNamed {
  TestOptNullDefNamedWorker(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedWorker.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestOptNullDefNamed
base class TestOptNullDefNamedWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedWorker>
    with _$TestOptNullDefNamed$Facade
    implements TestOptNullDefNamed {
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

/// WorkerService operations for TestOptNullNamedField
extension _$TestOptNullNamedField$Operations on TestOptNullNamedField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptNullNamedField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullNamedField$Invoker on sq.Invoker
    implements TestOptNullNamedField {}

/// Facade for TestOptNullNamedField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptNullNamedField$Facade implements TestOptNullNamedField {}

/// WorkerService class for TestOptNullNamedField
class _$TestOptNullNamedField$WorkerService extends TestOptNullNamedField
    implements sq.WorkerService {
  _$TestOptNullNamedField$WorkerService({super.arg1}) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptNullNamedField
sq.WorkerService $TestOptNullNamedFieldInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptNullNamedField$WorkerService(arg1: $mc.$de1($req.args[0]));
}

/// Worker for TestOptNullNamedField
base class TestOptNullNamedFieldWorker extends sq.Worker
    with _$TestOptNullNamedField$Invoker, _$TestOptNullNamedField$Facade
    implements TestOptNullNamedField {
  TestOptNullNamedFieldWorker(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedFieldActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullNamedFieldWorker.vm(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullNamedField
base class TestOptNullNamedFieldWorkerPool
    extends sq.WorkerPool<TestOptNullNamedFieldWorker>
    with _$TestOptNullNamedField$Facade
    implements TestOptNullNamedField {
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

/// WorkerService operations for TestOptDefNamedField
extension _$TestOptDefNamedField$Operations on TestOptDefNamedField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptDefNamedField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefNamedField$Invoker on sq.Invoker
    implements TestOptDefNamedField {}

/// Facade for TestOptDefNamedField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptDefNamedField$Facade implements TestOptDefNamedField {}

/// WorkerService class for TestOptDefNamedField
class _$TestOptDefNamedField$WorkerService extends TestOptDefNamedField
    implements sq.WorkerService {
  _$TestOptDefNamedField$WorkerService({super.arg1 = 0}) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptDefNamedField
sq.WorkerService $TestOptDefNamedFieldInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptDefNamedField$WorkerService(arg1: $mc.$de0($req.args[0]));
}

/// Worker for TestOptDefNamedField
base class TestOptDefNamedFieldWorker extends sq.Worker
    with _$TestOptDefNamedField$Invoker, _$TestOptDefNamedField$Facade
    implements TestOptDefNamedField {
  TestOptDefNamedFieldWorker(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedFieldActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefNamedFieldWorker.vm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  @override
  final int arg1;
}

/// Worker pool for TestOptDefNamedField
base class TestOptDefNamedFieldWorkerPool
    extends sq.WorkerPool<TestOptDefNamedFieldWorker>
    with _$TestOptDefNamedField$Facade
    implements TestOptDefNamedField {
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

/// WorkerService operations for TestOptNullDefNamedField
extension _$TestOptNullDefNamedField$Operations on TestOptNullDefNamedField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptNullDefNamedField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefNamedField$Invoker on sq.Invoker
    implements TestOptNullDefNamedField {}

/// Facade for TestOptNullDefNamedField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptNullDefNamedField$Facade implements TestOptNullDefNamedField {}

/// WorkerService class for TestOptNullDefNamedField
class _$TestOptNullDefNamedField$WorkerService extends TestOptNullDefNamedField
    implements sq.WorkerService {
  _$TestOptNullDefNamedField$WorkerService({super.arg1 = 0}) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptNullDefNamedField
sq.WorkerService $TestOptNullDefNamedFieldInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptNullDefNamedField$WorkerService(arg1: $mc.$de1($req.args[0]));
}

/// Worker for TestOptNullDefNamedField
base class TestOptNullDefNamedFieldWorker extends sq.Worker
    with _$TestOptNullDefNamedField$Invoker, _$TestOptNullDefNamedField$Facade
    implements TestOptNullDefNamedField {
  TestOptNullDefNamedFieldWorker(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedFieldActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedFieldWorker.vm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullDefNamedFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  @override
  final int? arg1;
}

/// Worker pool for TestOptNullDefNamedField
base class TestOptNullDefNamedFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedFieldWorker>
    with _$TestOptNullDefNamedField$Facade
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

/// WorkerService operations for TestTypedData
extension _$TestTypedData$Operations on TestTypedData {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({
        _$barId: ($req) async {
          final typed_data.ByteBuffer? $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = await bar($mc.$de2($req.args[0]),
                title: $mc.$de3($req.args[1]),
                isLandscape: $mc.$de4($req.args[2]),
                columns: $mc.$de5($req.args[3]),
                columnWidths: $mc.$de6($req.args[4]),
                fontData: $mc.$de7($req.args[5]),
                titleFonts: $mc.$de8($req.args[6]),
                dataFonts: $mc.$de8($req.args[7]));
          } finally {}
          return $res;
        },
        _$fooId: ($req) async {
          final typed_data.Uint8List? $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = await foo($mc.$de2($req.args[0]),
                isLandscape: $mc.$de4($req.args[1]));
          } finally {}
          return $res;
        },
      });

  static const int _$barId = 1;
  static const int _$fooId = 2;
}

/// Invoker for TestTypedData, implements the public interface to invoke the
/// remote service.
mixin _$TestTypedData$Invoker on sq.Invoker implements TestTypedData {
  @override
  Future<typed_data.ByteBuffer?> bar(List<int> bytes,
      {String? title,
      bool isLandscape = true,
      List<String>? columns,
      Map<int, double>? columnWidths,
      typed_data.ByteData? fontData,
      Map<int, typed_data.ByteData>? titleFonts,
      Map<int, typed_data.ByteData>? dataFonts}) async {
    final dynamic $res;
    try {
      final $mc = _$X(contextAware: false);
      $res = await send(
        _$TestTypedData$Operations._$barId,
        args: [
          $mc.$se9(bytes),
          title,
          isLandscape,
          $mc.$se10(columns),
          $mc.$se11(columnWidths),
          fontData,
          $mc.$se11(titleFonts),
          $mc.$se11(dataFonts)
        ],
      );
    } finally {}
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de12($res);
    } finally {}
  }

  @override
  Future<typed_data.Uint8List?> foo(List<int> bytes,
      {bool isLandscape = true}) async {
    final dynamic $res;
    try {
      final $mc = _$X(contextAware: false);
      $res = await send(
        _$TestTypedData$Operations._$fooId,
        args: [$mc.$se9(bytes), isLandscape],
      );
    } finally {}
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de13($res);
    } finally {}
  }
}

/// Facade for TestTypedData, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestTypedData$Facade implements TestTypedData {}

/// WorkerService class for TestTypedData
class _$TestTypedData$WorkerService extends TestTypedData
    implements sq.WorkerService {
  _$TestTypedData$WorkerService() : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestTypedData
sq.WorkerService $TestTypedDataInitializer(sq.WorkerRequest $req) =>
    _$TestTypedData$WorkerService();

/// Worker for TestTypedData
base class TestTypedDataWorker extends sq.Worker
    with _$TestTypedData$Invoker, _$TestTypedData$Facade
    implements TestTypedData {
  TestTypedDataWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestTypedDataActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestTypedDataWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestTypedDataActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestTypedDataWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestTypedDataActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestTypedDataWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestTypedDataActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);
}

/// Worker pool for TestTypedData
base class TestTypedDataWorkerPool extends sq.WorkerPool<TestTypedDataWorker>
    with _$TestTypedData$Facade
    implements TestTypedData {
  TestTypedDataWorkerPool(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestTypedDataWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestTypedDataWorkerPool.vm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestTypedDataWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestTypedDataWorkerPool.js(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestTypedDataWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  TestTypedDataWorkerPool.wasm(
      {sq.ConcurrencySettings? concurrencySettings,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
          (sq.ExceptionManager exceptionManager) => TestTypedDataWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Future<typed_data.ByteBuffer?> bar(List<int> bytes,
          {String? title,
          bool isLandscape = true,
          List<String>? columns,
          Map<int, double>? columnWidths,
          typed_data.ByteData? fontData,
          Map<int, typed_data.ByteData>? titleFonts,
          Map<int, typed_data.ByteData>? dataFonts}) =>
      execute((w) => w.bar(bytes,
          title: title,
          isLandscape: isLandscape,
          columns: columns,
          columnWidths: columnWidths,
          fontData: fontData,
          titleFonts: titleFonts,
          dataFonts: dataFonts));

  @override
  Future<typed_data.Uint8List?> foo(List<int> bytes,
          {bool isLandscape = true}) =>
      execute((w) => w.foo(bytes, isLandscape: isLandscape));
}

/// WorkerService operations for TestOptNullNamedPrivateField
extension _$TestOptNullNamedPrivateField$Operations
    on TestOptNullNamedPrivateField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptNullNamedPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullNamedPrivateField$Invoker on sq.Invoker
    implements TestOptNullNamedPrivateField {}

/// Facade for TestOptNullNamedPrivateField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptNullNamedPrivateField$Facade
    implements TestOptNullNamedPrivateField {
  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullNamedPrivateField
class _$TestOptNullNamedPrivateField$WorkerService
    extends TestOptNullNamedPrivateField implements sq.WorkerService {
  _$TestOptNullNamedPrivateField$WorkerService({super.arg1}) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptNullNamedPrivateField
sq.WorkerService $TestOptNullNamedPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptNullNamedPrivateField$WorkerService(
      arg1: $mc.$de1($req.args[0]));
}

/// Worker for TestOptNullNamedPrivateField
base class TestOptNullNamedPrivateFieldWorker extends sq.Worker
    with
        _$TestOptNullNamedPrivateField$Invoker,
        _$TestOptNullNamedPrivateField$Facade
    implements TestOptNullNamedPrivateField {
  TestOptNullNamedPrivateFieldWorker(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptNullNamedPrivateFieldActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullNamedPrivateFieldWorker.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullNamedPrivateFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestOptNullNamedPrivateField
base class TestOptNullNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullNamedPrivateFieldWorker>
    with _$TestOptNullNamedPrivateField$Facade
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
}

/// WorkerService operations for TestOptDefNamedPrivateField
extension _$TestOptDefNamedPrivateField$Operations
    on TestOptDefNamedPrivateField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptDefNamedPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefNamedPrivateField$Invoker on sq.Invoker
    implements TestOptDefNamedPrivateField {}

/// Facade for TestOptDefNamedPrivateField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptDefNamedPrivateField$Facade
    implements TestOptDefNamedPrivateField {
  @override
  // ignore: unused_element
  int get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptDefNamedPrivateField
class _$TestOptDefNamedPrivateField$WorkerService
    extends TestOptDefNamedPrivateField implements sq.WorkerService {
  _$TestOptDefNamedPrivateField$WorkerService({super.arg1 = 0}) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptDefNamedPrivateField
sq.WorkerService $TestOptDefNamedPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptDefNamedPrivateField$WorkerService(
      arg1: $mc.$de0($req.args[0]));
}

/// Worker for TestOptDefNamedPrivateField
base class TestOptDefNamedPrivateFieldWorker extends sq.Worker
    with
        _$TestOptDefNamedPrivateField$Invoker,
        _$TestOptDefNamedPrivateField$Facade
    implements TestOptDefNamedPrivateField {
  TestOptDefNamedPrivateFieldWorker(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedPrivateFieldActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefNamedPrivateFieldWorker.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestOptDefNamedPrivateFieldActivator(sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestOptDefNamedPrivateField
base class TestOptDefNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptDefNamedPrivateFieldWorker>
    with _$TestOptDefNamedPrivateField$Facade
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
}

/// WorkerService operations for TestOptNullDefNamedPrivateField
extension _$TestOptNullDefNamedPrivateField$Operations
    on TestOptNullDefNamedPrivateField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestOptNullDefNamedPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefNamedPrivateField$Invoker on sq.Invoker
    implements TestOptNullDefNamedPrivateField {}

/// Facade for TestOptNullDefNamedPrivateField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptNullDefNamedPrivateField$Facade
    implements TestOptNullDefNamedPrivateField {
  @override
  // ignore: unused_element
  int? get _arg1 => throw UnimplementedError();
}

/// WorkerService class for TestOptNullDefNamedPrivateField
class _$TestOptNullDefNamedPrivateField$WorkerService
    extends TestOptNullDefNamedPrivateField implements sq.WorkerService {
  _$TestOptNullDefNamedPrivateField$WorkerService({super.arg1 = 0}) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptNullDefNamedPrivateField
sq.WorkerService $TestOptNullDefNamedPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptNullDefNamedPrivateField$WorkerService(
      arg1: $mc.$de1($req.args[0]));
}

/// Worker for TestOptNullDefNamedPrivateField
base class TestOptNullDefNamedPrivateFieldWorker extends sq.Worker
    with
        _$TestOptNullDefNamedPrivateField$Invoker,
        _$TestOptNullDefNamedPrivateField$Facade
    implements TestOptNullDefNamedPrivateField {
  TestOptNullDefNamedPrivateFieldWorker(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateFieldActivator(sq.Squadron.platformType),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedPrivateFieldWorker.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [arg1],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestOptNullDefNamedPrivateField
base class TestOptNullDefNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedPrivateFieldWorker>
    with _$TestOptNullDefNamedPrivateField$Facade
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
}

/// WorkerService operations for TestPrefixedImportType
extension _$TestPrefixedImportType$Operations on TestPrefixedImportType {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({
        _$getTypedDataId: ($req) => getTypedData(),
      });

  static const int _$getTypedDataId = 1;
}

/// Invoker for TestPrefixedImportType, implements the public interface to invoke the
/// remote service.
mixin _$TestPrefixedImportType$Invoker on sq.Invoker
    implements TestPrefixedImportType {
  @override
  Future<typed_data.Int8List?> getTypedData() async {
    final dynamic $res = await send(
      _$TestPrefixedImportType$Operations._$getTypedDataId,
    );
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de14($res);
    } finally {}
  }
}

/// Facade for TestPrefixedImportType, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestPrefixedImportType$Facade implements TestPrefixedImportType {}

/// WorkerService class for TestPrefixedImportType
class _$TestPrefixedImportType$WorkerService extends TestPrefixedImportType
    implements sq.WorkerService {
  _$TestPrefixedImportType$WorkerService(super.typedData) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestPrefixedImportType
sq.WorkerService $TestPrefixedImportTypeInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestPrefixedImportType$WorkerService($mc.$de15($req.args[0]));
}

/// Worker for TestPrefixedImportType
base class TestPrefixedImportTypeWorker extends sq.Worker
    with _$TestPrefixedImportType$Invoker, _$TestPrefixedImportType$Facade
    implements TestPrefixedImportType {
  TestPrefixedImportTypeWorker(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestPrefixedImportTypeActivator(sq.Squadron.platformType),
            args: [typedData],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestPrefixedImportTypeWorker.vm(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.vm),
            args: [typedData],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestPrefixedImportTypeWorker.js(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.js),
            args: [typedData],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestPrefixedImportTypeWorker.wasm(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.wasm),
            args: [typedData],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  @override
  final typed_data.Int8List typedData;
}

/// Worker pool for TestPrefixedImportType
base class TestPrefixedImportTypeWorkerPool
    extends sq.WorkerPool<TestPrefixedImportTypeWorker>
    with _$TestPrefixedImportType$Facade
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

/// WorkerService operations for TestOptNullDefNamedPrivateNonFinalField
extension _$TestOptNullDefNamedPrivateNonFinalField$Operations
    on TestOptNullDefNamedPrivateNonFinalField {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({
        _$getStateId: ($req) => getState(),
        _$setStateId: ($req) {
          final $mc = _$X(contextAware: false);
          return setState($mc.$de1($req.args[0]));
        },
      });

  static const int _$getStateId = 1;
  static const int _$setStateId = 2;
}

/// Invoker for TestOptNullDefNamedPrivateNonFinalField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefNamedPrivateNonFinalField$Invoker on sq.Invoker
    implements TestOptNullDefNamedPrivateNonFinalField {
  @override
  Future<int?> getState() async {
    final dynamic $res = await send(
      _$TestOptNullDefNamedPrivateNonFinalField$Operations._$getStateId,
    );
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de1($res);
    } finally {}
  }

  @override
  Future<void> setState(int? state) => send(
        _$TestOptNullDefNamedPrivateNonFinalField$Operations._$setStateId,
        args: [state],
      );
}

/// Facade for TestOptNullDefNamedPrivateNonFinalField, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestOptNullDefNamedPrivateNonFinalField$Facade
    implements TestOptNullDefNamedPrivateNonFinalField {
  @override
  // ignore: unused_element
  int? get _state => throw UnimplementedError();

  @override
  // ignore: unused_element
  set _state(void value) => throw UnimplementedError();
}

/// WorkerService class for TestOptNullDefNamedPrivateNonFinalField
class _$TestOptNullDefNamedPrivateNonFinalField$WorkerService
    extends TestOptNullDefNamedPrivateNonFinalField
    implements sq.WorkerService {
  _$TestOptNullDefNamedPrivateNonFinalField$WorkerService({super.state = 0})
      : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestOptNullDefNamedPrivateNonFinalField
sq.WorkerService $TestOptNullDefNamedPrivateNonFinalFieldInitializer(
    sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestOptNullDefNamedPrivateNonFinalField$WorkerService(
      state: $mc.$de1($req.args[0]));
}

/// Worker for TestOptNullDefNamedPrivateNonFinalField
base class TestOptNullDefNamedPrivateNonFinalFieldWorker extends sq.Worker
    with
        _$TestOptNullDefNamedPrivateNonFinalField$Invoker,
        _$TestOptNullDefNamedPrivateNonFinalField$Facade
    implements TestOptNullDefNamedPrivateNonFinalField {
  TestOptNullDefNamedPrivateNonFinalFieldWorker(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.Squadron.platformType),
            args: [state],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedPrivateNonFinalFieldWorker.vm(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.SquadronPlatformType.vm),
            args: [state],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [state],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// WorkerService operations for TestInstallable
extension _$TestInstallable$Operations on TestInstallable {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({});
}

/// Invoker for TestInstallable, implements the public interface to invoke the
/// remote service.
mixin _$TestInstallable$Invoker on sq.Invoker implements TestInstallable {}

/// Facade for TestInstallable, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestInstallable$Facade implements TestInstallable {
  @override
  FutureOr<void> install() => throw UnimplementedError();

  @override
  FutureOr<void> uninstall() => throw UnimplementedError();

  @override
  // ignore: unused_element
  int get _delay => throw UnimplementedError();
}

/// WorkerService class for TestInstallable
class _$TestInstallable$WorkerService extends TestInstallable
    implements sq.WorkerService {
  _$TestInstallable$WorkerService(super.delay) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestInstallable
sq.WorkerService $TestInstallableInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestInstallable$WorkerService($mc.$de0($req.args[0]));
}

/// Worker for TestInstallable
base class TestInstallableWorker extends sq.Worker
    with _$TestInstallable$Invoker, _$TestInstallable$Facade
    implements TestInstallable {
  TestInstallableWorker(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestInstallableActivator(sq.Squadron.platformType),
            args: [delay],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestInstallableWorker.vm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestInstallableActivator(sq.SquadronPlatformType.vm),
            args: [delay],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [delay],
            threadHook: threadHook,
            exceptionManager: exceptionManager);
}

/// Worker pool for TestInstallable
base class TestInstallableWorkerPool
    extends sq.WorkerPool<TestInstallableWorker>
    with _$TestInstallable$Facade
    implements TestInstallable {
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
}

/// WorkerService operations for TestRecordTypes
extension _$TestRecordTypes$Operations on TestRecordTypes {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({
        _$bothId: ($req) async {
          final (int, {List<int> items}) $res = await both();
          try {
            final $mc = _$X(contextAware: false);
            return $mc.$se16($res);
          } finally {}
        },
        _$inputId: ($req) async {
          final bool $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = await input($mc.$de17($req.args[0]), $mc.$de18($req.args[1]),
                $mc.$de19($req.args[2]));
          } finally {}
          return $res;
        },
        _$namedId: ($req) async {
          final ({int count, List<dynamic> items}) $res = await named();
          try {
            final $mc = _$X(contextAware: false);
            return $mc.$se20($res);
          } finally {}
        },
        _$unnamedId: ($req) async {
          final (int, List<dynamic>) $res = await unnamed();
          try {
            final $mc = _$X(contextAware: false);
            return $mc.$se21($res);
          } finally {}
        },
      });

  static const int _$bothId = 1;
  static const int _$inputId = 2;
  static const int _$namedId = 3;
  static const int _$unnamedId = 4;
}

/// Invoker for TestRecordTypes, implements the public interface to invoke the
/// remote service.
mixin _$TestRecordTypes$Invoker on sq.Invoker implements TestRecordTypes {
  @override
  Future<(int, {List<int> items})> both() async {
    final dynamic $res = await send(
      _$TestRecordTypes$Operations._$bothId,
    );
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de17($res);
    } finally {}
  }

  @override
  Future<bool> input((int, {List<int> items}) both, (int, List<dynamic>) pos,
      ({int count, List<dynamic> items}) named) async {
    final dynamic $res;
    try {
      final $mc = _$X(contextAware: false);
      $res = await send(
        _$TestRecordTypes$Operations._$inputId,
        args: [$mc.$se16(both), $mc.$se21(pos), $mc.$se20(named)],
      );
    } finally {}
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de4($res);
    } finally {}
  }

  @override
  Future<({int count, List<dynamic> items})> named() async {
    final dynamic $res = await send(
      _$TestRecordTypes$Operations._$namedId,
    );
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de19($res);
    } finally {}
  }

  @override
  Future<(int, List<dynamic>)> unnamed() async {
    final dynamic $res = await send(
      _$TestRecordTypes$Operations._$unnamedId,
    );
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de18($res);
    } finally {}
  }
}

/// Facade for TestRecordTypes, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestRecordTypes$Facade implements TestRecordTypes {}

/// WorkerService class for TestRecordTypes
class _$TestRecordTypes$WorkerService extends TestRecordTypes
    implements sq.WorkerService {
  _$TestRecordTypes$WorkerService() : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestRecordTypes
sq.WorkerService $TestRecordTypesInitializer(sq.WorkerRequest $req) =>
    _$TestRecordTypes$WorkerService();

/// Worker for TestRecordTypes
base class TestRecordTypesWorker extends sq.Worker
    with _$TestRecordTypes$Invoker, _$TestRecordTypes$Facade
    implements TestRecordTypes {
  TestRecordTypesWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestRecordTypesWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestRecordTypesWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestRecordTypesWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRecordTypesActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);
}

/// Worker pool for TestRecordTypes
base class TestRecordTypesWorkerPool
    extends sq.WorkerPool<TestRecordTypesWorker>
    with _$TestRecordTypes$Facade
    implements TestRecordTypes {
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

/// WorkerService operations for TestRequiredSuperParam
extension _$TestRequiredSuperParam$Operations on TestRequiredSuperParam {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({
        _$clearId: ($req) => clear(),
      });

  static const int _$clearId = 1;
}

/// Invoker for TestRequiredSuperParam, implements the public interface to invoke the
/// remote service.
mixin _$TestRequiredSuperParam$Invoker on sq.Invoker
    implements TestRequiredSuperParam {
  @override
  Future<void> clear() => send(
        _$TestRequiredSuperParam$Operations._$clearId,
      );
}

/// Facade for TestRequiredSuperParam, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestRequiredSuperParam$Facade implements TestRequiredSuperParam {}

/// WorkerService class for TestRequiredSuperParam
class _$TestRequiredSuperParam$WorkerService extends TestRequiredSuperParam
    implements sq.WorkerService {
  _$TestRequiredSuperParam$WorkerService({required super.path}) : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestRequiredSuperParam
sq.WorkerService $TestRequiredSuperParamInitializer(sq.WorkerRequest $req) {
  final $mc = _$X(contextAware: false);
  return _$TestRequiredSuperParam$WorkerService(path: $mc.$de22($req.args[0]));
}

/// Worker for TestRequiredSuperParam
base class TestRequiredSuperParamWorker extends sq.Worker
    with _$TestRequiredSuperParam$Invoker, _$TestRequiredSuperParam$Facade
    implements TestRequiredSuperParam {
  TestRequiredSuperParamWorker(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRequiredSuperParamActivator(sq.Squadron.platformType),
            args: [path],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestRequiredSuperParamWorker.vm(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestRequiredSuperParamActivator(sq.SquadronPlatformType.vm),
            args: [path],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

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
            args: [path],
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  @override
  final String path;
}

/// Worker pool for TestRequiredSuperParam
base class TestRequiredSuperParamWorkerPool
    extends sq.WorkerPool<TestRequiredSuperParamWorker>
    with _$TestRequiredSuperParam$Facade
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

/// WorkerService operations for TestBigInt
extension _$TestBigInt$Operations on TestBigInt {
  sq.OperationsMap _$getOperations() => Map.unmodifiable({
        _$addId: ($req) async {
          final BigInt $res;
          try {
            final $mc = _$X(contextAware: false);
            $res = await add($mc.$de23($req.args[0]), $mc.$de23($req.args[1]));
          } finally {}
          return $res;
        },
      });

  static const int _$addId = 1;
}

/// Invoker for TestBigInt, implements the public interface to invoke the
/// remote service.
mixin _$TestBigInt$Invoker on sq.Invoker implements TestBigInt {
  @override
  Future<BigInt> add(BigInt a, BigInt b) async {
    final dynamic $res = await send(
      _$TestBigInt$Operations._$addId,
      args: [a, b],
    );
    try {
      final $mc = _$X(contextAware: false);
      return $mc.$de23($res);
    } finally {}
  }
}

/// Facade for TestBigInt, implements other details of the service not related to
/// invoking the remote service.
mixin _$TestBigInt$Facade implements TestBigInt {}

/// WorkerService class for TestBigInt
class _$TestBigInt$WorkerService extends TestBigInt
    implements sq.WorkerService {
  _$TestBigInt$WorkerService() : super();

  sq.OperationsMap? _operations;

  @override
  sq.OperationsMap get operations => (_operations ??= _$getOperations());
}

/// Service initializer for TestBigInt
sq.WorkerService $TestBigIntInitializer(sq.WorkerRequest $req) =>
    _$TestBigInt$WorkerService();

/// Worker for TestBigInt
base class TestBigIntWorker extends sq.Worker
    with _$TestBigInt$Invoker, _$TestBigInt$Facade
    implements TestBigInt {
  TestBigIntWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestBigIntActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestBigIntWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestBigIntActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestBigIntWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestBigIntActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestBigIntWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestBigIntActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);
}

/// Worker pool for TestBigInt
base class TestBigIntWorkerPool extends sq.WorkerPool<TestBigIntWorker>
    with _$TestBigInt$Facade
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

final class _$X extends sq.MarshalingContext {
  _$X({super.contextAware});
  late final $de0 = value<int>();
  late final $de1 = nvalue<int>();
  late final $de2 = list<int>(value<int>());
  late final $de3 = nvalue<String>();
  late final $de4 = value<bool>();
  late final $de5 = sq.Converter.allowNull(list<String>(value<String>()));
  late final $de6 =
      sq.Converter.allowNull(map<int, double>(vcast: value<double>()));
  late final $de7 = nvalue<typed_data.ByteData>();
  late final $de8 = sq.Converter.allowNull(
      map<int, typed_data.ByteData>(vcast: value<typed_data.ByteData>()));
  late final $se9 = list<int>();
  late final $se10 = sq.Converter.allowNull(list<String>());
  late final $se11 = sq.Converter.allowNull(map());
  late final $de12 = nvalue<typed_data.ByteBuffer>();
  late final $de13 = nvalue<typed_data.Uint8List>();
  late final $de14 = nvalue<typed_data.Int8List>();
  late final $de15 = value<typed_data.Int8List>();
  late final $se16 = (((int, {List<int> items}) $) => [
        $.$1,
        list<int>()($.items),
      ]);
  late final $de17 = (($) {
    $ as List;
    return (
      value<int>()($[0]),
      items: list<int>(value<int>())($[1]),
    );
  });
  late final $de18 = (($) {
    $ as List;
    return (
      value<int>()($[0]),
      nlist<Object>(value<Object>())($[1]),
    );
  });
  late final $de19 = (($) {
    $ as List;
    return (
      count: value<int>()($[0]),
      items: nlist<Object>(value<Object>())($[1]),
    );
  });
  late final $se20 = ((({int count, List<dynamic> items}) $) => [
        $.count,
        nlist<Object>()($.items),
      ]);
  late final $se21 = (((int, List<dynamic>) $) => [
        $.$1,
        nlist<Object>()($.$2),
      ]);
  late final $de22 = value<String>();
  late final $de23 = value<BigInt>();
}
