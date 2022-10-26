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

  static const int _$explicitEchoWithExplicitResultId = 1;
  static const int _$explicitEchoWithJsonResultId = 2;
  static const int _$fibonacciId = 3;
  static const int _$fibonacciList0Id = 4;
  static const int _$fibonacciList1Id = 5;
  static const int _$fibonacciList2Id = 6;
  static const int _$fibonacciStreamId = 7;
  static const int _$jsonEchoWithExplicitResultId = 8;
  static const int _$jsonEchoWithJsonResultId = 9;
  static const int _$jsonEncodeEchoId = 10;

  static Map<int, CommandHandler> _getOperations(MyService svc) => {
        _$explicitEchoWithExplicitResultId: (req) async =>
            MyServiceResponseOfStringToByteBuffer.instance.marshall(
                (await svc.explicitEchoWithExplicitResult(
                    MyServiceRequestGenericToString.instance
                        .unmarshall(req.args[0])))),
        _$explicitEchoWithJsonResultId: (req) => svc.explicitEchoWithJsonResult(
            (const MyServiceRequestToString()).unmarshall(req.args[0])),
        _$fibonacciId: (req) => svc.fibonacci(req.args[0]),
        _$fibonacciList0Id: (req) =>
            svc.fibonacciList0(req.args[0], req.args[1]),
        _$fibonacciList1Id: (req) async => (const ListIntMarshaller())
            .marshall((await svc.fibonacciList1(req.args[0], req.args[1]))),
        _$fibonacciList2Id: (req) async => listIntMarshaller
            .marshall((await svc.fibonacciList2(req.args[0], req.args[1]))),
        _$fibonacciStreamId: (req) =>
            svc.fibonacciStream(req.args[0], req.args[1]),
        _$jsonEchoWithExplicitResultId: (req) async =>
            (const MyServiceResponseOfStringToByteBuffer()).marshall(
                (await svc.jsonEchoWithExplicitResult(
                    MyServiceRequest.fromJson(req.args[0])))),
        _$jsonEchoWithJsonResultId: (req) =>
            svc.jsonEchoWithJsonResult(MyServiceRequest.fromJson(req.args[0])),
        _$jsonEncodeEchoId: (req) async => (const MyServiceResponseToJson())
            .marshall((await svc.jsonEncodeEcho(
                MyServiceRequestToString.instance.unmarshall(req.args[0])))),
      };
}

// Service initializer
MyService $MyServiceInitializer(WorkerRequest startRequest) =>
    MyService(MyServiceConfig<bool>.fromJson(startRequest.args[0]));

// Worker for MyService
class MyServiceWorker extends Worker
    with $MyServiceOperations
    implements MyService {
  MyServiceWorker(MyServiceConfig<bool> trace)
      : super($MyServiceActivator, args: [trace.toJson()]);

  @override
  Future<MyServiceResponse<String>> explicitEchoWithExplicitResult(
          MyServiceRequest request) =>
      send(
        $MyServiceOperations._$explicitEchoWithExplicitResultId,
        args: [MyServiceRequestGenericToString.instance.marshall(request)],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      ).then((res) =>
          MyServiceResponseOfStringToByteBuffer.instance.unmarshall(res));

  @override
  Future<MyServiceResponse<String>> explicitEchoWithJsonResult(
          MyServiceRequest request) =>
      send(
        $MyServiceOperations._$explicitEchoWithJsonResultId,
        args: [(const MyServiceRequestToString()).marshall(request)],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      );

  @override
  Future<int> fibonacci(int i) => send(
        $MyServiceOperations._$fibonacciId,
        args: [i],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      );

  @override
  Future<List<int>> fibonacciList0(int s, int e) => send(
        $MyServiceOperations._$fibonacciList0Id,
        args: [s, e],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      );

  @override
  Future<List<int>> fibonacciList1(int s, int e) => send(
        $MyServiceOperations._$fibonacciList1Id,
        args: [s, e],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      ).then((res) => (const ListIntMarshaller()).unmarshall(res));

  @override
  Future<List<int>> fibonacciList2(int s, int e) => send(
        $MyServiceOperations._$fibonacciList2Id,
        args: [s, e],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      ).then((res) => listIntMarshaller.unmarshall(res));

  @override
  Stream<int> fibonacciStream(int s, int e) => stream(
        $MyServiceOperations._$fibonacciStreamId,
        args: [s, e],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      );

  @override
  Future<MyServiceResponse<String>> jsonEchoWithExplicitResult(
          MyServiceRequest request) =>
      send(
        $MyServiceOperations._$jsonEchoWithExplicitResultId,
        args: [request.toJson()],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      ).then((res) =>
          (const MyServiceResponseOfStringToByteBuffer()).unmarshall(res));

  @override
  Future<MyServiceResponse<String>> jsonEchoWithJsonResult(
          MyServiceRequest request) =>
      send(
        $MyServiceOperations._$jsonEchoWithJsonResultId,
        args: [request.toJson()],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      );

  @override
  Future<MyServiceResponse<String>> jsonEncodeEcho(MyServiceRequest request) =>
      send(
        $MyServiceOperations._$jsonEncodeEchoId,
        args: [MyServiceRequestToString.instance.marshall(request)],
        token: null,
        inspectRequest: false,
        inspectResponse: false,
      ).then((res) => (const MyServiceResponseToJson()).unmarshall(res));

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  MyServiceConfig<bool> get trace => throw UnimplementedError();
}

// Worker pool for MyService
class MyServiceWorkerPool extends WorkerPool<MyServiceWorker>
    with $MyServiceOperations
    implements MyService {
  MyServiceWorkerPool(MyServiceConfig<bool> trace,
      {ConcurrencySettings? concurrencySettings})
      : super(() => MyServiceWorker(trace),
            concurrencySettings: concurrencySettings);

  @override
  Future<MyServiceResponse<String>> explicitEchoWithExplicitResult(
          MyServiceRequest request) =>
      execute((w) => w.explicitEchoWithExplicitResult(request));

  @override
  Future<MyServiceResponse<String>> explicitEchoWithJsonResult(
          MyServiceRequest request) =>
      execute((w) => w.explicitEchoWithJsonResult(request));

  @override
  Future<int> fibonacci(int i) => execute((w) => w.fibonacci(i));

  @override
  Future<List<int>> fibonacciList0(int s, int e) =>
      execute((w) => w.fibonacciList0(s, e));

  @override
  Future<List<int>> fibonacciList1(int s, int e) =>
      execute((w) => w.fibonacciList1(s, e));

  @override
  Future<List<int>> fibonacciList2(int s, int e) =>
      execute((w) => w.fibonacciList2(s, e));

  @override
  Stream<int> fibonacciStream(int s, int e) =>
      stream((w) => w.fibonacciStream(s, e));

  @override
  Future<MyServiceResponse<String>> jsonEchoWithExplicitResult(
          MyServiceRequest request) =>
      execute((w) => w.jsonEchoWithExplicitResult(request));

  @override
  Future<MyServiceResponse<String>> jsonEchoWithJsonResult(
          MyServiceRequest request) =>
      execute((w) => w.jsonEchoWithJsonResult(request));

  @override
  Future<MyServiceResponse<String>> jsonEncodeEcho(MyServiceRequest request) =>
      execute((w) => w.jsonEncodeEcho(request));

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

  @override
  MyServiceConfig<bool> get trace => throw UnimplementedError();
}
