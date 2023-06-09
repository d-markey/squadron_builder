import 'dart:math' as math;

class PerfCounters {
  PerfCounters(this.fib, this.echo, this.perf, int maxDeviation)
      : maxDeviation = Duration(milliseconds: maxDeviation);

  final Duration fib;
  final Duration echo;
  final Duration perf;
  final Duration maxDeviation;

  PerfCounters operator +(PerfCounters other) => PerfCounters(
      fib + other.fib,
      echo + other.echo,
      perf + other.perf,
      math.max(maxDeviation.inMilliseconds, other.maxDeviation.inMilliseconds));

  PerfCounters operator /(int n) =>
      PerfCounters(fib ~/ n, echo ~/ n, perf ~/ n, maxDeviation.inMilliseconds);

  Map<String, double> percentTo(PerfCounters baseline) => {
        'fib': percent(baseline.fib, fib),
        'echo': percent(baseline.echo, echo),
        'perf': percent(baseline.perf, perf),
      };
}

double percent(Duration ref, Duration val) =>
    (100 * (val - ref).inMicroseconds) / ref.inMicroseconds;
