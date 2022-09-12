// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_service.dart';

// **************************************************************************
// SquadronWorkerGenerator
// **************************************************************************

// Operations map for MyService
Map<int, CommandHandler> _$getMyServiceOperations(MyService instance) => {
      1: (r) async {
        final res =
            await instance.doSomething(MyServiceRequest.fromJson(r.args[0]));
        return res.toJson();
      },
      2: (r) async {
        final res = await instance.doSomethingElse(
            (r.args[0] == null) ? null : MyServiceRequest.fromJson(r.args[0]));
        return res?.toJson();
      },
      3: (r) => instance.fibonacci(r.args[0]),
      4: (r) =>
          instance.fibonnacciStream(r.args[0], r.args[1], token: r.cancelToken),
      5: (r) async {
        final res = await instance.getConfig();
        return res.toJson();
      },
    };

// Service initializer
MyService $MyServiceInitializer(WorkerRequest startRequest) =>
    MyService(MyServiceConfig.fromJson(startRequest.args[0]));

// Worker for MyService
class MyServiceWorker extends Worker implements MyService {
  MyServiceWorker(MyServiceConfig config)
      : super($MyServiceActivator, args: [config.toJson()]);

  @override
  Future<MyServiceResponse> doSomething(MyServiceRequest request) => send(
        1,
        args: [request.toJson()],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      ).then((res) => MyServiceResponse.fromJson(res));
  @override
  Future<MyServiceResponse?> doSomethingElse(MyServiceRequest? request) => send(
        2,
        args: [request?.toJson()],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      ).then((res) => (res == null) ? null : MyServiceResponse.fromJson(res));
  @override
  Future<int> fibonacci(int i) => send(
        3,
        args: [i],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      );
  @override
  Stream<int> fibonnacciStream(int start, int end,
          {CancellationToken? token}) =>
      stream(
        4,
        args: [start, end],
        token: token,
        inspectRequest: false,
        inspectResponse: false,
      );
  @override
  Future<MyServiceResponse> getConfig() => send(
        5,
        args: [],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      ).then((res) => MyServiceResponse.fromJson(res));

  @override
  MyServiceConfig get config => throw UnimplementedError();
  @override
  Map<int, FutureOr<dynamic> Function(WorkerRequest)> get operations =>
      throw UnimplementedError();
}

// Worker pool for MyService
class MyServiceWorkerPool extends WorkerPool<MyServiceWorker>
    implements MyService {
  MyServiceWorkerPool(MyServiceConfig config,
      {ConcurrencySettings? concurrencySettings})
      : super(() => MyServiceWorker(config),
            concurrencySettings: concurrencySettings);

  @override
  Future<MyServiceResponse> doSomething(MyServiceRequest request) =>
      execute((w) => w.doSomething(request));
  @override
  Future<MyServiceResponse?> doSomethingElse(MyServiceRequest? request) =>
      execute((w) => w.doSomethingElse(request));
  @override
  Future<int> fibonacci(int i) => execute((w) => w.fibonacci(i));
  @override
  Stream<int> fibonnacciStream(int start, int end,
          {CancellationToken? token}) =>
      stream((w) => w.fibonnacciStream(start, end, token: token));
  @override
  Future<MyServiceResponse> getConfig() => execute((w) => w.getConfig());

  @override
  MyServiceConfig get config => throw UnimplementedError();
  @override
  Map<int, FutureOr<dynamic> Function(WorkerRequest)> get operations =>
      throw UnimplementedError();
}
