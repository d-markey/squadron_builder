import 'dart:async';

import 'package:squadron/squadron.dart';

import 'perf_counters.dart';

class SkewMonitor {
  SkewMonitor(this.resolution) {
    _timer = Timer.periodic(resolution, monitor);
  }

  final Duration resolution;
  late final Timer _timer;

  var _last = DateTime.now();
  var _maxDelay = Duration.zero;

  Duration get maxDelay => _maxDelay;

  void monitor(Timer timer) {
    final now = DateTime.now();
    final diff = now.difference(_last);
    if (diff.abs() > _maxDelay.abs()) {
      _maxDelay = diff;
    }
    final skew = percent(resolution, diff);
    if (skew.abs() >= 100) {
      Squadron.info('skew = ${skew.toStringAsFixed(2)} % (elapsed = $diff)');
    } else {
      Squadron.fine('skew = ${skew.toStringAsFixed(2)} % (elapsed = $diff)');
    }
    _last = DateTime.now();
  }

  void reset() {
    _maxDelay = Duration.zero;
  }

  void stop() {
    _timer.cancel();
  }
}
