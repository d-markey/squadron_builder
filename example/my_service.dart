import 'dart:async';
import 'dart:convert';

import 'package:squadron/squadron_annotations.dart';
import 'package:squadron/squadron.dart';

import 'my_service.activator.g.dart';
import 'my_service_config.dart';
import 'my_service_request.dart';
import 'my_service_response.dart';

part 'my_service.worker.g.dart';

@SquadronService(web: false)
class MyService extends WorkerService with $MyServiceOperations {
  MyService(this.config);

  final MyServiceConfig<bool> config;

  @SquadronMethod()
  FutureOr<int> fibonacci(int i) {
    if (config.value) {
      Squadron.info('fibonacci($i)');
    }
    return _fib(i);
  }

  // naive & inefficient implementation of the Fibonacci sequence
  static int _fib(int i) => (i < 2) ? i : (_fib(i - 2) + _fib(i - 1));

  @SquadronMethod()
  FutureOr<MyServiceResponse> doSomething(MyServiceRequest request) {
    if (config.value) {
      Squadron.info('doSomething(${jsonEncode(request.toJson())})');
    }
    return MyServiceResponse('${request.payload} done');
  }

  @SquadronMethod()
  FutureOr<MyServiceResponse<String>?> doSomethingElse(
      MyServiceRequest? request) {
    if (config.value) {
      Squadron.info('doSomethingElse(${jsonEncode(request?.toJson())})');
    }
    return MyServiceResponse('${request?.payload ?? '<no payload>'} done too');
  }

  @SquadronMethod()
  Stream<int> fibonnacciStream(int start, int end,
      {CancellationToken? token}) async* {
    if (config.value) {
      Squadron.info('fibonnacciStream($start, $end)');
    }
    var p2 = _fib(start - 2);
    var p1 = _fib(start - 1);
    for (var i = start; i < end; i++) {
      if (await token?.isCancelled(throwIfCancelled: true) ?? false) return;
      final p0 = p2 + p1;
      yield p0;
      p2 = p1;
      p1 = p0;
    }
  }
}
