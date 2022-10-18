import 'dart:async';
import 'dart:convert';

import 'package:squadron/squadron_annotations.dart';
import 'package:squadron/squadron.dart';

import 'marshallers.dart';
import 'my_service.activator.g.dart';
import 'my_service_config.dart';
import 'my_service_request.dart';
import 'my_service_response.dart';

part 'my_service.worker.g.dart';

@SquadronService()
class MyService extends WorkerService with $MyServiceOperations {
  MyService(this.trace);

  final MyServiceConfig<bool> trace;

  @SquadronMethod()
  FutureOr<int> fibonacci(int i) {
    if (trace.value) {
      Squadron.info('fibonacci($i)');
    }
    return _fib(i);
  }

  @SquadronMethod()
  @SerializeWith(ListIntMarshaller())
  FutureOr<List<int>> fibonacciList1(int s, int e) {
    if (trace.value) {
      Squadron.info('fibonacciList1($s, $e)');
    }
    var res = <int>[];
    for (var i = s; i < e; i++) {
      res.add(_fib(i));
    }
    return res;
  }

  @SquadronMethod()
  @SerializeWith(listIntMarshaller)
  FutureOr<List<int>> fibonacciList2(int s, int e) {
    if (trace.value) {
      Squadron.info('fibonacciList2($s, $e)');
    }
    var res = <int>[];
    for (var i = s; i < e; i++) {
      res.add(_fib(i));
    }
    return res;
  }

  @SquadronMethod()
  Stream<int> fibonacciStream(int s, int e) async* {
    if (trace.value) {
      Squadron.info('fibonacciStream($s, $e)');
    }
    for (var i = s; i < e; i++) {
      yield _fib(i);
    }
  }

  // naive & inefficient implementation of the Fibonacci sequence
  static int _fib(int i) => (i < 2) ? i : (_fib(i - 2) + _fib(i - 1));

  @SquadronMethod()
  FutureOr<MyServiceResponse<String>> jsonEchoWithJsonResult(
      MyServiceRequest request) {
    if (trace.value) {
      Squadron.info('jsonEchoWithJsonResult(${jsonEncode(request.toJson())})');
    }
    return MyServiceResponse('${request.payload} done');
  }

  @SquadronMethod()
  FutureOr<MyServiceResponse<String>> explicitEchoWithJsonResult(
      @SerializeWith(MyServiceRequestToString) MyServiceRequest request) {
    if (trace.value) {
      Squadron.info(
          'explicitEchoWithJsonResult(${jsonEncode(request.toJson())})');
    }
    return MyServiceResponse('${request.payload} done');
  }

  @SquadronMethod()
  @SerializeWith(MyServiceResponseOfStringToByteBuffer)
  FutureOr<MyServiceResponse<String>> jsonEchoWithExplicitResult(
      MyServiceRequest request) {
    if (trace.value) {
      Squadron.info(
          'jsonEchoWithExplicitResult(${jsonEncode(request.toJson())})');
    }
    return MyServiceResponse('${request.payload} done');
  }

  @SquadronMethod()
  @SerializeWith(MyServiceResponseOfStringToByteBuffer.instance)
  FutureOr<MyServiceResponse<String>> explicitEchoWithExplicitResult(
      @SerializeWith(MyServiceRequestGenericToString.instance)
          MyServiceRequest request) {
    if (trace.value) {
      Squadron.info(
          'explicitEchoWithExplicitResult(${jsonEncode(request.toJson())})');
    }
    return MyServiceResponse('${request.payload} done');
  }

  @SquadronMethod()
  @SerializeWith(MyServiceResponseToJson)
  FutureOr<MyServiceResponse<String>> jsonEncodeEcho(
      @SerializeWith(MyServiceRequestToString.instance)
          MyServiceRequest request) {
    if (trace.value) {
      Squadron.info(
          'explicitEchoWithExplicitResult(${jsonEncode(request.toJson())})');
    }
    return MyServiceResponse('${request.payload} done');
  }
}
