import 'dart:async';

import 'package:logger/logger.dart';

import 'perf_counters.dart' as instr;

class DeviationMonitor {
  DeviationMonitor(this.resolution, this.logger);

  void start() {
    if (_timer == null) {
      _last = DateTime.now();
      _maxDelay = Duration.zero;
      _lastTick = 0;
      _skippedTicks = 0;
      _maxSkippedTicks = 0;
      _totalTicks = -1;
      _timer = Timer.periodic(resolution, _monitor);
    }
  }

  void stop() {
    if (_timer != null) {
      _totalTicks = _timer!.tick;
      _timer!.cancel();
      _timer = null;
    }
  }

  final Duration resolution;
  final Logger? logger;
  bool noisy = true;
  Timer? _timer;

  var _last = DateTime.now();
  var _maxDelay = Duration.zero;
  var _lastTick = 0;
  var _skippedTicks = 0;
  var _maxSkippedTicks = 0;
  var _totalTicks = -1;

  Duration get maxDelay => _maxDelay;

  int get skippedTicks => _skippedTicks;

  int get maxSkippedTicks => _maxSkippedTicks;

  int get totalTicks => _timer?.tick ?? _totalTicks;

  void _monitor(Timer timer) {
    final delta = timer.tick - _lastTick - 1;
    if (delta > 0) {
      if (delta > _maxSkippedTicks) {
        _maxSkippedTicks = delta;
      }
      _skippedTicks += delta;
    }
    _lastTick = timer.tick;
    final now = DateTime.now();
    final diff = now.difference(_last);
    if (diff.abs() > _maxDelay.abs()) {
      _maxDelay = diff;
    }
    final deviation =
        instr.trend(resolution.inMicroseconds, diff.inMicroseconds);
    _last = DateTime.now();
    if (noisy) {
      if (delta > 0) {
        logger?.w(() =>
            '!! timer deviation = ${instr.percent(deviation)} (elapsed = $diff, delta = $delta, skipped = $_skippedTicks)');
      } else {
        logger?.w(() =>
            '!! timer deviation = ${instr.percent(deviation)} (elapsed = $diff, delta = $delta, skipped = $_skippedTicks)');
      }
    }
  }

  Future<instr.PerfCounter> takeSnapshot() async {
    await Future.delayed(resolution * 2);
    return instr.PerfCounter(
      Duration(microseconds: DateTime.now().microsecondsSinceEpoch),
      skippedTicks,
      maxSkippedTicks,
      totalTicks,
      maxDelay,
    );
  }
}
