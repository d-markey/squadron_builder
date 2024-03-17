import 'dart:isolate';

import 'package:logger/logger.dart';
import 'package:squadron/squadron.dart';

import 'hello_world.dart';

void main() async {
  final logger = Logger(
    filter: ProductionFilter(),
    output: ConsoleOutput(),
    printer: SimplePrinter(),
  );

  logger.i('main() running in Isolate ${Isolate.current.hashCode}');

  final names = [null, 'Mary', 'John', 'Joe', 'Rick', 'Bill', 'Henry'];

  final futures = <Future>[];
  final worker = HelloWorldWorker();
  for (var name in names) {
    futures.add(worker.hello(name).then(logger.i));
  }
  await Future.wait(futures);
  worker.stop();
  print('  * Stats for worker ${worker.hashCode}: ${worker.stats.dump()}');

  print('');

  final concurrency = ConcurrencySettings(
    minWorkers: 3,
    maxWorkers: 3,
    maxParallel: 1,
  );
  final pool = HelloWorldWorkerPool(concurrencySettings: concurrency);
  await pool.start();
  futures.clear();
  for (var name in names) {
    futures.add(pool.hello(name).then(logger.i));
  }
  await Future.wait(futures);
  print(pool.fullStats
      .map((s) => '  * Stats for pool worker ${s.workerHashCode}: ${s.dump()}')
      .join('\n'));
  pool.stop();
}

extension DebugStats on WorkerStat {
  String dump() =>
      'totalWorkload=$totalWorkload (max $maxWorkload) - upTime=$upTime - idleTime=$idleTime - status=$status';
}
