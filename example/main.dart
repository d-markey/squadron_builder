import 'dart:async';

import 'package:squadron/squadron.dart';

import 'my_service.dart';
import 'my_service_config.dart';
import 'my_service_request.dart';

void main() async {
  Squadron.setId('MAIN');
  Squadron.setLogger(ConsoleSquadronLogger());
  Squadron.debugMode = false;
  Squadron.logLevel = SquadronLogLevel.all;

  final trace = MyServiceConfig('trace', false);

  // FIRST RUN: single-threaded (all in main thread)
  Squadron.info('Computing with MyService (single-threaded)');
  await testWith(MyService(trace));
  await testWith(MyService(trace));

  // SECOND RUN: one worker (= main thread + worker thread)
  Squadron.info('Computing with MyServiceWorker (one thread)');
  final worker = MyServiceWorker(trace);
  await testWith(worker);
  await testWith(worker);

  // clean up worker...
  Squadron.info(
      '${worker.stats.id} (${worker.stats.status}): totalWorkload=${worker.stats.totalWorkload}, upTime=${worker.stats.upTime}, idleTime=${worker.stats.idleTime}');
  worker.stop();

  // SECOND RUN: worker pool (= main thread + n worker threads)
  Squadron.info('Computing with MyServiceWorkerPool (multi-threaded)');
  var pool = MyServiceWorkerPool(trace,
      concurrencySettings: ConcurrencySettings(
        minWorkers: 3,
        maxWorkers: 5,
        maxParallel: 1,
      ));
  await testWith(pool);
  await testWith(pool);

  // clean up pool...
  pool.stop((w) => w.idleTime.inMilliseconds > 500);
  Squadron.info(pool.fullStats.map((s) =>
      '${s.id} (${s.status}): totalWorkload=${s.totalWorkload}, upTime=${s.upTime}, idleTime=${s.idleTime}'));
  await Future.delayed(Duration(milliseconds: 100));
  pool.stop();
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
    futures.add(service
        .fibonacci(20 + i)
        .toFuture()
        .then((res) => Squadron.fine('fibonacci(${20 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < 5; i++) {
    futures.add(service.fibonacciList0(20 + i, 30 + i).toFuture().then(
        (res) => Squadron.fine('fibonacciList0(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < 5; i++) {
    futures.add(service.fibonacciList1(20 + i, 30 + i).toFuture().then(
        (res) => Squadron.fine('fibonacciList1(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < 5; i++) {
    futures.add(service.fibonacciList2(20 + i, 30 + i).toFuture().then(
        (res) => Squadron.fine('fibonacciList2(${20 + i}, ${30 + i}) = $res')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < 5; i++) {
    futures.add(service.fibonacciStream(20 + i, 30 + i).toList().then((res) =>
        Squadron.fine('fibonacciStream(${20 + i}, ${30 + i}) = $res')));
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
            'jsonEchoWithJsonResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < 5; i++) {
    futures.add(service
        .jsonEchoWithExplicitResult(MyServiceRequest('echo $i'))
        .toFuture()
        .then((res) => Squadron.fine(
            'jsonEchoWithExplicitResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < 5; i++) {
    futures.add(service
        .explicitEchoWithJsonResult(MyServiceRequest('echo $i'))
        .toFuture()
        .then((res) => Squadron.fine(
            'explicitEchoWithJsonResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();

  for (var i = 0; i < 5; i++) {
    futures.add(service
        .explicitEchoWithExplicitResult(MyServiceRequest('echo $i'))
        .toFuture()
        .then((res) => Squadron.fine(
            'explicitEchoWithExplicitResult(\'echo $i\') = ${res.toJson()}')));
  }
  await Future.wait(futures);
  futures.clear();
}

Future perfTestEchoWith(MyService service) async {
  final futures = <Future>[];

  final jsonSw = Stopwatch()..start();
  for (var i = 0; i < 10000; i++) {
    futures.add(
        service.jsonEchoWithJsonResult(MyServiceRequest('echo $i')).toFuture());
  }
  await Future.wait(futures);
  jsonSw.stop();
  futures.clear();

  final explicitSw = Stopwatch()..start();
  for (var i = 0; i < 10000; i++) {
    futures.add(service
        .explicitEchoWithExplicitResult(MyServiceRequest('echo $i'))
        .toFuture());
  }
  await Future.wait(futures);
  explicitSw.stop();
  futures.clear();

  Squadron.info('json = ${jsonSw.elapsed} / explicit = ${explicitSw.elapsed}');
}

Future perfTestJsonEchoWith(MyService service) async {
  final futures = <Future>[];

  final jsonSw = Stopwatch()..start();
  for (var i = 0; i < 10000; i++) {
    futures.add(
        service.jsonEchoWithJsonResult(MyServiceRequest('echo $i')).toFuture());
  }
  await Future.wait(futures);
  jsonSw.stop();
  futures.clear();

  final jsonEncodeSw = Stopwatch()..start();
  for (var i = 0; i < 10000; i++) {
    futures.add(service.jsonEncodeEcho(MyServiceRequest('echo $i')).toFuture());
  }
  await Future.wait(futures);
  jsonEncodeSw.stop();
  futures.clear();

  Squadron.info(
      'json = ${jsonSw.elapsed} / json encode = ${jsonEncodeSw.elapsed}');
}

extension Futurizer<X> on FutureOr<X> {
  Future<X> toFuture() {
    final value = this;
    return (value is X) ? Future.value(value) : value;
  }
}
