import 'dart:async';

import 'package:squadron/squadron.dart';

import 'my_service.dart';
import 'my_service_config.dart';
import 'my_service_request.dart';
import 'perf_counters.dart';
import 'skew_monitor.dart';

void main() async {
  Squadron.setId('MAIN');
  Squadron.setLogger(ConsoleSquadronLogger());
  Squadron.debugMode = false;
  Squadron.logLevel = SquadronLogLevel.info;

  final trace = MyServiceConfig('trace', false);
  final workload = MyServiceConfig('workload', 250);

  // start a periodic timer to measure timer deviation while executing the different scenarios.
  final resolution = Duration(milliseconds: 20);
  final skewMonitor = SkewMonitor(resolution);
  await Future.delayed(resolution * 3);

  // FIRST RUN: single-threaded (all in main thread)
  skewMonitor.reset();
  Squadron.info('---------------------------------------------');
  Squadron.info('1. Computing with MyService (single-threaded)');
  Squadron.info(' ');
  final serviceCounters = await runService(trace, workload);
  await Future.delayed(resolution * 3);
  final serviceMaxSkew = skewMonitor.maxDelay;
  print('');
  print('');

  // SECOND RUN: one worker (= main thread + worker thread)
  skewMonitor.reset();
  Squadron.info('----------------------------------------------');
  Squadron.info('2. Computing with MyServiceWorker (one thread)');
  Squadron.info(' ');
  final workerCounters = await runWorker(trace, workload);
  await Future.delayed(resolution * 3);
  final workerMaxSkew = skewMonitor.maxDelay;
  print('');
  print('');

  // THIRD RUN: worker pool (= main thread + n worker threads)
  skewMonitor.reset();
  Squadron.info('------------------------------------------------------');
  Squadron.info('3. Computing with MyServiceWorkerPool (multi-threaded)');
  Squadron.info(' ');
  final workerPoolCounters = await runPool(trace, workload);
  await Future.delayed(resolution * 3);
  final workerPoolMaxSkew = skewMonitor.maxDelay;
  print('');
  print('');

  skewMonitor.stop();

  // print summary
  print('');
  print('');
  print(
      'MAX TIMER DELAY (resolution = $resolution aka ${1000 / resolution.inMilliseconds} frames/sec)\n'
      '   * main thread: $serviceMaxSkew (${percent(resolution, serviceMaxSkew)})\n'
      '   * worker: $workerMaxSkew (${percent(resolution, workerMaxSkew)})\n'
      '   * worker pool: $workerPoolMaxSkew (${percent(resolution, workerPoolMaxSkew)})');
  print('');
  print('SINGLE WORKER vs MAIN THREAD: worker counters should be slightly\n'
      'worse because of serialization/deserialization. The main advantage in\n'
      'this scenario is to free the main event loop, eg in user-facing apps\n'
      'to avoid glitches in the UI.');
  final singleToMain = workerCounters.percentTo(serviceCounters);
  print('  * Fib: ${singleToMain['fib']}');
  print('  * Echo: ${singleToMain['echo']}');
  print('  * Perf: ${singleToMain['perf']}');
  print('');
  print('WORKER POOL vs MAIN THREAD: worker pool counters should be much\n'
      'better even considering the overhead of serialization/deserialization\n'
      'and worker scheduling. Perf improvement depends on method execution\n'
      'time: the heavier the workload, the more performance will be improved.');
  final poolToMain = workerPoolCounters.percentTo(serviceCounters);
  print('  * Fib: ${poolToMain['fib']}');
  print('  * Echo: ${poolToMain['echo']}');
  print('  * Perf: ${poolToMain['perf']}');
  print('');
}

Future<PerfCounters> runService(
    MyServiceConfig<bool> trace, MyServiceConfig<int> workloadDelay) async {
  var counters = await testWith(MyService(trace, workloadDelay));
  await Future.delayed(Duration.zero);
  counters += await testWith(MyService(trace, workloadDelay));
  return counters / 2;
}

Future<PerfCounters> runWorker(
    MyServiceConfig<bool> trace, MyServiceConfig<int> workloadDelay) async {
  final worker = MyServiceWorker(trace, workloadDelay,
      platformWorkerHook: (w) => Squadron.info(
          'Standalone worker ready (platform worker is a ${w.runtimeType})'));

  var counters = await testWith(worker);
  await Future.delayed(Duration.zero);
  counters += await testWith(worker);

  // clean up worker...
  Squadron.info(
      '${worker.stats.id} (${worker.stats.status}): totalWorkload=${worker.stats.totalWorkload}, upTime=${worker.stats.upTime}, idleTime=${worker.stats.idleTime}');
  // should not be necessary if with_finalizers was set to true when the code was generated
  worker.stop();

  return counters / 2;
}

Future runPool(
    MyServiceConfig<bool> trace, MyServiceConfig<int> workloadDelay) async {
  final pool = MyServiceWorkerPool(trace, workloadDelay,
      concurrencySettings: ConcurrencySettings(
        minWorkers: 5,
        maxWorkers: 5,
        maxParallel: 1,
      ),
      platformWorkerHook: (w) => Squadron.info(
          'Pool worker ready (platform worker is a ${w.runtimeType})'));

  var counters = await testWith(pool);
  await Future.delayed(Duration.zero);
  counters += await testWith(pool);

  // clean up pool...
  await Future.delayed(Duration(milliseconds: 400));
  pool.stop((w) => w.idleTime.inMilliseconds > 400);
  for (var s in pool.fullStats) {
    Squadron.info(
        '${s.id} (${s.status}): totalWorkload=${s.totalWorkload}, upTime=${s.upTime}, idleTime=${s.idleTime}');
  }
  await Future.delayed(Duration(milliseconds: 100));
  // should not be necessary if with_finalizers was set to true when the code was generated
  pool.stop();

  return counters / 2;
}

