import 'dart:math';

import 'package:squadron/squadron.dart';

import 'ansi_color.dart';
import 'clock.dart';
import 'log.dart';

void main() async {
  final red = ConsoleColor(255, 0, 0);
  final green = ConsoleColor(255, 255, 0);

  final log = logger('MAIN:   $threadId', null);

  final clock = ClockWorkerPool(
    concurrencySettings: ConcurrencySettings(minWorkers: 2, maxParallel: 1),
  );

  await clock.start();

  final rnd = Random();

  try {
    log('Starting clock');

    // first clock
    final sub1 = clock.infiniteClock(periodInMs: 500, color: green).listen((n) {
      log('Received $n from ${green.colorize('worker #1')}...');
    });
    Future.delayed(Duration(milliseconds: 4000 + rnd.nextInt(500)), () {
      log('Canceling ${green.colorize('subscription #1')}');
      sub1.cancel();
    });

    // introduce a delay
    await Future.delayed(Duration(milliseconds: 125));

    // second clock
    final sub2 = clock.infiniteClock(periodInMs: 500, color: red).listen((n) {
      log('Received $n from ${red.colorize('worker #2')}...');
    });
    Future.delayed(Duration(milliseconds: 4000 + rnd.nextInt(500)), () {
      log('Canceling ${red.colorize('subscription #2')}');
      sub2.cancel();
    });
  } finally {
    // make sure work requests get scheduled prior to calling stop()
    await Future.delayed(Duration.zero);
    clock.stop();
    log('Worker pool has been stopped: waiting for pending work to complete...');
  }
}
