import 'dart:async';
import 'dart:core' as dc;

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/web.dart';
import 'package:squadron/squadron.dart';
import 'package:using/using.dart';

import 'generated/fib_service.activator.g.dart';

part 'generated/fib_service.worker.g.dart';

@localService
@SquadronService(targetPlatform: TargetPlatform.vm)
@SquadronService(targetPlatform: TargetPlatform.js, baseUrl: '/workers')
class FibService {
  @squadronMethod
  dc.Future<dc.int> fibonacci(dc.int i) async => _fib(i);

  static void Function(dc.int x) test = (n) => n;

  // naive & inefficient implementation of the Fibonacci sequence
  static dc.int _fib(dc.int i) => (i < 2) ? i : (_fib(i - 2) + _fib(i - 1));

  final dc.int x = 0;
}
