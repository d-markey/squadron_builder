import 'dart:async';

import 'package:squadron/squadron_annotations.dart';
import 'package:squadron/squadron.dart';

import 'marshalers.dart';
import 'generated/fibonacci_service.activator.g.dart';

part 'generated/fibonacci_service.worker.g.dart';

@SquadronService(web: false)
@UseLogger(ParentSquadronLogger)
class FibonacciService {
  FibonacciService({this.trace = false});

  final bool trace;

  @SquadronMethod()
  FutureOr<int> fibonacci(int i) {
    if (trace) {
      Squadron.finer('fibonacci($i)');
    }
    return _fib(i);
  }

  @SquadronMethod()
  FutureOr<Iterable<int>> fibonacciList0(int s, int e) {
    if (trace) {
      Squadron.finer('fibonacciList0($s, $e)');
    }
    var res = <int>[];
    for (var i = s; i < e; i++) {
      res.add(_fib(i));
    }
    return res.map((v) => v);
  }

  @SquadronMethod()
  @SerializeWith(ListIntMarshaler())
  FutureOr<List<int>> fibonacciList1(int s, int e) {
    if (trace) {
      Squadron.finer('fibonacciList1($s, $e)');
    }
    var res = <int>[];
    for (var i = s; i < e; i++) {
      res.add(_fib(i));
    }
    return res;
  }

  @SquadronMethod()
  @SerializeWith(listIntMarshaler)
  FutureOr<List<int>> fibonacciList2(int s, int e) {
    if (trace) {
      Squadron.finer('fibonacciList2($s, $e)');
    }
    var res = <int>[];
    for (var i = s; i < e; i++) {
      res.add(_fib(i));
    }
    return res;
  }

  @SquadronMethod()
  Stream<int> fibonacciStream(int start,
      {int? end, CancellationToken? token}) async* {
    if (trace) {
      Squadron.finer('fibonacciStream($start, end: $end)');
    }
    if (end == null) {
      if (token == null) {
        throw Exception(
            'A cancellation token is required if no upper bound is provided.');
      }
      var i = start;
      while (!token.cancelled) {
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
