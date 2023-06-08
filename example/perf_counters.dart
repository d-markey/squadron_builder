class PerfCounters {
  PerfCounters(this.fib, this.echo, this.perf);

  final Duration fib;
  final Duration echo;
  final Duration perf;

  PerfCounters operator +(PerfCounters other) =>
      PerfCounters(fib + other.fib, echo + other.echo, perf + other.perf);

  PerfCounters operator /(int n) =>
      PerfCounters(fib ~/ n, echo ~/ n, perf ~/ n);

  Map<String, double> percentTo(PerfCounters baseline) => {
        'fib': percent(baseline.fib, fib),
        'echo': percent(baseline.echo, echo),
        'perf': percent(baseline.perf, perf),
      };
}

double percent(Duration ref, Duration val) =>
    (100 * (val - ref).inMicroseconds) / ref.inMicroseconds;
