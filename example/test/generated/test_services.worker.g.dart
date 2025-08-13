// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../test_services.dart';

// **************************************************************************
// Generator: WorkerGenerator 7.1.5-mki (Squadron 7.1.2)
// **************************************************************************

/// Command ids used in operations map

/// WorkerService operations for TestParameterLess
extension on TestParameterLess {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestParameterLess, implements the public interface to invoke the
/// remote service.
mixin _$TestParameterLess$Invoker on sq.Invoker implements TestParameterLess {}

/// Facade for TestParameterLess, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestParameterLess$Facade implements TestParameterLess {}

/// WorkerService class for TestParameterLess
class _$TestParameterLess$WorkerService extends TestParameterLess
    implements sq.WorkerService {
  _$TestParameterLess$WorkerService() : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
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

  @override
  List? getStartArgs() => null;
}

/// Worker pool for TestParameterLess
base class TestParameterLessWorkerPool
    extends sq.WorkerPool<TestParameterLessWorker>
    with _$TestParameterLess$Facade
    implements TestParameterLess {
  TestParameterLessWorkerPool(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestParameterLessWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestParameterLessWorkerPool.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestParameterLessWorker.vm(
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestParameterLessWorkerPool.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestParameterLessWorker.js(
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestParameterLessWorkerPool.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestParameterLessWorker.wasm(
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map

/// WorkerService operations for TestReqPositional
extension on TestReqPositional {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestReqPositional, implements the public interface to invoke the
/// remote service.
mixin _$TestReqPositional$Invoker on sq.Invoker implements TestReqPositional {}

/// Facade for TestReqPositional, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestReqPositional$Facade implements TestReqPositional {}

/// WorkerService class for TestReqPositional
class _$TestReqPositional$WorkerService extends TestReqPositional
    implements sq.WorkerService {
  _$TestReqPositional$WorkerService(super.arg1) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestReqPositional
sq.WorkerService $TestReqPositionalInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestReqPositional$WorkerService($dsr.$0($req.args[0]));
}

/// Worker for TestReqPositional
base class TestReqPositionalWorker extends sq.Worker
    with _$TestReqPositional$Invoker, _$TestReqPositional$Facade
    implements TestReqPositional {
  TestReqPositionalWorker(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestReqPositionalActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestReqPositionalWorker.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestReqPositionalActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestReqPositionalWorker.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestReqPositionalActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestReqPositionalWorker.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestReqPositionalActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestReqPositional
base class TestReqPositionalWorkerPool
    extends sq.WorkerPool<TestReqPositionalWorker>
    with _$TestReqPositional$Facade
    implements TestReqPositional {
  TestReqPositionalWorkerPool(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestReqPositionalWorker(
                arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestReqPositionalWorkerPool.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalWorker.vm(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestReqPositionalWorkerPool.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalWorker.js(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestReqPositionalWorkerPool.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalWorker.wasm(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullPositional
extension on TestOptNullPositional {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullPositional, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullPositional$Invoker on sq.Invoker
    implements TestOptNullPositional {}

/// Facade for TestOptNullPositional, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullPositional$Facade implements TestOptNullPositional {}

/// WorkerService class for TestOptNullPositional
class _$TestOptNullPositional$WorkerService extends TestOptNullPositional
    implements sq.WorkerService {
  _$TestOptNullPositional$WorkerService([super.arg1]) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullPositional
sq.WorkerService $TestOptNullPositionalInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullPositional$WorkerService($dsr.$1($req.args[0]));
}

/// Worker for TestOptNullPositional
base class TestOptNullPositionalWorker extends sq.Worker
    with _$TestOptNullPositional$Invoker, _$TestOptNullPositional$Facade
    implements TestOptNullPositional {
  TestOptNullPositionalWorker(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptNullPositionalActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullPositionalWorker.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptNullPositionalActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullPositionalWorker.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptNullPositionalActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullPositionalWorker.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptNullPositionalActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestOptNullPositional
base class TestOptNullPositionalWorkerPool
    extends sq.WorkerPool<TestOptNullPositionalWorker>
    with _$TestOptNullPositional$Facade
    implements TestOptNullPositional {
  TestOptNullPositionalWorkerPool(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalWorker(arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullPositionalWorkerPool.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullPositionalWorkerPool.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullPositionalWorkerPool.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map

/// WorkerService operations for TestOptDefPositional
extension on TestOptDefPositional {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptDefPositional, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefPositional$Invoker on sq.Invoker
    implements TestOptDefPositional {}

/// Facade for TestOptDefPositional, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptDefPositional$Facade implements TestOptDefPositional {}

/// WorkerService class for TestOptDefPositional
class _$TestOptDefPositional$WorkerService extends TestOptDefPositional
    implements sq.WorkerService {
  _$TestOptDefPositional$WorkerService([super.arg1 = 0]) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptDefPositional
sq.WorkerService $TestOptDefPositionalInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptDefPositional$WorkerService($dsr.$0($req.args[0]));
}

/// Worker for TestOptDefPositional
base class TestOptDefPositionalWorker extends sq.Worker
    with _$TestOptDefPositional$Invoker, _$TestOptDefPositional$Facade
    implements TestOptDefPositional {
  TestOptDefPositionalWorker(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptDefPositionalActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefPositionalWorker.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptDefPositionalActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefPositionalWorker.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptDefPositionalActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefPositionalWorker.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptDefPositionalActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestOptDefPositional
base class TestOptDefPositionalWorkerPool
    extends sq.WorkerPool<TestOptDefPositionalWorker>
    with _$TestOptDefPositional$Facade
    implements TestOptDefPositional {
  TestOptDefPositionalWorkerPool(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalWorker(arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefPositionalWorkerPool.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefPositionalWorkerPool.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefPositionalWorkerPool.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullDefPositional
extension on TestOptNullDefPositional {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullDefPositional, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefPositional$Invoker on sq.Invoker
    implements TestOptNullDefPositional {}

/// Facade for TestOptNullDefPositional, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullDefPositional$Facade implements TestOptNullDefPositional {}

/// WorkerService class for TestOptNullDefPositional
class _$TestOptNullDefPositional$WorkerService extends TestOptNullDefPositional
    implements sq.WorkerService {
  _$TestOptNullDefPositional$WorkerService([super.arg1 = 0]) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullDefPositional
sq.WorkerService $TestOptNullDefPositionalInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullDefPositional$WorkerService($dsr.$1($req.args[0]));
}

/// Worker for TestOptNullDefPositional
base class TestOptNullDefPositionalWorker extends sq.Worker
    with _$TestOptNullDefPositional$Invoker, _$TestOptNullDefPositional$Facade
    implements TestOptNullDefPositional {
  TestOptNullDefPositionalWorker(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptNullDefPositionalActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullDefPositionalWorker.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptNullDefPositionalActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullDefPositionalWorker.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptNullDefPositionalActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullDefPositionalWorker.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptNullDefPositionalActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestOptNullDefPositional
base class TestOptNullDefPositionalWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalWorker>
    with _$TestOptNullDefPositional$Facade
    implements TestOptNullDefPositional {
  TestOptNullDefPositionalWorkerPool(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalWorker(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalWorkerPool.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalWorkerPool.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalWorkerPool.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map

/// WorkerService operations for TestReqPositionalField
extension on TestReqPositionalField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestReqPositionalField, implements the public interface to invoke the
/// remote service.
mixin _$TestReqPositionalField$Invoker on sq.Invoker
    implements TestReqPositionalField {}

/// Facade for TestReqPositionalField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestReqPositionalField$Facade implements TestReqPositionalField {}

/// WorkerService class for TestReqPositionalField
class _$TestReqPositionalField$WorkerService extends TestReqPositionalField
    implements sq.WorkerService {
  _$TestReqPositionalField$WorkerService(super.arg1) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestReqPositionalField
sq.WorkerService $TestReqPositionalFieldInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestReqPositionalField$WorkerService($dsr.$0($req.args[0]));
}

/// Worker for TestReqPositionalField
base class TestReqPositionalFieldWorker extends sq.Worker
    with _$TestReqPositionalField$Invoker, _$TestReqPositionalField$Facade
    implements TestReqPositionalField {
  TestReqPositionalFieldWorker(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestReqPositionalFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestReqPositionalFieldWorker.vm(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestReqPositionalFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestReqPositionalFieldWorker.js(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestReqPositionalFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestReqPositionalFieldWorker.wasm(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestReqPositionalFieldActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  @override
  final int arg1;
}

/// Worker pool for TestReqPositionalField
base class TestReqPositionalFieldWorkerPool
    extends sq.WorkerPool<TestReqPositionalFieldWorker>
    with _$TestReqPositionalField$Facade
    implements TestReqPositionalField {
  TestReqPositionalFieldWorkerPool(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalFieldWorker(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestReqPositionalFieldWorkerPool.vm(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalFieldWorker.vm(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestReqPositionalFieldWorkerPool.js(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalFieldWorker.js(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestReqPositionalFieldWorkerPool.wasm(this.arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalFieldWorker.wasm(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final int arg1;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullPositionalField
extension on TestOptNullPositionalField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullPositionalField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullPositionalField$Invoker on sq.Invoker
    implements TestOptNullPositionalField {}

/// Facade for TestOptNullPositionalField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullPositionalField$Facade
    implements TestOptNullPositionalField {}

/// WorkerService class for TestOptNullPositionalField
class _$TestOptNullPositionalField$WorkerService
    extends TestOptNullPositionalField implements sq.WorkerService {
  _$TestOptNullPositionalField$WorkerService([super.arg1]) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullPositionalField
sq.WorkerService $TestOptNullPositionalFieldInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullPositionalField$WorkerService($dsr.$1($req.args[0]));
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
      : _$startReq = [arg1],
        super($TestOptNullPositionalFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullPositionalFieldWorker.vm(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptNullPositionalFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullPositionalFieldWorker.js(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptNullPositionalFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullPositionalFieldWorker.wasm(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super(
            $TestOptNullPositionalFieldActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

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
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalFieldWorker(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullPositionalFieldWorkerPool.vm(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalFieldWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullPositionalFieldWorkerPool.js(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalFieldWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullPositionalFieldWorkerPool.wasm(
      [this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalFieldWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final int? arg1;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptDefPositionalField
extension on TestOptDefPositionalField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptDefPositionalField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefPositionalField$Invoker on sq.Invoker
    implements TestOptDefPositionalField {}

/// Facade for TestOptDefPositionalField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptDefPositionalField$Facade implements TestOptDefPositionalField {}

/// WorkerService class for TestOptDefPositionalField
class _$TestOptDefPositionalField$WorkerService
    extends TestOptDefPositionalField implements sq.WorkerService {
  _$TestOptDefPositionalField$WorkerService([super.arg1 = 0]) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptDefPositionalField
sq.WorkerService $TestOptDefPositionalFieldInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptDefPositionalField$WorkerService($dsr.$0($req.args[0]));
}

/// Worker for TestOptDefPositionalField
base class TestOptDefPositionalFieldWorker extends sq.Worker
    with _$TestOptDefPositionalField$Invoker, _$TestOptDefPositionalField$Facade
    implements TestOptDefPositionalField {
  TestOptDefPositionalFieldWorker(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptDefPositionalFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefPositionalFieldWorker.vm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptDefPositionalFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefPositionalFieldWorker.js(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptDefPositionalFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefPositionalFieldWorker.wasm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super($TestOptDefPositionalFieldActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

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
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalFieldWorker(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefPositionalFieldWorkerPool.vm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalFieldWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefPositionalFieldWorkerPool.js(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalFieldWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefPositionalFieldWorkerPool.wasm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalFieldWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final int arg1;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullDefPositionalField
extension on TestOptNullDefPositionalField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullDefPositionalField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefPositionalField$Invoker on sq.Invoker
    implements TestOptNullDefPositionalField {}

/// Facade for TestOptNullDefPositionalField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullDefPositionalField$Facade
    implements TestOptNullDefPositionalField {}

/// WorkerService class for TestOptNullDefPositionalField
class _$TestOptNullDefPositionalField$WorkerService
    extends TestOptNullDefPositionalField implements sq.WorkerService {
  _$TestOptNullDefPositionalField$WorkerService([super.arg1 = 0]) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullDefPositionalField
sq.WorkerService $TestOptNullDefPositionalFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullDefPositionalField$WorkerService($dsr.$1($req.args[0]));
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
      : _$startReq = [arg1],
        super($TestOptNullDefPositionalFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullDefPositionalFieldWorker.vm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super(
            $TestOptNullDefPositionalFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalFieldWorker.js(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super(
            $TestOptNullDefPositionalFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalFieldWorker.wasm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super(
            $TestOptNullDefPositionalFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

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
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalFieldWorker(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalFieldWorkerPool.vm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalFieldWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalFieldWorkerPool.js(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalFieldWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalFieldWorkerPool.wasm(
      [this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalFieldWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final int? arg1;
}

/// Command ids used in operations map

/// WorkerService operations for TestReqPositionalPrivateField
extension on TestReqPositionalPrivateField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestReqPositionalPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestReqPositionalPrivateField$Invoker on sq.Invoker
    implements TestReqPositionalPrivateField {}

/// Facade for TestReqPositionalPrivateField, implements other details of the service unrelated to
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

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestReqPositionalPrivateField
sq.WorkerService $TestReqPositionalPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestReqPositionalPrivateField$WorkerService($dsr.$0($req.args[0]));
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
      : _$startReq = [arg1],
        super($TestReqPositionalPrivateFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestReqPositionalPrivateFieldWorker.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super(
            $TestReqPositionalPrivateFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestReqPositionalPrivateFieldWorker.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super(
            $TestReqPositionalPrivateFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestReqPositionalPrivateFieldWorker.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super(
            $TestReqPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestReqPositionalPrivateField
base class TestReqPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestReqPositionalPrivateFieldWorker>
    with _$TestReqPositionalPrivateField$Facade
    implements TestReqPositionalPrivateField {
  TestReqPositionalPrivateFieldWorkerPool(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalPrivateFieldWorker(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestReqPositionalPrivateFieldWorkerPool.vm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalPrivateFieldWorker.vm(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestReqPositionalPrivateFieldWorkerPool.js(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalPrivateFieldWorker.js(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestReqPositionalPrivateFieldWorkerPool.wasm(int arg1,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestReqPositionalPrivateFieldWorker.wasm(arg1,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullPositionalPrivateField
extension on TestOptNullPositionalPrivateField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullPositionalPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullPositionalPrivateField$Invoker on sq.Invoker
    implements TestOptNullPositionalPrivateField {}

/// Facade for TestOptNullPositionalPrivateField, implements other details of the service unrelated to
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

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullPositionalPrivateField
sq.WorkerService $TestOptNullPositionalPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullPositionalPrivateField$WorkerService(
      $dsr.$1($req.args[0]));
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
      : _$startReq = [arg1],
        super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullPositionalPrivateFieldWorker.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullPositionalPrivateFieldWorker.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullPositionalPrivateFieldWorker.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super(
            $TestOptNullPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestOptNullPositionalPrivateField
base class TestOptNullPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullPositionalPrivateFieldWorker>
    with _$TestOptNullPositionalPrivateField$Facade
    implements TestOptNullPositionalPrivateField {
  TestOptNullPositionalPrivateFieldWorkerPool(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalPrivateFieldWorker(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullPositionalPrivateFieldWorkerPool.vm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalPrivateFieldWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullPositionalPrivateFieldWorkerPool.js(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalPrivateFieldWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullPositionalPrivateFieldWorkerPool.wasm(
      [int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullPositionalPrivateFieldWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map

/// WorkerService operations for TestOptDefPositionalPrivateField
extension on TestOptDefPositionalPrivateField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptDefPositionalPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefPositionalPrivateField$Invoker on sq.Invoker
    implements TestOptDefPositionalPrivateField {}

/// Facade for TestOptDefPositionalPrivateField, implements other details of the service unrelated to
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

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptDefPositionalPrivateField
sq.WorkerService $TestOptDefPositionalPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptDefPositionalPrivateField$WorkerService(
      $dsr.$0($req.args[0]));
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
      : _$startReq = [arg1],
        super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefPositionalPrivateFieldWorker.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefPositionalPrivateFieldWorker.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptDefPositionalPrivateFieldWorker.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super(
            $TestOptDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestOptDefPositionalPrivateField
base class TestOptDefPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptDefPositionalPrivateFieldWorker>
    with _$TestOptDefPositionalPrivateField$Facade
    implements TestOptDefPositionalPrivateField {
  TestOptDefPositionalPrivateFieldWorkerPool(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalPrivateFieldWorker(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefPositionalPrivateFieldWorkerPool.vm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalPrivateFieldWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefPositionalPrivateFieldWorkerPool.js(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalPrivateFieldWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefPositionalPrivateFieldWorkerPool.wasm(
      [int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefPositionalPrivateFieldWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullDefPositionalPrivateField
extension on TestOptNullDefPositionalPrivateField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullDefPositionalPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefPositionalPrivateField$Invoker on sq.Invoker
    implements TestOptNullDefPositionalPrivateField {}

/// Facade for TestOptNullDefPositionalPrivateField, implements other details of the service unrelated to
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

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullDefPositionalPrivateField
sq.WorkerService $TestOptNullDefPositionalPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullDefPositionalPrivateField$WorkerService(
      $dsr.$1($req.args[0]));
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
      : _$startReq = [arg1],
        super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.Squadron.platformType),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalPrivateFieldWorker.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalPrivateFieldWorker.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalPrivateFieldWorker.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager])
      : _$startReq = [arg1],
        super(
            $TestOptNullDefPositionalPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestOptNullDefPositionalPrivateField
base class TestOptNullDefPositionalPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefPositionalPrivateFieldWorker>
    with _$TestOptNullDefPositionalPrivateField$Facade
    implements TestOptNullDefPositionalPrivateField {
  TestOptNullDefPositionalPrivateFieldWorkerPool(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalPrivateFieldWorker(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalPrivateFieldWorkerPool.vm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalPrivateFieldWorker.vm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalPrivateFieldWorkerPool.js(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalPrivateFieldWorker.js(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefPositionalPrivateFieldWorkerPool.wasm(
      [int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings])
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefPositionalPrivateFieldWorker.wasm(
                    arg1, threadHook, exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullNamed
extension on TestOptNullNamed {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullNamed, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullNamed$Invoker on sq.Invoker implements TestOptNullNamed {}

/// Facade for TestOptNullNamed, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullNamed$Facade implements TestOptNullNamed {}

/// WorkerService class for TestOptNullNamed
class _$TestOptNullNamed$WorkerService extends TestOptNullNamed
    implements sq.WorkerService {
  _$TestOptNullNamed$WorkerService({super.arg1}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullNamed
sq.WorkerService $TestOptNullNamedInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullNamed$WorkerService(arg1: $dsr.$1($req.args[0]));
}

/// Worker for TestOptNullNamed
base class TestOptNullNamedWorker extends sq.Worker
    with _$TestOptNullNamed$Invoker, _$TestOptNullNamed$Facade
    implements TestOptNullNamed {
  TestOptNullNamedWorker(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullNamedActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullNamedWorker.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullNamedActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullNamedWorker.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullNamedActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullNamedWorker.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullNamedActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestOptNullNamed
base class TestOptNullNamedWorkerPool
    extends sq.WorkerPool<TestOptNullNamedWorker>
    with _$TestOptNullNamed$Facade
    implements TestOptNullNamed {
  TestOptNullNamedWorkerPool(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestOptNullNamedWorker(
                arg1: arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullNamedWorkerPool.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestOptNullNamedWorker.vm(
                arg1: arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullNamedWorkerPool.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestOptNullNamedWorker.js(
                arg1: arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullNamedWorkerPool.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map

/// WorkerService operations for TestOptDefNamed
extension on TestOptDefNamed {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptDefNamed, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefNamed$Invoker on sq.Invoker implements TestOptDefNamed {}

/// Facade for TestOptDefNamed, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptDefNamed$Facade implements TestOptDefNamed {}

/// WorkerService class for TestOptDefNamed
class _$TestOptDefNamed$WorkerService extends TestOptDefNamed
    implements sq.WorkerService {
  _$TestOptDefNamed$WorkerService({super.arg1 = 0}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptDefNamed
sq.WorkerService $TestOptDefNamedInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptDefNamed$WorkerService(arg1: $dsr.$0($req.args[0]));
}

/// Worker for TestOptDefNamed
base class TestOptDefNamedWorker extends sq.Worker
    with _$TestOptDefNamed$Invoker, _$TestOptDefNamed$Facade
    implements TestOptDefNamed {
  TestOptDefNamedWorker(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptDefNamedActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefNamedWorker.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptDefNamedActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefNamedWorker.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptDefNamedActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefNamedWorker.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptDefNamedActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestOptDefNamed
base class TestOptDefNamedWorkerPool
    extends sq.WorkerPool<TestOptDefNamedWorker>
    with _$TestOptDefNamed$Facade
    implements TestOptDefNamed {
  TestOptDefNamedWorkerPool(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestOptDefNamedWorker(
                arg1: arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefNamedWorkerPool.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestOptDefNamedWorker.vm(
                arg1: arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefNamedWorkerPool.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestOptDefNamedWorker.js(
                arg1: arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefNamedWorkerPool.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullDefNamed
extension on TestOptNullDefNamed {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullDefNamed, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefNamed$Invoker on sq.Invoker
    implements TestOptNullDefNamed {}

/// Facade for TestOptNullDefNamed, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullDefNamed$Facade implements TestOptNullDefNamed {}

/// WorkerService class for TestOptNullDefNamed
class _$TestOptNullDefNamed$WorkerService extends TestOptNullDefNamed
    implements sq.WorkerService {
  _$TestOptNullDefNamed$WorkerService({super.arg1 = 0}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullDefNamed
sq.WorkerService $TestOptNullDefNamedInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullDefNamed$WorkerService(arg1: $dsr.$1($req.args[0]));
}

/// Worker for TestOptNullDefNamed
base class TestOptNullDefNamedWorker extends sq.Worker
    with _$TestOptNullDefNamed$Invoker, _$TestOptNullDefNamed$Facade
    implements TestOptNullDefNamed {
  TestOptNullDefNamedWorker(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullDefNamedActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullDefNamedWorker.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullDefNamedActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullDefNamedWorker.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullDefNamedActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullDefNamedWorker.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullDefNamedActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestOptNullDefNamed
base class TestOptNullDefNamedWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedWorker>
    with _$TestOptNullDefNamed$Facade
    implements TestOptNullDefNamed {
  TestOptNullDefNamedWorkerPool(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestOptNullDefNamedWorker(
                arg1: arg1,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedWorkerPool.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedWorker.vm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedWorkerPool.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedWorker.js(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedWorkerPool.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullNamedField
extension on TestOptNullNamedField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullNamedField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullNamedField$Invoker on sq.Invoker
    implements TestOptNullNamedField {}

/// Facade for TestOptNullNamedField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullNamedField$Facade implements TestOptNullNamedField {}

/// WorkerService class for TestOptNullNamedField
class _$TestOptNullNamedField$WorkerService extends TestOptNullNamedField
    implements sq.WorkerService {
  _$TestOptNullNamedField$WorkerService({super.arg1}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullNamedField
sq.WorkerService $TestOptNullNamedFieldInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullNamedField$WorkerService(arg1: $dsr.$1($req.args[0]));
}

/// Worker for TestOptNullNamedField
base class TestOptNullNamedFieldWorker extends sq.Worker
    with _$TestOptNullNamedField$Invoker, _$TestOptNullNamedField$Facade
    implements TestOptNullNamedField {
  TestOptNullNamedFieldWorker(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullNamedFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullNamedFieldWorker.vm(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullNamedFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullNamedFieldWorker.js(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullNamedFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullNamedFieldWorker.wasm(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullNamedFieldActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

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
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedFieldWorker(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullNamedFieldWorkerPool.vm(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedFieldWorker.vm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullNamedFieldWorkerPool.js(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedFieldWorker.js(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullNamedFieldWorkerPool.wasm(
      {this.arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedFieldWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final int? arg1;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptDefNamedField
extension on TestOptDefNamedField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptDefNamedField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefNamedField$Invoker on sq.Invoker
    implements TestOptDefNamedField {}

/// Facade for TestOptDefNamedField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptDefNamedField$Facade implements TestOptDefNamedField {}

/// WorkerService class for TestOptDefNamedField
class _$TestOptDefNamedField$WorkerService extends TestOptDefNamedField
    implements sq.WorkerService {
  _$TestOptDefNamedField$WorkerService({super.arg1 = 0}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptDefNamedField
sq.WorkerService $TestOptDefNamedFieldInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptDefNamedField$WorkerService(arg1: $dsr.$0($req.args[0]));
}

/// Worker for TestOptDefNamedField
base class TestOptDefNamedFieldWorker extends sq.Worker
    with _$TestOptDefNamedField$Invoker, _$TestOptDefNamedField$Facade
    implements TestOptDefNamedField {
  TestOptDefNamedFieldWorker(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptDefNamedFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefNamedFieldWorker.vm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptDefNamedFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefNamedFieldWorker.js(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptDefNamedFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefNamedFieldWorker.wasm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptDefNamedFieldActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

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
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedFieldWorker(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefNamedFieldWorkerPool.vm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedFieldWorker.vm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefNamedFieldWorkerPool.js(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedFieldWorker.js(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefNamedFieldWorkerPool.wasm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedFieldWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final int arg1;
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullDefNamedField
extension on TestOptNullDefNamedField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullDefNamedField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefNamedField$Invoker on sq.Invoker
    implements TestOptNullDefNamedField {}

/// Facade for TestOptNullDefNamedField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullDefNamedField$Facade implements TestOptNullDefNamedField {}

/// WorkerService class for TestOptNullDefNamedField
class _$TestOptNullDefNamedField$WorkerService extends TestOptNullDefNamedField
    implements sq.WorkerService {
  _$TestOptNullDefNamedField$WorkerService({super.arg1 = 0}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullDefNamedField
sq.WorkerService $TestOptNullDefNamedFieldInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullDefNamedField$WorkerService(arg1: $dsr.$1($req.args[0]));
}

/// Worker for TestOptNullDefNamedField
base class TestOptNullDefNamedFieldWorker extends sq.Worker
    with _$TestOptNullDefNamedField$Invoker, _$TestOptNullDefNamedField$Facade
    implements TestOptNullDefNamedField {
  TestOptNullDefNamedFieldWorker(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullDefNamedFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullDefNamedFieldWorker.vm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullDefNamedFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullDefNamedFieldWorker.js(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullDefNamedFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullDefNamedFieldWorker.wasm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptNullDefNamedFieldActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

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
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedFieldWorker(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedFieldWorkerPool.vm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedFieldWorker.vm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedFieldWorkerPool.js(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedFieldWorker.js(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedFieldWorkerPool.wasm(
      {this.arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedFieldWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final int? arg1;
}

/// Command ids used in operations map
const int _$barId = 1;
const int _$fooId = 2;

/// WorkerService operations for TestTypedData
extension on TestTypedData {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$barId: ($req) async {
          final typed_data.ByteBuffer? $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await bar($dsr.$2($req.args[0]),
                title: $dsr.$4($req.args[1]),
                isLandscape: $dsr.$5($req.args[2]),
                columns: $dsr.$7($req.args[3]),
                columnWidths: $dsr.$10($req.args[4]),
                fontData: $dsr.$12($req.args[5]),
                titleFonts: $dsr.$14($req.args[6]),
                dataFonts: $dsr.$14($req.args[7]));
          } finally {}
          return $res;
        },
        _$fooId: ($req) async {
          final typed_data.Uint8List? $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await foo($dsr.$2($req.args[0]),
                isLandscape: $dsr.$5($req.args[1]));
          } finally {}
          return $res;
        },
      });
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
    final dynamic $res = await send(_$barId, args: [
      bytes,
      title,
      isLandscape,
      columns,
      columnWidths,
      fontData,
      titleFonts,
      dataFonts
    ]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$16($res);
    } finally {}
  }

  @override
  Future<typed_data.Uint8List?> foo(List<int> bytes,
      {bool isLandscape = true}) async {
    final dynamic $res = await send(_$fooId, args: [bytes, isLandscape]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$18($res);
    } finally {}
  }
}

/// Facade for TestTypedData, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestTypedData$Facade implements TestTypedData {}

/// WorkerService class for TestTypedData
class _$TestTypedData$WorkerService extends TestTypedData
    implements sq.WorkerService {
  _$TestTypedData$WorkerService() : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
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

  @override
  List? getStartArgs() => null;
}

/// Worker pool for TestTypedData
base class TestTypedDataWorkerPool extends sq.WorkerPool<TestTypedDataWorker>
    with _$TestTypedData$Facade
    implements TestTypedData {
  TestTypedDataWorkerPool(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestTypedDataWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestTypedDataWorkerPool.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestTypedDataWorker.vm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestTypedDataWorkerPool.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestTypedDataWorker.js(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestTypedDataWorkerPool.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestTypedDataWorker.wasm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

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

/// Command ids used in operations map

/// WorkerService operations for TestOptNullNamedPrivateField
extension on TestOptNullNamedPrivateField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullNamedPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullNamedPrivateField$Invoker on sq.Invoker
    implements TestOptNullNamedPrivateField {}

/// Facade for TestOptNullNamedPrivateField, implements other details of the service unrelated to
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

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullNamedPrivateField
sq.WorkerService $TestOptNullNamedPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullNamedPrivateField$WorkerService(
      arg1: $dsr.$1($req.args[0]));
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
      : _$startReq = [arg1],
        super($TestOptNullNamedPrivateFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptNullNamedPrivateFieldWorker.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super(
            $TestOptNullNamedPrivateFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullNamedPrivateFieldWorker.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super(
            $TestOptNullNamedPrivateFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullNamedPrivateFieldWorker.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super(
            $TestOptNullNamedPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestOptNullNamedPrivateField
base class TestOptNullNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullNamedPrivateFieldWorker>
    with _$TestOptNullNamedPrivateField$Facade
    implements TestOptNullNamedPrivateField {
  TestOptNullNamedPrivateFieldWorkerPool(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedPrivateFieldWorker(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullNamedPrivateFieldWorkerPool.vm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedPrivateFieldWorker.vm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullNamedPrivateFieldWorkerPool.js(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedPrivateFieldWorker.js(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullNamedPrivateFieldWorkerPool.wasm(
      {int? arg1,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullNamedPrivateFieldWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map

/// WorkerService operations for TestOptDefNamedPrivateField
extension on TestOptDefNamedPrivateField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptDefNamedPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptDefNamedPrivateField$Invoker on sq.Invoker
    implements TestOptDefNamedPrivateField {}

/// Facade for TestOptDefNamedPrivateField, implements other details of the service unrelated to
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

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptDefNamedPrivateField
sq.WorkerService $TestOptDefNamedPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptDefNamedPrivateField$WorkerService(
      arg1: $dsr.$0($req.args[0]));
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
      : _$startReq = [arg1],
        super($TestOptDefNamedPrivateFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefNamedPrivateFieldWorker.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptDefNamedPrivateFieldActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefNamedPrivateFieldWorker.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super($TestOptDefNamedPrivateFieldActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestOptDefNamedPrivateFieldWorker.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super(
            $TestOptDefNamedPrivateFieldActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestOptDefNamedPrivateField
base class TestOptDefNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptDefNamedPrivateFieldWorker>
    with _$TestOptDefNamedPrivateField$Facade
    implements TestOptDefNamedPrivateField {
  TestOptDefNamedPrivateFieldWorkerPool(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedPrivateFieldWorker(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefNamedPrivateFieldWorkerPool.vm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedPrivateFieldWorker.vm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefNamedPrivateFieldWorkerPool.js(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedPrivateFieldWorker.js(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptDefNamedPrivateFieldWorkerPool.wasm(
      {int arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptDefNamedPrivateFieldWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map

/// WorkerService operations for TestOptNullDefNamedPrivateField
extension on TestOptNullDefNamedPrivateField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestOptNullDefNamedPrivateField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefNamedPrivateField$Invoker on sq.Invoker
    implements TestOptNullDefNamedPrivateField {}

/// Facade for TestOptNullDefNamedPrivateField, implements other details of the service unrelated to
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

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullDefNamedPrivateField
sq.WorkerService $TestOptNullDefNamedPrivateFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullDefNamedPrivateField$WorkerService(
      arg1: $dsr.$1($req.args[0]));
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
      : _$startReq = [arg1],
        super(
            $TestOptNullDefNamedPrivateFieldActivator(sq.Squadron.platformType),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedPrivateFieldWorker.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super(
            $TestOptNullDefNamedPrivateFieldActivator(
                sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedPrivateFieldWorker.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super(
            $TestOptNullDefNamedPrivateFieldActivator(
                sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedPrivateFieldWorker.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [arg1],
        super(
            $TestOptNullDefNamedPrivateFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestOptNullDefNamedPrivateField
base class TestOptNullDefNamedPrivateFieldWorkerPool
    extends sq.WorkerPool<TestOptNullDefNamedPrivateFieldWorker>
    with _$TestOptNullDefNamedPrivateField$Facade
    implements TestOptNullDefNamedPrivateField {
  TestOptNullDefNamedPrivateFieldWorkerPool(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedPrivateFieldWorker(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedPrivateFieldWorkerPool.vm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedPrivateFieldWorker.vm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedPrivateFieldWorkerPool.js(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedPrivateFieldWorker.js(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedPrivateFieldWorkerPool.wasm(
      {int? arg1 = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestOptNullDefNamedPrivateFieldWorker.wasm(
                    arg1: arg1,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map
const int _$getTypedDataId = 1;

/// WorkerService operations for TestPrefixedImportType
extension on TestPrefixedImportType {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$getTypedDataId: ($req) => getTypedData(),
      });
}

/// Invoker for TestPrefixedImportType, implements the public interface to invoke the
/// remote service.
mixin _$TestPrefixedImportType$Invoker on sq.Invoker
    implements TestPrefixedImportType {
  @override
  Future<typed_data.Int8List?> getTypedData() async {
    final dynamic $res = await send(_$getTypedDataId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$20($res);
    } finally {}
  }
}

/// Facade for TestPrefixedImportType, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestPrefixedImportType$Facade implements TestPrefixedImportType {}

/// WorkerService class for TestPrefixedImportType
class _$TestPrefixedImportType$WorkerService extends TestPrefixedImportType
    implements sq.WorkerService {
  _$TestPrefixedImportType$WorkerService(super.typedData) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestPrefixedImportType
sq.WorkerService $TestPrefixedImportTypeInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestPrefixedImportType$WorkerService($dsr.$19($req.args[0]));
}

/// Worker for TestPrefixedImportType
base class TestPrefixedImportTypeWorker extends sq.Worker
    with _$TestPrefixedImportType$Invoker, _$TestPrefixedImportType$Facade
    implements TestPrefixedImportType {
  TestPrefixedImportTypeWorker(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(typedData)];
        })(),
        super($TestPrefixedImportTypeActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestPrefixedImportTypeWorker.vm(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(typedData)];
        })(),
        super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestPrefixedImportTypeWorker.js(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(typedData)];
        })(),
        super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestPrefixedImportTypeWorker.wasm(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = (() {
          final $sr = _$Ser(contextAware: false);
          return [$sr.$0(typedData)];
        })(),
        super($TestPrefixedImportTypeActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

  @override
  final typed_data.Int8List typedData;
}

/// Worker pool for TestPrefixedImportType
base class TestPrefixedImportTypeWorkerPool
    extends sq.WorkerPool<TestPrefixedImportTypeWorker>
    with _$TestPrefixedImportType$Facade
    implements TestPrefixedImportType {
  TestPrefixedImportTypeWorkerPool(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestPrefixedImportTypeWorker(typedData,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestPrefixedImportTypeWorkerPool.vm(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestPrefixedImportTypeWorker.vm(typedData,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestPrefixedImportTypeWorkerPool.js(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestPrefixedImportTypeWorker.js(typedData,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestPrefixedImportTypeWorkerPool.wasm(this.typedData,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestPrefixedImportTypeWorker.wasm(typedData,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final typed_data.Int8List typedData;

  @override
  Future<typed_data.Int8List?> getTypedData() =>
      execute((w) => w.getTypedData());
}

/// Command ids used in operations map
const int _$getStateId = 1;
const int _$setStateId = 2;

/// WorkerService operations for TestOptNullDefNamedPrivateNonFinalField
extension on TestOptNullDefNamedPrivateNonFinalField {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$getStateId: ($req) => getState(),
        _$setStateId: ($req) {
          final $dsr = _$Deser(contextAware: false);
          return setState($dsr.$1($req.args[0]));
        },
      });
}

/// Invoker for TestOptNullDefNamedPrivateNonFinalField, implements the public interface to invoke the
/// remote service.
mixin _$TestOptNullDefNamedPrivateNonFinalField$Invoker on sq.Invoker
    implements TestOptNullDefNamedPrivateNonFinalField {
  @override
  Future<int?> getState() async {
    final dynamic $res = await send(_$getStateId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$1($res);
    } finally {}
  }

  @override
  Future<void> setState(int? state) => send(_$setStateId, args: [state]);
}

/// Facade for TestOptNullDefNamedPrivateNonFinalField, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestOptNullDefNamedPrivateNonFinalField$Facade
    implements TestOptNullDefNamedPrivateNonFinalField {
  @override
  // ignore: unused_element
  int? get _state => throw UnimplementedError();

  @override
  // ignore: unused_element
  set _state(void $value) => throw UnimplementedError();
}

/// WorkerService class for TestOptNullDefNamedPrivateNonFinalField
class _$TestOptNullDefNamedPrivateNonFinalField$WorkerService
    extends TestOptNullDefNamedPrivateNonFinalField
    implements sq.WorkerService {
  _$TestOptNullDefNamedPrivateNonFinalField$WorkerService({super.state = 0})
      : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestOptNullDefNamedPrivateNonFinalField
sq.WorkerService $TestOptNullDefNamedPrivateNonFinalFieldInitializer(
    sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestOptNullDefNamedPrivateNonFinalField$WorkerService(
      state: $dsr.$1($req.args[0]));
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
      : _$startReq = [state],
        super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.Squadron.platformType),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedPrivateNonFinalFieldWorker.vm(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [state],
        super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.SquadronPlatformType.vm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedPrivateNonFinalFieldWorker.js(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [state],
        super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.SquadronPlatformType.js),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  TestOptNullDefNamedPrivateNonFinalFieldWorker.wasm(
      {int? state = 0,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [state],
        super(
            $TestOptNullDefNamedPrivateNonFinalFieldActivator(
                sq.SquadronPlatformType.wasm),
            threadHook: threadHook,
            exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Command ids used in operations map

/// WorkerService operations for TestInstallable
extension on TestInstallable {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({});
}

/// Invoker for TestInstallable, implements the public interface to invoke the
/// remote service.
mixin _$TestInstallable$Invoker on sq.Invoker implements TestInstallable {}

/// Facade for TestInstallable, implements other details of the service unrelated to
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

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestInstallable
sq.WorkerService $TestInstallableInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestInstallable$WorkerService($dsr.$0($req.args[0]));
}

/// Worker for TestInstallable
base class TestInstallableWorker extends sq.Worker
    with _$TestInstallable$Invoker, _$TestInstallable$Facade
    implements TestInstallable {
  TestInstallableWorker(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [delay],
        super($TestInstallableActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestInstallableWorker.vm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [delay],
        super($TestInstallableActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestInstallableWorker.js(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [delay],
        super($TestInstallableActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestInstallableWorker.wasm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [delay],
        super($TestInstallableActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;
}

/// Worker pool for TestInstallable
base class TestInstallableWorkerPool
    extends sq.WorkerPool<TestInstallableWorker>
    with _$TestInstallable$Facade
    implements TestInstallable {
  TestInstallableWorkerPool(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestInstallableWorker(
                delay,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestInstallableWorkerPool.vm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestInstallableWorker.vm(
                delay,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestInstallableWorkerPool.js(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestInstallableWorker.js(
                delay,
                threadHook: threadHook,
                exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestInstallableWorkerPool.wasm(int delay,
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestInstallableWorker.wasm(delay,
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);
}

/// Command ids used in operations map
const int _$bothId = 1;
const int _$inputId = 2;
const int _$namedId = 3;
const int _$unnamedId = 4;

/// WorkerService operations for TestRecordTypes
extension on TestRecordTypes {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$bothId: ($req) async {
          final (int, {List<int> items}) $res = await both();
          try {
            final $sr = _$Ser(contextAware: false);
            return $sr.$1($res);
          } finally {}
        },
        _$inputId: ($req) async {
          final bool $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await input($dsr.$21($req.args[0]), $dsr.$24($req.args[1]),
                $dsr.$25($req.args[2]));
          } finally {}
          return $res;
        },
        _$namedId: ($req) async {
          final ({int count, List<dynamic> items}) $res = await named();
          try {
            final $sr = _$Ser(contextAware: false);
            return $sr.$2($res);
          } finally {}
        },
        _$unnamedId: ($req) async {
          final (int, List<dynamic>) $res = await unnamed();
          try {
            final $sr = _$Ser(contextAware: false);
            return $sr.$3($res);
          } finally {}
        },
      });
}

/// Invoker for TestRecordTypes, implements the public interface to invoke the
/// remote service.
mixin _$TestRecordTypes$Invoker on sq.Invoker implements TestRecordTypes {
  @override
  Future<(int, {List<int> items})> both() async {
    final dynamic $res = await send(_$bothId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$21($res);
    } finally {}
  }

  @override
  Future<bool> input((int, {List<int> items}) both, (int, List<dynamic>) pos,
      ({int count, List<dynamic> items}) named) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: false);
      $res = await send(_$inputId,
          args: [$sr.$1(both), $sr.$3(pos), $sr.$2(named)]);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$5($res);
    } finally {}
  }

  @override
  Future<({int count, List<dynamic> items})> named() async {
    final dynamic $res = await send(_$namedId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$25($res);
    } finally {}
  }

  @override
  Future<(int, List<dynamic>)> unnamed() async {
    final dynamic $res = await send(_$unnamedId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$24($res);
    } finally {}
  }
}

/// Facade for TestRecordTypes, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestRecordTypes$Facade implements TestRecordTypes {}

/// WorkerService class for TestRecordTypes
class _$TestRecordTypes$WorkerService extends TestRecordTypes
    implements sq.WorkerService {
  _$TestRecordTypes$WorkerService() : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
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

  @override
  List? getStartArgs() => null;
}

/// Worker pool for TestRecordTypes
base class TestRecordTypesWorkerPool
    extends sq.WorkerPool<TestRecordTypesWorker>
    with _$TestRecordTypes$Facade
    implements TestRecordTypes {
  TestRecordTypesWorkerPool(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestRecordTypesWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestRecordTypesWorkerPool.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestRecordTypesWorker.vm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestRecordTypesWorkerPool.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestRecordTypesWorker.js(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestRecordTypesWorkerPool.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestRecordTypesWorker.wasm(
                    threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

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

/// Command ids used in operations map
const int _$clearId = 1;

/// WorkerService operations for TestRequiredSuperParam
extension on TestRequiredSuperParam {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$clearId: ($req) => clear(),
      });
}

/// Invoker for TestRequiredSuperParam, implements the public interface to invoke the
/// remote service.
mixin _$TestRequiredSuperParam$Invoker on sq.Invoker
    implements TestRequiredSuperParam {
  @override
  Future<void> clear() => send(_$clearId);
}

/// Facade for TestRequiredSuperParam, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestRequiredSuperParam$Facade implements TestRequiredSuperParam {}

/// WorkerService class for TestRequiredSuperParam
class _$TestRequiredSuperParam$WorkerService extends TestRequiredSuperParam
    implements sq.WorkerService {
  _$TestRequiredSuperParam$WorkerService({required super.path}) : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestRequiredSuperParam
sq.WorkerService $TestRequiredSuperParamInitializer(sq.WorkerRequest $req) {
  final $dsr = _$Deser(contextAware: false);
  return _$TestRequiredSuperParam$WorkerService(path: $dsr.$3($req.args[0]));
}

/// Worker for TestRequiredSuperParam
base class TestRequiredSuperParamWorker extends sq.Worker
    with _$TestRequiredSuperParam$Invoker, _$TestRequiredSuperParam$Facade
    implements TestRequiredSuperParam {
  TestRequiredSuperParamWorker(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [path],
        super($TestRequiredSuperParamActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestRequiredSuperParamWorker.vm(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [path],
        super($TestRequiredSuperParamActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestRequiredSuperParamWorker.js(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [path],
        super($TestRequiredSuperParamActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestRequiredSuperParamWorker.wasm(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : _$startReq = [path],
        super($TestRequiredSuperParamActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  final List _$startReq;

  @override
  List? getStartArgs() => _$startReq;

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
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestRequiredSuperParamWorker(
                    path: path,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestRequiredSuperParamWorkerPool.vm(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestRequiredSuperParamWorker.vm(
                    path: path,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestRequiredSuperParamWorkerPool.js(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestRequiredSuperParamWorker.js(
                    path: path,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestRequiredSuperParamWorkerPool.wasm(
      {required this.path,
      sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) =>
                TestRequiredSuperParamWorker.wasm(
                    path: path,
                    threadHook: threadHook,
                    exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  final String path;

  @override
  Future<void> clear() => execute((w) => w.clear());
}

/// Command ids used in operations map
const int _$addId = 1;

/// WorkerService operations for TestBigInt
extension on TestBigInt {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$addId: ($req) async {
          final BigInt $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await add($dsr.$26($req.args[0]), $dsr.$26($req.args[1]));
          } finally {}
          return $res;
        },
      });
}

/// Invoker for TestBigInt, implements the public interface to invoke the
/// remote service.
mixin _$TestBigInt$Invoker on sq.Invoker implements TestBigInt {
  @override
  Future<BigInt> add(BigInt a, BigInt b) async {
    final dynamic $res = await send(_$addId, args: [a, b]);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$26($res);
    } finally {}
  }
}

/// Facade for TestBigInt, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestBigInt$Facade implements TestBigInt {}

/// WorkerService class for TestBigInt
class _$TestBigInt$WorkerService extends TestBigInt
    implements sq.WorkerService {
  _$TestBigInt$WorkerService() : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
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

  @override
  List? getStartArgs() => null;
}

/// Worker pool for TestBigInt
base class TestBigIntWorkerPool extends sq.WorkerPool<TestBigIntWorker>
    with _$TestBigInt$Facade
    implements TestBigInt {
  TestBigIntWorkerPool(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestBigIntWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestBigIntWorkerPool.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestBigIntWorker.vm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestBigIntWorkerPool.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestBigIntWorker.js(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestBigIntWorkerPool.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestBigIntWorker.wasm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  Future<BigInt> add(BigInt a, BigInt b) => execute((w) => w.add(a, b));
}

/// Command ids used in operations map
const int _$manyId = 1;
const int _$oneId = 2;

/// WorkerService operations for TestCustomData
extension on TestCustomData {
  sq.OperationsMap _$getOperations() => sq.OperationsMap({
        _$manyId: ($req) async {
          final List<CustomData> $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await many($dsr.$28($req.args[0]));
          } finally {}
          try {
            final $sr = _$Ser(contextAware: false);
            return $sr.$5($res);
          } finally {}
        },
        _$oneId: ($req) async {
          final CustomData $res;
          try {
            final $dsr = _$Deser(contextAware: false);
            $res = await one($dsr.$27($req.args[0]));
          } finally {}
          try {
            final $sr = _$Ser(contextAware: false);
            return $sr.$4($res);
          } finally {}
        },
      });
}

/// Invoker for TestCustomData, implements the public interface to invoke the
/// remote service.
mixin _$TestCustomData$Invoker on sq.Invoker implements TestCustomData {
  @override
  Future<List<CustomData>> many(List<CustomData> data) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: false);
      $res = await send(_$manyId, args: [$sr.$5(data)]);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$28($res);
    } finally {}
  }

  @override
  Future<CustomData> one(CustomData data) async {
    final dynamic $res;
    try {
      final $sr = _$Ser(contextAware: false);
      $res = await send(_$oneId, args: [$sr.$4(data)]);
    } finally {}
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$27($res);
    } finally {}
  }
}

/// Facade for TestCustomData, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$TestCustomData$Facade implements TestCustomData {}

/// WorkerService class for TestCustomData
class _$TestCustomData$WorkerService extends TestCustomData
    implements sq.WorkerService {
  _$TestCustomData$WorkerService() : super();

  @override
  sq.OperationsMap get operations => _$getOperations();
}

/// Service initializer for TestCustomData
sq.WorkerService $TestCustomDataInitializer(sq.WorkerRequest $req) =>
    _$TestCustomData$WorkerService();

/// Worker for TestCustomData
base class TestCustomDataWorker extends sq.Worker
    with _$TestCustomData$Invoker, _$TestCustomData$Facade
    implements TestCustomData {
  TestCustomDataWorker(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestCustomDataActivator(sq.Squadron.platformType),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestCustomDataWorker.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestCustomDataActivator(sq.SquadronPlatformType.vm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestCustomDataWorker.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestCustomDataActivator(sq.SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  TestCustomDataWorker.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager})
      : super($TestCustomDataActivator(sq.SquadronPlatformType.wasm),
            threadHook: threadHook, exceptionManager: exceptionManager);

  @override
  List? getStartArgs() => null;
}

/// Worker pool for TestCustomData
base class TestCustomDataWorkerPool extends sq.WorkerPool<TestCustomDataWorker>
    with _$TestCustomData$Facade
    implements TestCustomData {
  TestCustomDataWorkerPool(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestCustomDataWorker(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestCustomDataWorkerPool.vm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestCustomDataWorker.vm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestCustomDataWorkerPool.js(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestCustomDataWorker.js(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  TestCustomDataWorkerPool.wasm(
      {sq.PlatformThreadHook? threadHook,
      sq.ExceptionManager? exceptionManager,
      sq.ConcurrencySettings? concurrencySettings})
      : super(
            (sq.ExceptionManager exceptionManager) => TestCustomDataWorker.wasm(
                threadHook: threadHook, exceptionManager: exceptionManager),
            concurrencySettings: concurrencySettings,
            exceptionManager: exceptionManager);

  @override
  Future<List<CustomData>> many(List<CustomData> data) =>
      execute((w) => w.many(data));

  @override
  Future<CustomData> one(CustomData data) => execute((w) => w.one(data));
}

final class _$Deser extends sq.MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<int>();
  late final $1 = sq.Converter.allowNull($0);
  late final $2 = list<int>($0);
  late final $3 = value<String>();
  late final $4 = sq.Converter.allowNull($3);
  late final $5 = value<bool>();
  late final $6 = list<String>($3);
  late final $7 = sq.Converter.allowNull($6);
  late final $8 = value<double>();
  late final $9 = map<int, double>(kcast: $0, vcast: $8);
  late final $10 = sq.Converter.allowNull($9);
  late final $11 = value<typed_data.ByteData>();
  late final $12 = sq.Converter.allowNull($11);
  late final $13 = map<int, typed_data.ByteData>(kcast: $0, vcast: $11);
  late final $14 = sq.Converter.allowNull($13);
  late final $15 = value<typed_data.ByteBuffer>();
  late final $16 = sq.Converter.allowNull($15);
  late final $17 = value<typed_data.Uint8List>();
  late final $18 = sq.Converter.allowNull($17);
  late final $19 = value<typed_data.Int8List>();
  late final $20 = sq.Converter.allowNull($19);
  late final $21 = (($) {
    $ as List;
    return ($0($[0]), items: $2($[1]));
  });
  late final $22 = value<Object>();
  late final $23 = nlist<Object>($22);
  late final $24 = (($) {
    $ as List;
    return ($0($[0]), $23($[1]));
  });
  late final $25 = (($) {
    $ as List;
    return (count: $0($[0]), items: $23($[1]));
  });
  late final $26 = value<BigInt>();
  late final $27 = (($) => CustomData.fromJson($));
  late final $28 = list<CustomData>($27);
}

final class _$Ser extends sq.MarshalingContext {
  _$Ser({super.contextAware});
  late final $0 = value<typed_data.Int8List>();
  late final $1 = (((int, {List<int> items}) $) => [$.$1, $.items]);
  late final $2 =
      ((({int count, List<dynamic> items}) $) => [$.count, $.items]);
  late final $3 = (((int, List<dynamic>) $) => [$.$1, $.$2]);
  late final $4 = (($) => ($ as CustomData).toJson());
  late final $5 = list($4);
}
