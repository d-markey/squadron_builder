import 'dart:async';

import 'package:squadron/squadron.dart';
import 'package:async/async.dart';

import 'my_service.dart';
import 'my_service_config.dart';
import 'my_service_request.dart';

void main() async {
  Squadron.setId('MAIN');
  Squadron.setLogger(ConsoleSquadronLogger());
  Squadron.logLevel = SquadronLogLevel.info;

  int count = 2;

  final config = MyServiceConfig('trace', true);

  Squadron.info('Computing with MyService (single-threaded)');
  await computeWith(MyService(config), count);

  Squadron.info('Computing with MyServiceWorkerPool (multi-threaded)');
  final pool = MyServiceWorkerPool(config,
      concurrencySettings: ConcurrencySettings(
        minWorkers: count,
        maxWorkers: 2 * count,
        maxParallel: 1,
      ));

  // await pool.start();
  await computeWith(pool, count);
  pool.stop();
}

Future computeWith(MyService service, int count) async {
  const from = 35;

  final sw = Stopwatch();
  sw.start();

  final fibFutures = <Future<int>>[];
  final fibResults = <int>[];
  for (var i = 0; i < 3 * count; i++) {
    final f = service.fibonacci(from + i);
    store(f, fibFutures, fibResults);
  }

  await report(sw, fibFutures, fibResults);

  CancellationToken? token = CancellationToken();
  Timer(Duration(milliseconds: 500), () {
    token.cancel();
    Squadron.info('Token cancelled');
  });

  final group = StreamGroup();
  for (var i = 0; i < 3; i++) {
    group.add(service
        .fibonnacciStream(from + (2 * i) * count, from + (2 * (i + 1)) * count,
            token: token)
        .map((fib) {
      Squadron.info(
          '  * [${sw.elapsed}] received from stream #$i: $fib (cancelled = ${token.cancelled})');
    }).handleError((ex) {
      Squadron.info(
          '  * [${sw.elapsed}] error from stream #$i: ${ex.runtimeType} (cancelled = ${token.cancelled})');
    }));
  }
  group.close();

  await group.stream.drain();

  final futures = <Future>[];
  final results = [];
  store(service.doSomething(MyServiceRequest('test')), futures, results);
  store(service.doSomethingElse(MyServiceRequest('other test')), futures,
      results);

  await report(sw, futures, results);

  Squadron.info('  * Total elapsed time: ${sw.elapsed}');
}

void store<T>(FutureOr<T> item, List<Future<T>> futures, List<T> results) {
  if (item is Future<T>) {
    futures.add(item);
  } else {
    results.add(item);
  }
}

Future report<T>(Stopwatch sw, List<Future<T>> futures, List<T> results) async {
  if (futures.isNotEmpty) {
    results.addAll(await Future.wait(futures));
    Squadron.info('  * [${sw.elapsed}] results from futures = $results');
  } else {
    Squadron.info('  * [${sw.elapsed}] results (direct) = $results');
  }
}
