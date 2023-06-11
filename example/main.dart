import 'dart:async';

import 'package:squadron/squadron.dart';

import 'echo_service.dart';
import 'fibonacci_service.dart';
import 'service_config.dart';
import 'service_request.dart';
import 'perf_counters.dart';
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
  displaySummary(resolution, serviceCounters, workerCounters, poolCounters);
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
  return deviationMonitor;
}

void displaySummary(Duration resolution, PerfCounters serviceCounters,
    PerfCounters workerCounters, PerfCounters poolCounters) {
  final workerToService = workerCounters.percentTo(serviceCounters);
  final workerPoolToService = poolCounters.percentTo(serviceCounters);

  print('''
==== SUMMARY ====

MAX TIMER DELAY (resolution = $resolution aka ${1000 / resolution.inMilliseconds} frames/sec)
    * main thread: ${serviceCounters.maxDeviation} (${percent(resolution, serviceCounters.maxDeviation).toStringAsFixed(2)} %)
    * worker: ${workerCounters.maxDeviation} (${percent(resolution, workerCounters.maxDeviation).toStringAsFixed(2)} %)
    * worker pool: ${poolCounters.maxDeviation} (${percent(resolution, poolCounters.maxDeviation).toStringAsFixed(2)}) %

MAIN THREAD (baseline): executed in the main event loop.
  * Fib:  ${serviceCounters.fib}
  * Echo: ${serviceCounters.echo}
  * Perf: ${serviceCounters.perf}

SINGLE WORKERS vs MAIN THREAD: worker counters should be slightly worse because
of serialization/deserialization. The main advantage in this scenario is to
free the main event loop, eg in user-facing apps to avoid glitches in the UI.
  * Fib:  ${workerCounters.fib} --> ${workerToService['fib']?.toStringAsFixed(2)} %
  * Echo: ${workerCounters.echo} --> ${workerToService['echo']?.toStringAsFixed(2)} %
  * Perf: ${workerCounters.perf} --> ${workerToService['perf']?.toStringAsFixed(2)} %

WORKER POOL vs MAIN THREAD: worker pool counters should be much better even
considering the overhead of serialization/deserialization and worker scheduling.
Perf improvement depends on method execution time: the heavier the workload,
the more performance will be improved.
  * Fib:  ${poolCounters.fib} --> ${workerPoolToService['fib']?.toStringAsFixed(2)} %
  * Echo: ${poolCounters.echo} --> ${workerPoolToService['echo']?.toStringAsFixed(2)} %
  * Perf: ${poolCounters.perf} --> ${workerPoolToService['perf']?.toStringAsFixed(2)} %
''');
}

Future<PerfCounters> runServices(DeviationMonitor monitor, bool trace,
    ServiceConfig<int> workloadDelay) async {
  Squadron.info('''
----------------------------------------------------------
1. Computing with services (single-threaded)
----------------------------------------------------------
''');

  final fibonacciService = FibonacciService(trace: trace);
  final echoService = EchoService(trace, workloadDelay);

  monitor.start();
  var counters = await testWith(monitor, fibonacciService, echoService);
  await Future.delayed(Duration.zero);
  counters += await testWith(monitor, fibonacciService, echoService);
  monitor.stop();

  print('');
  return counters / 2;
}

void platformWorkerHook<T extends WorkerService>(PlatformWorker w) {
  Squadron.info(
      'Worker ready for $T (platform worker type = ${w.runtimeType})');
}

void displayStats(WorkerStat stats) {
  Squadron.info(
      '${stats.workerType} ${stats.id} (${stats.status}): totalWorkload=${stats.totalWorkload}, upTime=${stats.upTime}, idleTime=${stats.idleTime}');
}

Future<PerfCounters> runWorkers(DeviationMonitor monitor, bool trace,
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

  monitor.start();
  var counters = await testWith(monitor, fibonacciWorker, echoWorker);
  await Future.delayed(Duration.zero);
  counters += await testWith(monitor, fibonacciWorker, echoWorker);
  monitor.stop();

  displayStats(fibonacciWorker.stats);
  displayStats(echoWorker.stats);

  // clean up workers... should not be necessary if with_finalizers was set to true when the code was generated
  fibonacciWorker.stop();
  echoWorker.stop();

  print('');
  return counters / 2;
}

Future<PerfCounters> runPools(DeviationMonitor monitor, bool trace,
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

  await Future.wait(
      [fibonacciPool.start().toFuture(), echoPool.start().toFuture()]);

  monitor.start();
  var counters = await testWith(monitor, fibonacciPool, echoPool);
  await Future.delayed(Duration.zero);
  counters += await testWith(monitor, fibonacciPool, echoPool);
  monitor.stop();

  await Future.delayed(Duration(milliseconds: 500));

  fibonacciPool.stop((w) => w.idleTime.inMilliseconds > 400);
  fibonacciPool.fullStats.forEach(displayStats);

  echoPool.stop((w) => w.idleTime.inMilliseconds > 400);
  echoPool.fullStats.forEach(displayStats);

  // clean up pools... should not be necessary if with_finalizers was set to true when the code was generated
  fibonacciPool.stop();
  echoPool.stop();

  print('');
  return counters / 2;
}

