import 'dart:async';
import 'dart:math';

import 'package:squadron/squadron.dart';

import 'my_service.dart';
import 'my_service_config.dart';
import 'my_service_request.dart';

void main() async {
  Squadron.setId('MAIN');
  Squadron.setLogger(ConsoleSquadronLogger());
  Squadron.logLevel = SquadronLogLevel.info;

  int count = 3;

  final config = MyServiceConfig('TEST', 5);

  Squadron.info('Computing with MyService (single-threaded)');
  await computeWith(MyService(config), count);

  Squadron.info('Computing with MyServiceWorkerPool (multi-threaded)');
  final pool = MyServiceWorkerPool(config,
      concurrencySettings: ConcurrencySettings(
        minWorkers: count,
        maxWorkers: count,
        maxParallel: 1,
      ));
  config.setting = 10;
  await pool.start();
  config.setting = 100;
  await computeWith(pool, count);

  final res = await pool.doSomething(MyServiceRequest('test'));
  print('res = $res');

  pool.getConfig();
  final task = pool.getConfig().then((c) => print('config = $c'));
  pool.getConfig();
  pool.getConfig();

  await task;

  pool.stop();
}

Future computeWith(MyService service, int count) async {
  final sw = Stopwatch();
  sw.start();

  final futures = <Future<int>>[];
  for (var i = 0; i < count; i++) {
    futures.add(service.fibonacci(40 + i));
  }

  final results = await Future.wait(futures);
  Squadron.info('  * results from futures = $results');

  await for (var i in service.fibonnacciStream(20, 20 + count * 2)) {
    Squadron.info('  * received from stream: $i');
  }

  Squadron.info('  * Total elapsed time: ${sw.elapsed}');
  sw.stop();
}
