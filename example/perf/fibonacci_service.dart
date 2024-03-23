import 'dart:async';

import 'package:logger/logger.dart';
import 'package:squadron/squadron.dart';

import 'generated/fibonacci_service.activator.g.dart';
import 'marshalers.dart';

part 'generated/fibonacci_service.worker.g.dart';

@SquadronService(web: false)
class FibonacciService {
  FibonacciService({bool trace = false})
      : _logger = trace
            ? Logger(
                filter: ProductionFilter(),
                output: ConsoleOutput(),
                printer: SimplePrinter(),
              )
            : null;

  final Logger? _logger;

  @squadronMethod
  FutureOr<int> fibonacci(int i) {
    _logger?.i('fibonacci($i)');
    return _fib(i);
  }

  @squadronMethod
  FutureOr<Iterable<int>> fibonacciList0(int s, int e) {
    _logger?.i('fibonacciList0($s, $e)');
    var res = <int>[];
    for (var i = s; i < e; i++) {
      res.add(_fib(i));
    }
    return res.map((v) => v);
  }

  @squadronMethod
  @ListIntMarshaler()
  FutureOr<List<int>> fibonacciList1(int s, int e) {
    _logger?.i('fibonacciList1($s, $e)');
    var res = <int>[];
    for (var i = s; i < e; i++) {
      res.add(_fib(i));
    }
    return res;
  }

  @squadronMethod
  @listIntMarshaler
  FutureOr<List<int>> fibonacciList2(int s, int e) {
    _logger?.i('fibonacciList2($s, $e)');
    var res = <int>[];
    for (var i = s; i < e; i++) {
      res.add(_fib(i));
    }
    return res;
  }

  @squadronMethod
  Stream<int> fibonacciStream(int start,
      {int? end, CancelationToken? token}) async* {
    _logger?.i('fibonacciStream($start, end: $end)');
    if (end == null) {
      if (token == null) {
        throw Exception(
            'A cancellation token is required if no upper bound is provided.');
      }
      var i = start;
      while (!token.isCanceled) {
        yield _fib(i);
      }
    } else {
      for (var i = start; i < end; i++) {
        yield _fib(i);
      }
    }
  }

  // naive & inefficient implementation of the Fibonacci sequence
  static int _fib(int i) => (i < 2) ? i : (_fib(i - 2) + _fib(i - 1));
}
