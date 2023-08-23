import 'dart:io';

import 'package:squadron/squadron.dart';

import 'display_thread_id.dart';
import 'hello_world.dart';

void main() async {
  Squadron.setId('HELLO_WORLD');
  Squadron.logLevel = SquadronLogLevel.config;
  Squadron.setLogger(StdoutLogger());

  Squadron.info('main() running in $workerId');

  final names = [null, 'Mary', 'John', 'Joe', 'Rick', 'Bill', 'Henry'];

  final worker = HelloWorldWorker();
  for (var name in names) {
    Squadron.info(await worker.hello(name));
  }
  worker.stop();
  print('  * Stats for worker ${worker.workerId}: ${worker.stats.dump()}');

  print('');

  final concurrency = ConcurrencySettings(
    minWorkers: 3,
    maxWorkers: 3,
    maxParallel: 1,
  );
  final pool = HelloWorldWorkerPool(concurrencySettings: concurrency);
  await pool.start();
  for (var name in names) {
    Squadron.info(await pool.hello(name));
  }
  print(pool.fullStats
      .map((s) => '  * Stats for pool worker ${s.id}: ${s.dump()}')
      .join('\n'));
  pool.stop();
}

class StdoutLogger extends ConsoleSquadronLogger {
  @override
  void log(String message) => stdout.write('$message\n');
}

extension DebugStats on WorkerStat {
  String dump() =>
      'totalWorkload=$totalWorkload (max $maxWorkload) - upTime=$upTime - idleTime=$idleTime - status=$status';
}
