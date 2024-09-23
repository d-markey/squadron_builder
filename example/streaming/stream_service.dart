import 'dart:async';
import 'dart:core' as d;

import 'package:cancelation_token/cancelation_token.dart';
import 'package:squadron/squadron.dart';

import 'generated/stream_service.activator.g.dart';

part 'generated/stream_service.worker.g.dart';

@SquadronService(targetPlatform: TargetPlatform.vm | TargetPlatform.wasm)
class StreamService {
  @squadronMethod
  Stream<d.int> clock(
      {d.int frequency = 1 /* Hz */, CancelationToken? token}) async* {
    var n = 0;
    final ms = 1000 ~/ frequency;
    if (ms == 0) {
      throw d.Exception('Frequency is too high!');
    }
    final delay = d.Duration(milliseconds: ms);
    while (token == null || !token.isCanceled) {
      yield n;
      n += 1;
      await Future.delayed(delay);
    }
  }

  @squadronMethod
  Stream<d.int> infiniteClock({d.int frequency = 1 /* Hz */}) async* {
    var n = 0;
    final ms = 1000 ~/ frequency;
    if (ms == 0) {
      throw d.Exception('Frequency is too high!');
    }
    final delay = d.Duration(milliseconds: ms);
    while (true) {
      yield n;
      n += 1;
      await Future.delayed(delay);
    }
  }
}
