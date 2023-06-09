import 'dart:async';

import 'package:squadron/squadron.dart';

import 'perf_counters.dart';

class DeviationMonitor {
  DeviationMonitor(this.resolution);

  void start() {
    if (_timer == null) {
      _last = DateTime.now();
      _maxDelay = Duration.zero;
      _timer = Timer.periodic(resolution, (t) => _monitor());
    }
  }

  void stop() {
    if (_timer != null) {
      _timer?.cancel();
      _timer = null;
    }
  }

  final Duration resolution;
  Timer? _timer;

  var _last = DateTime.now();
  var _maxDelay = Duration.zero;

  Duration get maxDelay => _maxDelay;

  void _monitor() {
    final now = DateTime.now();
    final diff = now.difference(_last);
    if (diff.abs() > _maxDelay.abs()) {
      _maxDelay = diff;
    }
    final deviation = percent(resolution, diff);
    if (deviation.abs() >= 100) {
      Squadron.info(
          '!! timer deviation = ${deviation.toStringAsFixed(2)} % (elapsed = $diff)');
    } else {
      Squadron.fine(
          '!! timer deviation = ${deviation.toStringAsFixed(2)} % (elapsed = $diff)');
    }
    _last = DateTime.now();
  }
}
