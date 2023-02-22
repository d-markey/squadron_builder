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
@UseLogger(ParentSquadronLogger)
class MyService extends WorkerService with $MyServiceOperations {
  MyService(this._trace, this.workloadDelay)
      : _delay = Duration(microseconds: workloadDelay.value);

  final MyServiceConfig<bool> _trace;
  final MyServiceConfig<int> workloadDelay;

  final Duration _delay;

  @SquadronMethod()
  FutureOr<int> fibonacci(int i) {
    if (_trace.value) {
      Squadron.finer('fibonacci($i)');
    }
    return _fib(i);
  }

  @SquadronMethod()
  FutureOr<Iterable<int>> fibonacciList0(int s, int e) {
    if (_trace.value) {
      Squadron.finer('fibonacciList0($s, $e)');
    }
    var res = <int>[];
    for (var i = s; i < e; i++) {
      res.add(_fib(i));
    }
    return res.map((v) => v);
  }

  @SquadronMethod()
  @SerializeWith(ListIntMarshaller())
  FutureOr<List<int>> fibonacciList1(int s, int e) {
    if (_trace.value) {
      Squadron.finer('fibonacciList1($s, $e)');
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
    if (_trace.value) {
      Squadron.finer('fibonacciList2($s, $e)');
    }
    var res = <int>[];
    for (var i = s; i < e; i++) {
      res.add(_fib(i));
    }
    return res;
  }

  @SquadronMethod()
  Stream<int> fibonacciStream(int s, int e) async* {
    if (_trace.value) {
      Squadron.finer('fibonacciStream($s, $e)');
    }
    for (var i = s; i < e; i++) {
      yield _fib(i);
    }
  }

  // naive & inefficient implementation of the Fibonacci sequence
  static int _fib(int i) => (i < 2) ? i : (_fib(i - 2) + _fib(i - 1));

  @SquadronMethod()
  FutureOr<MyServiceResponse<String>?> jsonEchoWithJsonResult(
      MyServiceRequest request) {
    if (_trace.value) {
      Squadron.finer('jsonEchoWithJsonResult(${jsonEncode(request.toJson())})');
    }
    _simulateWorkload();
    return MyServiceResponse('${request.payload} done');
  }

  @SquadronMethod()
  FutureOr<MyServiceResponse<String>> explicitEchoWithJsonResult(
      @SerializeWith(MyServiceRequestToString) MyServiceRequest request) {
    if (_trace.value) {
      Squadron.finer(
          'explicitEchoWithJsonResult(${jsonEncode(request.toJson())})');
    }
    _simulateWorkload();
    return MyServiceResponse('${request.payload} done');
  }

  @SquadronMethod()
  @SerializeWith(MyServiceResponseOfStringToByteBuffer)
  FutureOr<MyServiceResponse<String>> jsonEchoWithExplicitResult(
      MyServiceRequest request) {
    if (_trace.value) {
      Squadron.finer(
          'jsonEchoWithExplicitResult(${jsonEncode(request.toJson())})');
    }
    _simulateWorkload();
    return MyServiceResponse('${request.payload} done');
  }

  @SquadronMethod()
  @SerializeWith(MyServiceResponseOfStringToByteBuffer.instance)
  FutureOr<MyServiceResponse<String>> explicitEchoWithExplicitResult(
      @SerializeWith(MyServiceRequestGenericToString.instance)
          MyServiceRequest request) {
    if (_trace.value) {
      Squadron.finer(
          'explicitEchoWithExplicitResult(${jsonEncode(request.toJson())})');
    }
    _simulateWorkload();
    return MyServiceResponse('${request.payload} done');
  }

  @SquadronMethod()
  @SerializeWith(MyServiceResponseToJson)
  FutureOr<MyServiceResponse<String>> jsonEncodeEcho(
      @SerializeWith(MyServiceRequestToString.instance)
          MyServiceRequest request) {
    if (_trace.value) {
      Squadron.finer(
          'explicitEchoWithExplicitResult(${jsonEncode(request.toJson())})');
    }
    _simulateWorkload();
    return MyServiceResponse('${request.payload} done');
  }

  void _simulateWorkload() {
    // simulate some CPU-bound workload
    final sw = Stopwatch()..start();
    while (sw.elapsed < _delay) {
      for (var i = 0; i < 250; i++) {
        // loop
      }
    }
  }
}