Future<PerfCounters> testWith(DeviationMonitor monitor,
    FibonacciService fibonacciService, EchoService echoService) async {
  final sw = Stopwatch()..start();
  await testFibWith(fibonacciService);
  final fib = sw.elapsed;
  Squadron.info('  --> ELAPSED(fib) = $fib');
  sw.reset();
  await testEchoWith(echoService);
  final echo = sw.elapsed;
  Squadron.info('  --> ELAPSED(echo) = $echo');
  sw.reset();
  await perfTestEchoWith(echoService);
  await perfTestJsonEchoWith(echoService);
  final perf = sw.elapsed;
  Squadron.info('  --> ELAPSED(perf) = $perf');
  return PerfCounters(fib, echo, perf, monitor.maxDelay.inMilliseconds);
}

Future<void> testFibWith(FibonacciService fibonacciService) async {
  final futures = <Future>[];

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService.fibonacci(20 + i).toFuture().then((res) =>
        Squadron.fine(
            '[${fibonacciService.runtimeType}] fibonacci(${20 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService.fibonacciList0(20 + i, 30 + i).toFuture().then(
        (res) => Squadron.fine(
            '[${fibonacciService.runtimeType}] fibonacciList0(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService.fibonacciList1(20 + i, 30 + i).toFuture().then(
        (res) => Squadron.fine(
            '[${fibonacciService.runtimeType}] fibonacciList1(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService.fibonacciList2(20 + i, 30 + i).toFuture().then(
        (res) => Squadron.fine(
            '[${fibonacciService.runtimeType}] fibonacciList2(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService
        .fibonacciStream(20 + i, end: 30 + i)
        .toList()
        .then((res) => Squadron.fine(
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
        .toFuture()
        .then((res) => Squadron.fine(
            '[${echoService.runtimeType}] jsonEchoWithJsonResult(\'echo $i\') = ${res?.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < loops; i++) {
    futures.add(echoService
        .jsonEchoWithExplicitResult(ServiceRequest('echo $i'))
        .toFuture()
        .then((res) => Squadron.fine(
            '[${echoService.runtimeType}] jsonEchoWithExplicitResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < loops; i++) {
    futures.add(echoService
        .explicitEchoWithJsonResult(ServiceRequest('echo $i'))
        .toFuture()
        .then((res) => Squadron.fine(
            '[${echoService.runtimeType}] explicitEchoWithJsonResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < loops; i++) {
    futures.add(echoService
        .explicitEchoWithExplicitResult(ServiceRequest('echo $i'))
        .toFuture()
        .then((res) => Squadron.fine(
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
    futures.add(echoService.jsonEchoWithJsonResult(req).toFuture());
  }
  await Future.wait(futures);
  jsonSw.stop();

  futures = <Future>[];
  final explicitSw = Stopwatch()..start();
  for (var i = 0; i < perfLoops; i++) {
    final req = ServiceRequest('echo $i');
    futures.add(echoService.explicitEchoWithExplicitResult(req).toFuture());
  }
  await Future.wait(futures);
  explicitSw.stop();

  Squadron.info(
      '[${echoService.runtimeType}] json = ${jsonSw.elapsed} / explicit = ${explicitSw.elapsed}');
}

Future<void> perfTestJsonEchoWith(EchoService echoService) async {
  var futures = <Future>[];
  final jsonSw = Stopwatch()..start();
  for (var i = 0; i < perfLoops; i++) {
    final req = ServiceRequest('echo $i');
    futures.add(echoService.jsonEchoWithJsonResult(req).toFuture());
  }
  await Future.wait(futures);
  jsonSw.stop();

  futures = <Future>[];
  final jsonEncodeSw = Stopwatch()..start();
  for (var i = 0; i < perfLoops; i++) {
    final req = ServiceRequest('echo $i');
    futures.add(echoService.jsonEncodeEcho(req).toFuture());
  }
  await Future.wait(futures);
  jsonEncodeSw.stop();

  Squadron.info(
      '[${echoService.runtimeType}] json = ${jsonSw.elapsed} / json encode = ${jsonEncodeSw.elapsed}');
}

extension Futurizer<X> on FutureOr<X> {
  Future<X> toFuture() {
    final value = this;
    return (value is X) ? Future.value(value) : value;
  }
}
