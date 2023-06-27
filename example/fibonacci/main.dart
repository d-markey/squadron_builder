import 'package:squadron/squadron.dart';

import 'fib_service.dart';

void main() async {
  Squadron.setId('FIB');
  Squadron.setLogger(ConsoleSquadronLogger());
  Squadron.logLevel = SquadronLogLevel.info;

  // compute 9 fibonnaci numbers (starting from 37)
  int count = 9, start = 37;

  print('Computing with FibService (single-threaded, main Isolate)');
  final service = FibService();
  await computeWith(service, start, count);

  print('');
  print('Computing with FibServiceWorker (single-threaded, dedicated Isolate)');
  final worker = FibServiceWorker();
  await worker.start();
  await computeWith(worker, start, count);
  print('  * Stats for worker ${worker.workerId}: ${worker.stats.dump()}');
  worker.stop();

  print('');
  print(
      'Computing with FibServiceWorkerPool (multi-threaded, dedicated Isolates)');
  final concurrency = ConcurrencySettings(
      minWorkers: 1, maxWorkers: count ~/ 2, maxParallel: 1);
  final pool = FibServiceWorkerPool(concurrencySettings: concurrency);
  await pool.start();
  await computeWith(pool, start, count);
  print(pool.fullStats
      .map((s) => '  * Stats for pool worker ${s.id}: ${s.dump()}')
      .join('\n'));
  pool.stop();
}

Future computeWith(FibService service, int start, int count) async {
  final sw = Stopwatch()..start();
  // start all computations
  final computations = Iterable<int>.generate(count)
      .map((i) => service.fibonacci(start + i))
      .toList();
  // wait for results
  final results = await Future.wait(computations);
  // display results
  print('  * Results = $results');
  print('  * Total elapsed time: ${sw.elapsed}');
}

extension DebugStats on WorkerStat {
  String dump() =>
      'totalWorkload=$totalWorkload (max $maxWorkload) - upTime=$upTime - idleTime=$idleTime - status=$status';
}
