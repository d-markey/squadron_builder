import 'dart:async';
import 'dart:convert';

import 'package:squadron/squadron_annotations.dart';
import 'package:squadron/squadron.dart';

import 'my_service.activator.g.dart';
import 'my_service_config.dart';
import 'my_service_request.dart';
import 'my_service_response.dart';

part 'my_service.worker.g.dart';

@SquadronService(baseUrl: '/workers')
class MyService extends WorkerService with $MyServiceOperations {
  MyService(this.config);

  final MyServiceConfig<bool> config;

  @SquadronMethod()
  FutureOr<int> fibonacci(int i) {
    if (config.value) {
      Squadron.fine('fibonacci($i)');
    }
    return _fib(i);
  }

  // naive & inefficient implementation of the Fibonacci sequence
  static int _fib(int i) => (i < 2) ? i : (_fib(i - 2) + _fib(i - 1));

  @SquadronMethod()
  FutureOr<MyServiceResponse> doSomething(MyServiceRequest request) {
    if (config.value) {
      Squadron.fine('doSomething(${jsonEncode(request.toJson())})');
    }
    return MyServiceResponse('${request.payload} done');
  }

  @SquadronMethod()
  FutureOr<MyServiceResponse<String>?> doSomethingElse(
      MyServiceRequest? request) {
    if (config.value) {
      Squadron.fine('doSomethingElse(${jsonEncode(request?.toJson())})');
    }
    return MyServiceResponse('${request?.payload ?? '<no payload>'} done too');
  }

  @SquadronMethod()
  Stream<int> fibonnacciStream(int start, int end,
      {CancellationToken? token}) async* {
    if (config.value) {
      Squadron.fine('fibonnacciStream($start, $end)');
    }
    var p2 = _fib(start - 2);
    var p1 = _fib(start - 1);
    for (var i = start; i < end; i++) {
      final cancelled = token?.exception;
      if (cancelled != null) {
        Squadron.info('operation cancelled');
        break;
      }
      final p0 = p2 + p1;
      yield p0;
      p2 = p1;
      p1 = p0;
    }
  }
}
