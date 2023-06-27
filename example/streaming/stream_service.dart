import 'dart:async';

import 'package:squadron/squadron.dart';
import 'package:squadron/squadron_annotations.dart';

import 'generated/stream_service.activator.g.dart';

part 'generated/stream_service.worker.g.dart';

@SquadronService()
class StreamService {
  @SquadronMethod()
  Stream<int> clock(
      {int frequency = 1 /* Hz */, CancellationToken? token}) async* {
    var n = 0;
    final ms = 1000 ~/ frequency;
    if (ms == 0) {
      throw Exception('Frequency is too high!');
    }
    final delay = Duration(milliseconds: ms);
    while (token == null || !token.cancelled) {
      yield n;
      n += 1;
      await Future.delayed(delay);
    }
  }
}
