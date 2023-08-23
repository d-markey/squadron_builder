import 'dart:async';

import 'package:squadron/squadron.dart';

import 'echo_service.dart';
import 'fibonacci_service.dart';
import 'service_config.dart';
import 'service_request.dart';
import 'perf_counters.dart' as instr;
import 'deviation_monitor.dart';

void main() async {
  setupSquadron();

  // start a periodic timer to measure timer deviation while executing the different scenarios.
  final resolution = Duration(milliseconds: 20);
  final deviationMonitor = await installDeviationMonitor(resolution);

  // service parameters
  final trace = false;
  final workload = ServiceConfig('workload', 250);

  // FIRST RUN: single-threaded (all in main thread)
  final serviceCounters = await runServices(deviationMonitor, trace, workload);

  // SECOND RUN: one worker (= main thread + 1 worker thread)
  final workerCounters = await runWorkers(deviationMonitor, trace, workload);

  // THIRD RUN: worker pool (= main thread + n worker threads)
  final poolCounters = await runPools(deviationMonitor, trace, workload);

  // print summary
  displaySummaries(resolution, serviceCounters, workerCounters, poolCounters);
}

void setupSquadron() {
  Squadron.setId('MAIN');
  Squadron.setLogger(ConsoleSquadronLogger());
  Squadron.debugMode = false;
  Squadron.logLevel = SquadronLogLevel.info;
}

Future<DeviationMonitor> installDeviationMonitor(Duration resolution) async {
  final deviationMonitor = DeviationMonitor(resolution);

  // test timer deviation monitor
  deviationMonitor.start();
  final impactLevel = 10;

  // asynchronous, should have no impact
  await Future.delayed(resolution * impactLevel);
  // synchronous, should trigger a deviation by approx (impactLevel - 1) * 100 % (eg. ~900% for impactLevel = 10)
  final sw = Stopwatch()..start();
  while (sw.elapsedMilliseconds < resolution.inMilliseconds * impactLevel) {
    // CPU loop
  }
  // asynchronous, should have no impact
  await Future.delayed(resolution * impactLevel);

  deviationMonitor.stop();
  deviationMonitor.noisy = false;
  return deviationMonitor;
}

String _summaryLine(
    String label, instr.PerfCounter counter, instr.PerfCounter baseline) {
  if (counter == baseline) {
    return '    * $label:  ${counter.duration} - skipped ${instr.percent(counter.skippedRatio)} (${counter.skippedTicks} / ${counter.totalTicks}, max = ${counter.maxSkippedTicks}) - max delay = ${counter.maxDeviation}';
  } else {
    return '    * $label:  ${counter.duration} (${instr.percent(instr.trend(baseline.duration.inMicroseconds, counter.duration.inMicroseconds))}) - skipped ${instr.percent(counter.skippedRatio)} (${counter.skippedTicks} / ${counter.totalTicks}, max = ${counter.maxSkippedTicks}) - max delay = ${counter.maxDeviation} (${instr.percent(instr.trend(baseline.maxDeviation.inMicroseconds, counter.maxDeviation.inMicroseconds))})';
  }
}

String _summary(instr.PerfCounters counters, instr.PerfCounters baseline) => [
      _summaryLine('Fib ', counters.fib, baseline.fib),
      _summaryLine('Echo', counters.echo, baseline.echo),
      _summaryLine('Perf', counters.perf, baseline.perf),
    ].join('\n');

void displaySummaries(Duration resolution, instr.PerfCounters serviceCounters,
    instr.PerfCounters workerCounters, instr.PerfCounters poolCounters) {
  print('''
==== SUMMARY ====

MAX TIMER DELAY (resolution = $resolution aka ${1000 / resolution.inMilliseconds} frames/sec)
    * main thread: ${serviceCounters.maxDeviation} (resolution x ${(serviceCounters.maxDeviation.inMicroseconds / resolution.inMicroseconds).toStringAsFixed(2)}) - max skipped = ${serviceCounters.maxSkippedTicks}
    * worker: ${workerCounters.maxDeviation} (resolution x ${(workerCounters.maxDeviation.inMicroseconds / resolution.inMicroseconds).toStringAsFixed(2)}) - max skipped = ${workerCounters.maxSkippedTicks}
    * worker pool: ${poolCounters.maxDeviation} (resolution x ${(poolCounters.maxDeviation.inMicroseconds / resolution.inMicroseconds).toStringAsFixed(2)}) - max skipped = ${poolCounters.maxSkippedTicks}

MAIN THREAD (baseline): executed in the main event loop.
${_summary(serviceCounters, serviceCounters)}

SINGLE WORKERS vs MAIN THREAD: worker counters should be slightly worse because
of serialization/deserialization. The main advantage in this scenario is to
free the main event loop and avoid skipping frames, eg in user-facing apps to
avoid glitches in the UI.
${_summary(workerCounters, serviceCounters)}

WORKER POOL vs MAIN THREAD: worker pool counters should be much better even
considering the overhead of serialization/deserialization and worker scheduling.
Perf improvement depends on method execution time: the heavier the workload,
the more performance will be improved.
${_summary(poolCounters, serviceCounters)}
''');
}

