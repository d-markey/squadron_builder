// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_service.dart';

// **************************************************************************
// SquadronWorkerGenerator
// **************************************************************************

// Operations map for MyService
mixin $MyServiceOperations on WorkerService {
  @override
  late final Map<int, CommandHandler> operations =
      _getOperations(this as MyService);

  static const int _$doSomethingId = 1;
  static const int _$doSomethingElseId = 2;
  static const int _$fibonacciId = 3;
  static const int _$fibonnacciStreamId = 4;
  static const int _$getSomeIterableId = 5;
  static const int _$getSomeListId = 6;

  static Map<int, CommandHandler> _getOperations(MyService svc) => {
        _$doSomethingId: (r) async {
          final res =
              await svc.doSomething(MyServiceRequest.fromJson(r.args[0]));
          return res.toJson();
        },
        _$doSomethingElseId: (r) async {
          final res = await svc.doSomethingElse((r.args[0] == null)
              ? null
              : MyServiceRequest.fromJson(r.args[0]));
          return res?.toJson();
        },
        _$fibonacciId: (r) => svc.fibonacci(r.args[0]),
        _$fibonnacciStreamId: (r) =>
            svc.fibonnacciStream(r.args[0], r.args[1], token: r.cancelToken),
        _$getSomeIterableId: (r) => svc.getSomeIterable(r.args[0]),
        _$getSomeListId: (r) => svc.getSomeList(r.args[0]),
      };
}

// Service initializer
MyService $MyServiceInitializer(WorkerRequest startRequest) =>
    MyService(MyServiceConfig<bool>.fromJson(startRequest.args[0]));

// Worker for MyService
class MyServiceWorker extends Worker
    with $MyServiceOperations
    implements MyService {
  MyServiceWorker(MyServiceConfig<bool> config)
      : super($MyServiceActivator, args: [config.toJson()]) {
    _finalizer.attach(this, this, detach: this);
  }

  static final _finalizer = Finalizer<MyServiceWorker>((w) {
    Squadron.info('FINALIZING WORKER ${w.workerId} $w');
    w.stop();
  });

  @override
  Future<MyServiceResponse<dynamic>> doSomething(MyServiceRequest request) =>
      send(
        $MyServiceOperations._$doSomethingId,
        args: [request.toJson()],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      ).then((res) => MyServiceResponse<dynamic>.fromJson(res));

  @override
  Future<MyServiceResponse<String>?> doSomethingElse(
          MyServiceRequest? request) =>
      send(
        $MyServiceOperations._$doSomethingElseId,
        args: [request?.toJson()],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      ).then((res) =>
          (res == null) ? null : MyServiceResponse<String>.fromJson(res));

  @override
  Future<int> fibonacci(int i) => send(
        $MyServiceOperations._$fibonacciId,
        args: [i],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      );

  @override
  Stream<int> fibonnacciStream(int start, int end,
          {CancellationToken? token}) =>
      stream(
        $MyServiceOperations._$fibonnacciStreamId,
        args: [start, end],
        token: token,
        inspectRequest: false,
        inspectResponse: false,
      );

  @override
  Future<Iterable<String?>?> getSomeIterable(int count) => send(
        $MyServiceOperations._$getSomeIterableId,
        args: [count],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      ).then((res) => res?.cast<String?>());

  @override
  Future<List<String?>?> getSomeList(int count) => send(
        $MyServiceOperations._$getSomeListId,
        args: [count],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      ).then((res) => res?.cast<String?>().toList());

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  MyServiceConfig<bool> get config => throw UnimplementedError();
}

// Worker pool for MyService
class MyServiceWorkerPool extends WorkerPool<MyServiceWorker>
    with $MyServiceOperations
    implements MyService {
  MyServiceWorkerPool(MyServiceConfig<bool> config,
      {ConcurrencySettings? concurrencySettings})
      : super(() => MyServiceWorker(config),
            concurrencySettings: concurrencySettings) {
    _finalizer.attach(this, this, detach: this);
  }

  static final _finalizer = Finalizer<MyServiceWorkerPool>((p) => p.stop());

  @override
  Future<MyServiceResponse<dynamic>> doSomething(MyServiceRequest request) =>
      execute((w) => w.doSomething(request));

  @override
  Future<MyServiceResponse<String>?> doSomethingElse(
          MyServiceRequest? request) =>
      execute((w) => w.doSomethingElse(request));

  @override
  Future<int> fibonacci(int i) => execute((w) => w.fibonacci(i));

  @override
  Stream<int> fibonnacciStream(int start, int end,
          {CancellationToken? token}) =>
      stream((w) => w.fibonnacciStream(start, end, token: token));

  @override
  Future<Iterable<String?>?> getSomeIterable(int count) =>
      execute((w) => w.getSomeIterable(count));

  @override
  Future<List<String?>?> getSomeList(int count) =>
      execute((w) => w.getSomeList(count));

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  MyServiceConfig<bool> get config => throw UnimplementedError();
}
