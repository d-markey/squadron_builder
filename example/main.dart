import 'dart:async';

import 'package:squadron/squadron.dart';

import 'my_service.dart';
import 'my_service_config.dart';
import 'my_service_request.dart';

void main() async {
  Squadron.setId('MAIN');
  Squadron.setLogger(ConsoleSquadronLogger());
  Squadron.debugMode = false;
  Squadron.logLevel = SquadronLogLevel.info;

  final trace = MyServiceConfig('trace', false);

  // FIRST RUN: single-threaded (all in main thread)
  Squadron.info('---------------------------------------------');
  Squadron.info('1. Computing with MyService (single-threaded)');
  Squadron.info(' ');
  await runService(trace);
  Squadron.info(' ');
  Squadron.info(' ');

  // SECOND RUN: one worker (= main thread + worker thread)
  Squadron.info('----------------------------------------------');
  Squadron.info('2. Computing with MyServiceWorker (one thread)');
  Squadron.info(' ');
  try {
    await runWorker(trace);
  } catch (ex) {
    Squadron.info('   error = $ex');
  }
  Squadron.info(' ');
  Squadron.info(' ');

  // THIRD RUN: worker pool (= main thread + n worker threads)
  Squadron.info('------------------------------------------------------');
  Squadron.info('3. Computing with MyServiceWorkerPool (multi-threaded)');
  Squadron.info(' ');
  await runPool(trace);
  Squadron.info(' ');
  Squadron.info(' ');
}

Future runService(MyServiceConfig<bool> trace) async {
  await testWith(MyService(trace));
  await testWith(MyService(trace));
}

Future runWorker(MyServiceConfig<bool> trace) async {
  final worker = MyServiceWorker(trace);
  await testWith(worker);
  await testWith(worker);

  // clean up worker...
  Squadron.info(
      '${worker.stats.id} (${worker.stats.status}): totalWorkload=${worker.stats.totalWorkload}, upTime=${worker.stats.upTime}, idleTime=${worker.stats.idleTime}');
  // should not be necessary if with_finalizers was set to true when the code was generated
  // worker.stop();
}

Future runPool(MyServiceConfig<bool> trace) async {
  final pool = MyServiceWorkerPool(trace,
      concurrencySettings: ConcurrencySettings(
        minWorkers: 3,
        maxWorkers: 5,
        maxParallel: 1,
      ));
  await testWith(pool);
  await testWith(pool);

  // clean up pool...
  await Future.delayed(Duration(milliseconds: 400));
  pool.stop((w) => w.idleTime.inMilliseconds > 410);
  Squadron.info(pool.fullStats.map((s) =>
      '${s.id} (${s.status}): totalWorkload=${s.totalWorkload}, upTime=${s.upTime}, idleTime=${s.idleTime}'));
  await Future.delayed(Duration(milliseconds: 100));
  // should not be necessary if with_finalizers was set to true when the code was generated
  // pool.stop();
  Squadron.info(pool.fullStats.map((s) =>
      '${s.id} (${s.status}): totalWorkload=${s.totalWorkload}, upTime=${s.upTime}, idleTime=${s.idleTime}'));
}

Future testWith(MyService service) async {
  final sw = Stopwatch()..start();
  await testFibWith(service);
  await testEchoWith(service);
  await perfTestEchoWith(service);
  await perfTestJsonEchoWith(service);
  Squadron.info('ELAPSED = ${sw.elapsed}');
}

Future testFibWith(MyService service) async {
  final futures = <Future>[];

  for (var i = 0; i < 5; i++) {
    futures.add(service.fibonacci(20 + i).toFuture().then((res) =>
        Squadron.fine('[${service.runtimeType}] fibonacci(${20 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < 5; i++) {
    futures.add(service.fibonacciList0(20 + i, 30 + i).toFuture().then((res) =>
        Squadron.fine(
            '[${service.runtimeType}] fibonacciList0(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < 5; i++) {
    futures.add(service.fibonacciList1(20 + i, 30 + i).toFuture().then((res) =>
        Squadron.fine(
            '[${service.runtimeType}] fibonacciList1(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < 5; i++) {
    futures.add(service.fibonacciList2(20 + i, 30 + i).toFuture().then((res) =>
        Squadron.fine(
            '[${service.runtimeType}] fibonacciList2(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < 5; i++) {
    futures.add(service.fibonacciStream(20 + i, 30 + i).toList().then((res) =>
        Squadron.fine(
            '[${service.runtimeType}] fibonacciStream(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();
}

Future testEchoWith(MyService service) async {
  final futures = <Future>[];

  for (var i = 0; i < 5; i++) {
    futures.add(service
        .jsonEchoWithJsonResult(MyServiceRequest('echo $i'))
        .toFuture()
        .then((res) => Squadron.fine(
            '[${service.runtimeType}] jsonEchoWithJsonResult(\'echo $i\') = ${res?.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < 5; i++) {
    futures.add(service
        .jsonEchoWithExplicitResult(MyServiceRequest('echo $i'))
        .toFuture()
        .then((res) => Squadron.fine(
            '[${service.runtimeType}] jsonEchoWithExplicitResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < 5; i++) {
    futures.add(service
        .explicitEchoWithJsonResult(MyServiceRequest('echo $i'))
        .toFuture()
        .then((res) => Squadron.fine(
            '[${service.runtimeType}] explicitEchoWithJsonResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < 5; i++) {
    futures.add(service
        .explicitEchoWithExplicitResult(MyServiceRequest('echo $i'))
        .toFuture()
        .then((res) => Squadron.fine(
            '[${service.runtimeType}] explicitEchoWithExplicitResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();
}

const int loops = 50000;

Future perfTestEchoWith(MyService service) async {
  var futures = <Future>[];
  final jsonSw = Stopwatch()..start();
  for (var i = 0; i < loops; i++) {
    final req = MyServiceRequest('echo $i');
    futures.add(service.jsonEchoWithJsonResult(req).toFuture());
  }
  await Future.wait(futures);
  jsonSw.stop();

  futures = <Future>[];
  final explicitSw = Stopwatch()..start();
  for (var i = 0; i < loops; i++) {
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
  for (var i = 0; i < loops; i++) {
    final req = MyServiceRequest('echo $i');
    futures.add(service.jsonEchoWithJsonResult(req).toFuture());
  }
  await Future.wait(futures);
  jsonSw.stop();

  futures = <Future>[];
  final jsonEncodeSw = Stopwatch()..start();
  for (var i = 0; i < loops; i++) {
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