const int runs = 1;

Future<instr.PerfCounters> runServices(DeviationMonitor monitor, bool trace,
    ServiceConfig<int> workloadDelay) async {
  Squadron.info('''
----------------------------------------------------------
1. Computing with services (single-threaded)
----------------------------------------------------------
''');

  final fibonacciService = FibonacciService(trace: trace);
  final echoService = EchoService(trace, workloadDelay);

  var counters = await testWith(monitor, fibonacciService, echoService);
  for (var i = 1; i < runs; i++) {
    counters += await testWith(monitor, fibonacciService, echoService);
  }

  print('');
  return counters / runs;
}

void platformWorkerHook<T extends WorkerService>(PlatformWorker w) {
  Squadron.info(
      'Worker ready for $T (platform worker type = ${w.runtimeType})');
}

void displayStats(WorkerStat stats) {
  Squadron.info(
      '${stats.workerType} ${stats.id} (${stats.status}): totalWorkload=${stats.totalWorkload}, upTime=${stats.upTime}, idleTime=${stats.idleTime}');
}

Future<instr.PerfCounters> runWorkers(DeviationMonitor monitor, bool trace,
    ServiceConfig<int> workloadDelay) async {
  Squadron.info('''
----------------------------------------------------------
2. Computing with single service workers (one thread each)
----------------------------------------------------------
''');

  final fibonacciWorker = FibonacciServiceWorker(
      trace: trace,
      platformWorkerHook: (w) => platformWorkerHook<FibonacciServiceWorker>(w));
  final echoWorker = EchoServiceWorker(
      trace, workloadDelay, (w) => platformWorkerHook<EchoServiceWorker>(w));

  await Future.wait([fibonacciWorker.start(), echoWorker.start()]);

  var counters = await testWith(monitor, fibonacciWorker, echoWorker);
  for (var i = 1; i < runs; i++) {
    counters += await testWith(monitor, fibonacciWorker, echoWorker);
  }

  displayStats(fibonacciWorker.stats);
  displayStats(echoWorker.stats);

  // clean up workers... should not be necessary if with_finalizers was set to true when the code was generated
  fibonacciWorker.stop();
  echoWorker.stop();

  print('');
  return counters / runs;
}

Future<instr.PerfCounters> runPools(DeviationMonitor monitor, bool trace,
    ServiceConfig<int> workloadDelay) async {
  Squadron.info('''
----------------------------------------------------------
3. Computing with service worker pools (multithreaded)
----------------------------------------------------------
''');

  final concurrency = ConcurrencySettings(
    minWorkers: 2,
    maxWorkers: 6,
    maxParallel: 1,
  );
  final fibonacciPool = FibonacciServiceWorkerPool(
      trace: trace,
      concurrencySettings: concurrency,
      platformWorkerHook: (w) =>
          platformWorkerHook<FibonacciServiceWorkerPool>(w));
  final echoPool = EchoServiceWorkerPool(trace, workloadDelay, concurrency,
      (w) => platformWorkerHook<EchoServiceWorkerPool>(w));

  await Future.wait([fibonacciPool.start().future, echoPool.start().future]);

  var counters = await testWith(monitor, fibonacciPool, echoPool);
  for (var i = 1; i < runs; i++) {
    counters += await testWith(monitor, fibonacciPool, echoPool);
  }

  await Future.delayed(Duration(milliseconds: 500));

  fibonacciPool.stop((w) => w.idleTime.inMilliseconds > 400);
  fibonacciPool.fullStats.forEach(displayStats);

  echoPool.stop((w) => w.idleTime.inMilliseconds > 400);
  echoPool.fullStats.forEach(displayStats);

  // clean up pools... should not be necessary if with_finalizers was set to true when the code was generated
  fibonacciPool.stop();
  echoPool.stop();

  print('');
  return counters / runs;
}

Future<instr.PerfCounters> testWith(DeviationMonitor monitor,
    FibonacciService fibonacciService, EchoService echoService) async {
  monitor.start();
  var start = await monitor.takeSnapshot();
  await testFibWith(fibonacciService);
  final fib = (await monitor.takeSnapshot()) - start;
  monitor.stop();
  Squadron.info('  --> ELAPSED(fib) = ${fib.duration}');

  monitor.start();
  start = await monitor.takeSnapshot();
  await testEchoWith(echoService);
  final echo = (await monitor.takeSnapshot()) - start;
  monitor.stop();
  Squadron.info('  --> ELAPSED(echo) = ${echo.duration}');

  monitor.start();
  start = await monitor.takeSnapshot();
  await perfTestEchoWith(echoService);
  await perfTestJsonEchoWith(echoService);
  final perf = (await monitor.takeSnapshot()) - start;
  monitor.stop();
  Squadron.info('  --> ELAPSED(perf) = ${perf.duration}');

  return instr.PerfCounters(fib, echo, perf);
}

