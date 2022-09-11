// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_service.dart';

// **************************************************************************
// SquadronServiceGenerator
// **************************************************************************

// Operations map for MyService
Map<int, CommandHandler> buildMyServiceOperations(MyService instance) => {
      1: (r) => instance.doSomething(MyRequest.fromJson(r.args[0])),
      2: (r) => instance.doSomethingElse(
          (r.args[0] == null) ? null : MyRequest.fromJson(r.args[0])),
      3: (r) => instance.fibonacci(r.args[0]),
    };

// Worker for MyService
class MyServiceWorker extends Worker implements MyService {
  MyServiceWorker() : super($MyServiceActivator);

  @override
  Future<MyResponse> doSomething(MyRequest request) => send(
        1,
        args: [request.toJson()],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      ).then((res) => res.toJson());
  @override
  Future<MyResponse> doSomethingElse(MyRequest? request) => send(
        2,
        args: [(request == null) ? null : request.toJson()],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      ).then((res) => res.toJson());
  @override
  Future<int> fibonacci(int i) => send(
        3,
        args: [i],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      );
}

// Worker pool for MyService
class MyServiceWorkerPool extends WorkerPool<MyServiceWorker>
    implements MyService {
  MyServiceWorkerPool({ConcurrencySettings? concurrencySettings})
      : super(() => MyServiceWorker(),
            concurrencySettings: concurrencySettings);

  @override
  Future<MyResponse> doSomething(MyRequest request) =>
      execute((w) => w.doSomething(request));
  @override
  Future<MyResponse> doSomethingElse(MyRequest? request) =>
      execute((w) => w.doSomethingElse(request));
  @override
  Future<int> fibonacci(int i) => execute((w) => w.fibonacci(i));
}
