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
      : super($MyServiceActivator, args: [config.toJson()]);

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
            concurrencySettings: concurrencySettings);

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
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  MyServiceConfig<bool> get config => throw UnimplementedError();
}
