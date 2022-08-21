import 'dart:async';

import 'package:squadron/squadron.dart';

import 'my_service.dart';

void main() async {
  Squadron.setId('MAIN');
  Squadron.setLogger(ConsoleSquadronLogger());
  Squadron.logLevel = SquadronLogLevel.info;

  int count = 5;

  Squadron.info('Computing with MyService (single-threaded)');
  await computeWith(MyService(), count);

  Squadron.info('Computing with MyServiceWorkerPool (multi-threaded)');
  final pool = MyServiceWorkerPool(
      concurrencySettings: ConcurrencySettings(
    minWorkers: count,
    maxWorkers: count,
    maxParallel: 1,
  ));
  await pool.start();
  await computeWith(pool, count);
  pool.stop();
}

Future computeWith(MyService service, int count) async {
  final sw = Stopwatch();
  sw.start();

  final futures = <Future<int>>[];
  for (var i = 0; i < count; i++) {
    futures.add(service.fibonacci(40 + i));
  }

  final results = await Future.wait(futures);
  Squadron.info('  * Results = $results');
  Squadron.info('  * Total elapsed time: ${sw.elapsed}');
  sw.stop();
}
