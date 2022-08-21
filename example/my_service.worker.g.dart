// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_service.dart';

// **************************************************************************
// SquadronServiceGenerator
// **************************************************************************

Map<int, CommandHandler> buildMyServiceOperations(MyService instance) => {
      1: (r) => instance.fibonacci(r.args[0]),
    };

// Worker for MyService
class MyServiceWorker extends Worker implements MyService {
  MyServiceWorker() : super($MyServiceActivator);

  @override
  Future<int> fibonacci(int i) => send(1,
      args: [i], token: null, inspectRequest: false, inspectResponse: false);
}

// Worker pool for MyService
class MyServiceWorkerPool extends WorkerPool<MyServiceWorker>
    implements MyService {
  MyServiceWorkerPool({ConcurrencySettings? concurrencySettings})
      : super(() => MyServiceWorker(),
            concurrencySettings: concurrencySettings);
  @override
  Future<int> fibonacci(int i) => execute((w) => w.fibonacci(i));
}
