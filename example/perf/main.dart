import 'dart:async';
import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:squadron/squadron.dart';

import 'deviation_monitor.dart';
import 'echo_service.dart';
import 'fibonacci_service.dart';
import 'perf_counters.dart' as instr;
import 'service_config.dart';
import 'service_request.dart';

final logger = Logger(
  filter: ProductionFilter(),
  output: ConsoleOutput(),
  printer: LinePrinter(),
  level: Level.info,
);

void main() async {
  // start a periodic timer to measure timer deviation while executing the different scenarios.
  final resolution = Duration(milliseconds: 20);
  final deviationMonitor =
      await installDeviationMonitor(resolution, test: true);

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

Future<DeviationMonitor> installDeviationMonitor(
  Duration resolution, {
  bool test = false,
}) async {
  final deviationMonitor = DeviationMonitor(resolution, logger);

  if (test) {
    final impactLevel = 3;
    logger.i('''
----------------------------------------------------------
0. Testing deviation monitor (impactLevel = $impactLevel)
----------------------------------------------------------
''');

    // test timer deviation monitor
    deviationMonitor.noisy = true;
    deviationMonitor.start();

    // asynchronous, should have no impact
    await Future.delayed(resolution * impactLevel);

    // synchronous, should trigger a deviation by approx (impactLevel - 1) * 100 % (eg. ~200% for impactLevel = 3)
    final sw = Stopwatch()..start();
    while (sw.elapsedMilliseconds < resolution.inMilliseconds * impactLevel) {
      // CPU loop
    }

    // asynchronous, should have no impact
    await Future.delayed(resolution * impactLevel);

    deviationMonitor.stop();
    deviationMonitor.noisy = false;
  }
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
  logger.i('''
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

void workerHook<T extends WorkerService>(PlatformThread w) {
  logger.i('Worker ready for $T (platform worker type = ${w.runtimeType})');
}

void displayStats(WorkerStat stats) {
  logger.i(
      '${stats.workerType} ${stats.workerHashCode} (${stats.status}): totalWorkload=${stats.totalWorkload}, upTime=${stats.upTime}, idleTime=${stats.idleTime}');
}

Future<instr.PerfCounters> runWorkers(DeviationMonitor monitor, bool trace,
    ServiceConfig<int> workloadDelay) async {
  logger.i('''
----------------------------------------------------------
2. Computing with single service workers (one thread each)
----------------------------------------------------------
''');

  final fibonacciWorker = FibonacciServiceWorker(
      trace: trace, threadHook: (w) => workerHook<FibonacciServiceWorker>(w));
  final echoWorker = EchoServiceWorker(
      trace, workloadDelay, (w) => workerHook<EchoServiceWorker>(w));

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
  logger.i('''
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
      threadHook: (w) => workerHook<FibonacciServiceWorkerPool>(w));
  final echoPool = EchoServiceWorkerPool(
    trace,
    workloadDelay,
    (w) => workerHook<EchoServiceWorkerPool>(w),
    null,
    concurrency,
  );

  await Future.wait([fibonacciPool.start().future, echoPool.start().future]);

  var counters = await testWith(monitor, fibonacciPool, echoPool);
  for (var i = 1; i < runs; i++) {
    counters += await testWith(monitor, fibonacciPool, echoPool);
  }

  await Future.delayed(Duration(milliseconds: 500));

  fibonacciPool.stop((w) => w.stats.idleTime.inMilliseconds > 400);
  fibonacciPool.fullStats.forEach(displayStats);

  echoPool.stop((w) => w.stats.idleTime.inMilliseconds > 400);
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
  logger.i('  --> ELAPSED(fib) = ${fib.duration}');

  monitor.start();
  start = await monitor.takeSnapshot();
  await testEchoWith(echoService);
  final echo = (await monitor.takeSnapshot()) - start;
  monitor.stop();
  logger.i('  --> ELAPSED(echo) = ${echo.duration}');

  monitor.start();
  start = await monitor.takeSnapshot();
  await perfTestEchoWith(echoService);
  await perfTestJsonEchoWith(echoService);
  final perf = (await monitor.takeSnapshot()) - start;
  monitor.stop();
  logger.i('  --> ELAPSED(perf) = ${perf.duration}');

  return instr.PerfCounters(fib, echo, perf);
}

Future<void> testFibWith(FibonacciService fibonacciService) async {
  final futures = <Future>[];

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService.fibonacci(20 + i).then((res) => logger.t(() =>
        '[${fibonacciService.runtimeType}] fibonacci(${20 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService.fibonacciList0(20 + i, 30 + i).then((res) =>
        logger.t(() =>
            '[${fibonacciService.runtimeType}] fibonacciList0(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService.fibonacciList1(20 + i, 30 + i).then((res) =>
        logger.t(() =>
            '[${fibonacciService.runtimeType}] fibonacciList1(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService.fibonacciList2(20 + i, 30 + i).then((res) =>
        logger.t(() =>
            '[${fibonacciService.runtimeType}] fibonacciList2(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(fibonacciService
        .fibonacciStream(20 + i, end: 30 + i)
        .toList()
        .then((res) => logger.t(() =>
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
        .then((res) => logger.t(() =>
            '[${echoService.runtimeType}] jsonEchoWithJsonResult(\'echo $i\') = ${res?.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < loops; i++) {
    futures.add(echoService
        .jsonEchoWithExplicitResult(ServiceRequest('echo $i'))
        .then((res) => logger.t(() =>
            '[${echoService.runtimeType}] jsonEchoWithExplicitResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < loops; i++) {
    futures.add(echoService
        .explicitEchoWithJsonResult(ServiceRequest('echo $i'))
        .then((res) => logger.t(() =>
            '[${echoService.runtimeType}] explicitEchoWithJsonResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < loops; i++) {
    futures.add(echoService
        .explicitEchoWithExplicitResult(ServiceRequest('echo $i'))
        .then((res) => logger.t(() =>
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

  logger.i(() =>
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

  logger.i(() =>
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

class LinePrinter extends SimplePrinter {
  @override
  List<String> log(LogEvent event) {
    final logEvents = _splitEvent(event);
    if (event.error != null || event.stackTrace != null) {
      logEvents.add(LogEvent(
        event.level,
        'ERROR/STACKTRACE:',
        time: event.time,
        error: event.error,
        stackTrace: event.stackTrace,
      ));
    }
    return logEvents.map(super.log).reduce((l, s) => l..addAll(s));
  }

  List<LogEvent> _splitEvent(LogEvent event) {
    final msg = event.message is Function ? event.message() : event.message;
    final Iterable<String> lines;
    if (msg is Map || msg is Iterable) {
      final encoder = const JsonEncoder.withIndent(null);
      lines = encoder.convert(msg).split('\n');
    } else {
      lines = msg.toString().split('\n');
    }
    return lines
        .map((s) => LogEvent(event.level, s, time: event.time))
        .toList();
  }
}
