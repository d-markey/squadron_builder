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
class MyService extends WorkerService {
  MyService(this.config);

  final MyServiceConfig config;

  @SquadronMethod()
  Future<int> fibonacci(int i) async => _fib(i);

  // naive & inefficient implementation of the Fibonacci sequence
  static int _fib(int i) => (i < 2) ? i : (_fib(i - 2) + _fib(i - 1));

  @SquadronMethod()
  FutureOr<MyServiceResponse> doSomething(MyServiceRequest request) =>
      MyServiceResponse('done');

  @SquadronMethod()
  FutureOr<MyServiceResponse?> doSomethingElse(MyServiceRequest? request) =>
      MyServiceResponse('done too');

  @SquadronMethod()
  FutureOr<MyServiceResponse> getConfig() =>
      MyServiceResponse(jsonEncode(config.toJson()));

  @SquadronMethod()
  Stream<int> fibonnacciStream(int start, int end,
      {CancellationToken? token}) async* {
    for (var i = start; i < end; i++) {
      final cancelled = token?.exception;
      if (cancelled != null) break;
      yield _fib(i);
    }
  }

  @override
  late final Map<int, CommandHandler> operations =
      _$getMyServiceOperations(this);
}
