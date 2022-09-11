import 'dart:async';

import 'package:squadron/squadron_annotations.dart';
import 'package:squadron/squadron.dart';

import 'my_service.activator.g.dart';

part 'my_service.worker.g.dart';

@SquadronService(baseUrl: '/workers')
class MyService extends WorkerService {
  @SquadronMethod()
  Future<int> fibonacci(int i) async => _fib(i);

  // naive & inefficient implementation of the Fibonacci sequence
  static int _fib(int i) => (i < 2) ? i : (_fib(i - 2) + _fib(i - 1));

  @SquadronMethod()
  Future<MyResponse> doSomething(MyRequest request) async => MyResponse('ok');

  @SquadronMethod()
  Future<MyResponse> doSomethingElse(MyRequest? request) async =>
      MyResponse('ok');

  @override
  late final Map<int, CommandHandler> operations =
      buildMyServiceOperations(this);
}

class MyRequest {
  MyRequest(this.payload);

  factory MyRequest.fromJson(Map json) => MyRequest(json['p']);

  final String payload;

  Map toJson() => {'p': payload};
}

class MyResponse {
  MyResponse(this.result);

  factory MyResponse.fromJson(Map json) => MyResponse(json['r']);

  final String result;

  Map toJson() => {'r': result};
}