Future<PerfCounters> testWith(MyService service) async {
  final sw = Stopwatch()..start();
  await testFibWith(service);
  final fib = sw.elapsed;
  Squadron.info('-->   ELAPSED(fib) = $fib');
  sw.reset();
  await testEchoWith(service);
  final echo = sw.elapsed;
  Squadron.info('-->   ELAPSED(echo) = $echo');
  sw.reset();
  await perfTestEchoWith(service);
  await perfTestJsonEchoWith(service);
  final perf = sw.elapsed;
  Squadron.info('-->   ELAPSED(perf) = $perf');
  return PerfCounters(fib, echo, perf);
}

Future testFibWith(MyService service) async {
  final futures = <Future>[];

  for (var i = 0; i < 10; i++) {
    futures.add(service.fibonacci(20 + i).toFuture().then((res) =>
        Squadron.fine('[${service.runtimeType}] fibonacci(${20 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(service.fibonacciList0(20 + i, 30 + i).toFuture().then((res) =>
        Squadron.fine(
            '[${service.runtimeType}] fibonacciList0(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(service.fibonacciList1(20 + i, 30 + i).toFuture().then((res) =>
        Squadron.fine(
            '[${service.runtimeType}] fibonacciList1(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(service.fibonacciList2(20 + i, 30 + i).toFuture().then((res) =>
        Squadron.fine(
            '[${service.runtimeType}] fibonacciList2(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);

  for (var i = 0; i < 10; i++) {
    futures.add(service.fibonacciStream(20 + i, 30 + i).toList().then((res) =>
        Squadron.fine(
            '[${service.runtimeType}] fibonacciStream(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  await Future.delayed(Duration.zero);
}

const int loops = 500;

Future testEchoWith(MyService service) async {
  final futures = <Future>[];

  for (var i = 0; i < loops; i++) {
    futures.add(service
        .jsonEchoWithJsonResult(MyServiceRequest('echo $i'))
        .toFuture()
        .then((res) => Squadron.fine(
            '[${service.runtimeType}] jsonEchoWithJsonResult(\'echo $i\') = ${res?.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < loops; i++) {
    futures.add(service
        .jsonEchoWithExplicitResult(MyServiceRequest('echo $i'))
        .toFuture()
        .then((res) => Squadron.fine(
            '[${service.runtimeType}] jsonEchoWithExplicitResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < loops; i++) {
    futures.add(service
        .explicitEchoWithJsonResult(MyServiceRequest('echo $i'))
        .toFuture()
        .then((res) => Squadron.fine(
            '[${service.runtimeType}] explicitEchoWithJsonResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < loops; i++) {
    futures.add(service
        .explicitEchoWithExplicitResult(MyServiceRequest('echo $i'))
        .toFuture()
        .then((res) => Squadron.fine(
            '[${service.runtimeType}] explicitEchoWithExplicitResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();
}

const int perfLoops = 5000;

Future perfTestEchoWith(MyService service) async {
  var futures = <Future>[];
  final jsonSw = Stopwatch()..start();
  for (var i = 0; i < perfLoops; i++) {
    final req = MyServiceRequest('echo $i');
    futures.add(service.jsonEchoWithJsonResult(req).toFuture());
  }
  await Future.wait(futures);
  jsonSw.stop();

  futures = <Future>[];
  final explicitSw = Stopwatch()..start();
  for (var i = 0; i < perfLoops; i++) {
    final req = MyServiceRequest('echo $i');
    futures.add(service.explicitEchoWithExplicitResult(req).toFuture());
  }
  await Future.wait(futures);
  explicitSw.stop();

  Squadron.info(
      '[${service.runtimeType}] json = ${jsonSw.elapsed} / explicit = ${explicitSw.elapsed}');
}

Future perfTestJsonEchoWith(MyService service) async {
  var futures = <Future>[];
  final jsonSw = Stopwatch()..start();
  for (var i = 0; i < perfLoops; i++) {
    final req = MyServiceRequest('echo $i');
    futures.add(service.jsonEchoWithJsonResult(req).toFuture());
  }
  await Future.wait(futures);
  jsonSw.stop();

  futures = <Future>[];
  final jsonEncodeSw = Stopwatch()..start();
  for (var i = 0; i < perfLoops; i++) {
    final req = MyServiceRequest('echo $i');
    futures.add(service.jsonEncodeEcho(req).toFuture());
  }
  await Future.wait(futures);
  jsonEncodeSw.stop();

  Squadron.info(
      '[${service.runtimeType}] json = ${jsonSw.elapsed} / json encode = ${jsonEncodeSw.elapsed}');
}

extension Futurizer<X> on FutureOr<X> {
  Future<X> toFuture() {
    final value = this;
    return (value is X) ? Future.value(value) : value;
  }
}
