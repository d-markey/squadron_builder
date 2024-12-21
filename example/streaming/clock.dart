import 'dart:async';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/web.dart';
import 'package:squadron/squadron.dart';
import 'package:using/using.dart';

import 'generated/clock.activator.g.dart';

part 'generated/clock.worker.g.dart';

@SquadronService(targetPlatform: TargetPlatform.all)
class Clock {
  @squadronMethod
  Stream<int> infiniteClock({int periodInMs = 1000}) async* {
    final period = Duration(milliseconds: periodInMs);
    int n = 0;
    while (true) {
      n += 1;
      print('[$threadId] Sending  $n from service');
      yield n;
      await Future.delayed(period);
    }
  }
}
