import 'dart:async';

import 'package:squadron/squadron.dart';

import 'fib_service.dart';

void main() async {
  final monitor = Monitor(const Duration(seconds: 1));
  await monitor.start();

  // compute 9 fibonnaci numbers (starting from 33)
  int count = 9, start = 33;

  print('''

Computing with FibService (single-threaded in the main Isolate)
  The main Isolate is busy computing the numbers.
  The timer won't trigger.
''');
  final service = FibService();
  await computeWith(service, start, count);

  print('''

Computing with FibServiceWorker (single-threaded in 1 dedicated Isolate)
  The main Isolate is available while the worker Isolate is computing numbers.
  The computation time should be roughly the same as with FibService.
  The timer triggers periodically.
''');
  final worker = FibServiceWorker();
  await worker.start();
  await computeWith(worker, start, count);
  print('  * Stats for worker ${worker.hashCode}: ${worker.getStats().dump()}');
  worker.stop();

  final maxWorkers = count ~/ 2;

  print('''

Computing with FibServiceWorkerPool (multi-threaded in $maxWorkers dedicated Isolates)
  The main Isolate is available while worker pool Isolates are computing numbers.
  The computation time should be significantly less compared to FibService and FibServiceWorker.
  The timer triggers periodically.
''');
  final concurrency = ConcurrencySettings(
    minWorkers: 1,
    maxWorkers: maxWorkers,
    maxParallel: 1,
  );
  final pool = FibServiceWorkerPool(concurrencySettings: concurrency);
  await pool.start();
  await computeWith(pool, start, count);
  print(
    pool.fullStats
        .map(
          (s) => '  * Stats for pool worker ${s.workerHashCode}: ${s.dump()}',
        )
        .join('\n'),
  );
  pool.stop();

  print('');
  await monitor.stop();
}

Future computeWith(FibService service, int start, int count) async {
  final sw = Stopwatch()..start();
  // start all computations
  final computations =
      Iterable<int>.generate(
        count,
      ).map((i) => service.fibonacci(start + i)).toList();
  // wait for results
  final results = await Future.wait(computations);
  // display results
  print('  * Results = $results');
  print('  * Total elapsed time: ${sw.elapsed}');
}

class Monitor {
  Monitor(this.duration);

  final Duration duration;
  int _lastTick = 0;
  Timer? _timer;

  void _tick(Timer t) {
    final d = t.tick - _lastTick;
    print(
      (d > 1)
          ? '  tick #${t.tick} - skipped $d ticks!'
          : '  tick #${t.tick}...',
    );
    _lastTick = t.tick;
  }

  Future<void> start() async {
    _timer = Timer.periodic(duration, _tick);
    await Future.delayed(duration);
    print('Timer started');
  }

  Future<void> stop() async {
    await Future.delayed(duration);
    _timer?.cancel();
    _timer = null;
    print('Timer stopped');
  }
}

extension on WorkerStat {
  String get status {
    if (isStopped) {
      return 'STOPPED';
    } else if (workload == 0) {
      return 'IDLE';
    } else {
      return 'WORKING($workload)';
    }
  }

  String dump() =>
      'totalWorkload=$totalWorkload (max $maxWorkload) - upTime=$upTime - idleTime=$idleTime - status=$status (workerHashCode=$workerHashCode)';
}
