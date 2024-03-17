import 'dart:async';

import 'package:squadron/squadron.dart';

import 'generated/fib_service.activator.g.dart';

part 'generated/fib_service.worker.g.dart';

@SquadronService(baseUrl: '/workers')
class FibService {
  @squadronMethod
  Future<int> fibonacci(int i) async => _fib(i);

  // naive & inefficient implementation of the Fibonacci sequence
  static int _fib(int i) => (i < 2) ? i : (_fib(i - 2) + _fib(i - 1));
}