Future<void> testFibWith(FibonacciService fibonacciService) async {
  final futures = <Future>[];

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService.fibonacci(20 + i).then((res) => Squadron.fine(
        () =>
            '[${fibonacciService.runtimeType}] fibonacci(${20 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService.fibonacciList0(20 + i, 30 + i).then((res) =>
        Squadron.fine(() =>
            '[${fibonacciService.runtimeType}] fibonacciList0(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService.fibonacciList1(20 + i, 30 + i).then((res) =>
        Squadron.fine(() =>
            '[${fibonacciService.runtimeType}] fibonacciList1(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService.fibonacciList2(20 + i, 30 + i).then((res) =>
        Squadron.fine(() =>
            '[${fibonacciService.runtimeType}] fibonacciList2(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService
        .fibonacciStream(20 + i, end: 30 + i)
        .toList()
        .then((res) => Squadron.fine(() =>
            '[${fibonacciService.runtimeType}] fibonacciStream(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);
}

const int loops = 500;

Future<void> testEchoWith(EchoService echoService) async {
  final futures = <Future>[];

  for (var i = 0; i < loops; i++) {
    futures.add(echoService
        .jsonEchoWithJsonResult(ServiceRequest('echo $i'))
        .then((res) => Squadron.fine(() =>
            '[${echoService.runtimeType}] jsonEchoWithJsonResult(\'echo $i\') = ${res?.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < loops; i++) {
    futures.add(echoService
        .jsonEchoWithExplicitResult(ServiceRequest('echo $i'))
        .then((res) => Squadron.fine(() =>
            '[${echoService.runtimeType}] jsonEchoWithExplicitResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < loops; i++) {
    futures.add(echoService
        .explicitEchoWithJsonResult(ServiceRequest('echo $i'))
        .then((res) => Squadron.fine(() =>
            '[${echoService.runtimeType}] explicitEchoWithJsonResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < loops; i++) {
    futures.add(echoService
        .explicitEchoWithExplicitResult(ServiceRequest('echo $i'))
        .then((res) => Squadron.fine(() =>
            '[${echoService.runtimeType}] explicitEchoWithExplicitResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();
}

const int perfLoops = 5000;

Future<void> perfTestEchoWith(EchoService echoService) async {
  var futures = <Future>[];
  final jsonSw = Stopwatch()..start();
  for (var i = 0; i < perfLoops; i++) {
    final req = ServiceRequest('echo $i');
    futures.add(echoService.jsonEchoWithJsonResult(req).future);
  }
  await Future.wait(futures);
  jsonSw.stop();

  futures = <Future>[];
  final explicitSw = Stopwatch()..start();
  for (var i = 0; i < perfLoops; i++) {
    final req = ServiceRequest('echo $i');
    futures.add(echoService.explicitEchoWithExplicitResult(req).future);
  }
  await Future.wait(futures);
  explicitSw.stop();

  Squadron.fine(() =>
      '[${echoService.runtimeType}] json = ${jsonSw.elapsed} / explicit = ${explicitSw.elapsed}');
}

Future<void> perfTestJsonEchoWith(EchoService echoService) async {
  var futures = <Future>[];
  final jsonSw = Stopwatch()..start();
  for (var i = 0; i < perfLoops; i++) {
    final req = ServiceRequest('echo $i');
    futures.add(echoService.jsonEchoWithJsonResult(req).future);
  }
  await Future.wait(futures);
  jsonSw.stop();

  futures = <Future>[];
  final jsonEncodeSw = Stopwatch()..start();
  for (var i = 0; i < perfLoops; i++) {
    final req = ServiceRequest('echo $i');
    futures.add(echoService.jsonEncodeEcho(req).future);
  }
  await Future.wait(futures);
  jsonEncodeSw.stop();

  Squadron.fine(() =>
      '[${echoService.runtimeType}] json = ${jsonSw.elapsed} / json encode = ${jsonEncodeSw.elapsed}');
}

extension Futurizer<X> on FutureOr<X> {
  Future<X> get future {
    final value = this;
    return (value is X) ? Future.value(value) : value;
  }

  Future<Y> then<Y>(FutureOr<Y> Function(X) action) {
    final value = this;
    return (value is X) ? action(value).future : value.then(action);
  }
}
