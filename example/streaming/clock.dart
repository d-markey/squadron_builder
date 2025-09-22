import 'dart:async';
import 'dart:math';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/web.dart';
import 'package:squadron/squadron.dart';
import 'package:using/using.dart';

import 'ansi_color.dart';
import 'generated/clock.activator.g.dart';
import 'log.dart';

part 'generated/clock.worker.g.dart';

@SquadronService(targetPlatform: TargetPlatform.all)
class Clock {
  @squadronMethod
  Stream<int> infiniteClock({int periodInMs = 1000, ConsoleColor? color}) {
    final log = logger('WORKER: $threadId', color);
    late StreamController<int> controller;

    controller = StreamController<int>(
      onListen: () async {
        int n = 0;
        final rnd = Random();
        final minMs = (9 * periodInMs) ~/ 10;
        final deltaMs = (2 * periodInMs) ~/ 10;
        while (true) {
          final ms = minMs + rnd.nextInt(deltaMs);
          await Future.delayed(Duration(milliseconds: ms));
          n += 1;
          log('Sending  $n from service');
          controller.add(n);
        }
      },
      onCancel: () {
        controller.close();
        log('Service subscription cancelled');
      },
    );

    return controller.stream;
  }
}
