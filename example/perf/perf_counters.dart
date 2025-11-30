import 'dart:math' as math;

class PerfCounter {
  PerfCounter(
    this.duration,
    this.skippedTicks,
    this.maxSkippedTicks,
    this.totalTicks,
    this.maxDeviation,
  );

  final Duration duration;
  final Duration maxDeviation;
  final int skippedTicks;
  final int maxSkippedTicks;
  final int totalTicks;

  double get skippedRatio => skippedTicks / totalTicks;

  PerfCounter operator +(PerfCounter other) => PerfCounter(
    duration + other.duration,
    skippedTicks + other.skippedTicks,
    maxSkippedTicks >= other.maxSkippedTicks
        ? maxSkippedTicks
        : other.maxSkippedTicks,
    totalTicks + other.totalTicks,
    maxDeviation >= other.maxDeviation ? maxDeviation : other.maxDeviation,
  );

  PerfCounter operator -(PerfCounter origin) => PerfCounter(
    duration - origin.duration,
    skippedTicks - origin.skippedTicks,
    maxSkippedTicks >= origin.maxSkippedTicks
        ? maxSkippedTicks
        : origin.maxSkippedTicks,
    totalTicks - origin.totalTicks,
    maxDeviation >= origin.maxDeviation ? maxDeviation : origin.maxDeviation,
  );

  PerfCounter operator /(int n) => PerfCounter(
    duration ~/ n,
    skippedTicks ~/ n,
    maxSkippedTicks,
    totalTicks ~/ n,
    maxDeviation,
  );
}

class PerfCounters {
  PerfCounters(this.fib, this.echo, this.perf);

  final PerfCounter fib;
  final PerfCounter echo;
  final PerfCounter perf;

  Duration get maxDeviation => Duration(
    microseconds: math.max(
      fib.maxDeviation.inMicroseconds,
      math.max(
        echo.maxDeviation.inMicroseconds,
        perf.maxDeviation.inMicroseconds,
      ),
    ),
  );

  int get maxSkippedTicks => math.max(
    fib.maxSkippedTicks,
    math.max(echo.maxSkippedTicks, perf.maxSkippedTicks),
  );

  PerfCounters operator +(PerfCounters other) =>
      PerfCounters(fib + other.fib, echo + other.echo, perf + other.perf);

  PerfCounters operator /(int n) => PerfCounters(fib / n, echo / n, perf / n);
}

double trend(num reference, num value) => (value - reference) / reference;

String percent(num value) => (value.isNaN | value.isInfinite)
    ? '-'
    : '${(100.0 * value).toStringAsFixed(2)} %';
