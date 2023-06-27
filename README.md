<table><tr>
<td valign="top">
  <img src="https://raw.githubusercontent.com/d-markey/squadron/main/squadron_logo.svg" width="120" alt="Squadron logo" />
</td>
<td valign="top">

## **Squadron - Multithreading and worker pools in Dart**

Offload CPU-bound and long running tasks and give your mobile and Web apps some air!

</td>
</tr></table>

# squadron_builder

Dart code generator for Squadron workers. Implement your worker service and let `squadron_builder` bridge the gap with Web Workers and Isolates!

[![Pub Package](https://img.shields.io/pub/v/squadron_builder)](https://pub.dev/packages/squadron_builder)
[![Dart Platforms](https://badgen.net/pub/dart-platform/squadron_builder)](https://pub.dev/packages/squadron_builder)
[![Flutter Platforms](https://badgen.net/pub/flutter-platform/squadron_builder)](https://pub.dev/packages/squadron_builder)

[![License](https://img.shields.io/github/license/d-markey/squadron_builder)](https://github.com/d-markey/squadron_builder/blob/master/LICENSE)
[![Null Safety](https://img.shields.io/badge/null-safety-brightgreen)](https://dart.dev/null-safety)
[![Dart Style](https://img.shields.io/badge/style-lints-40c4ff)](https://pub.dev/packages/lints)
[![Pub Points](https://img.shields.io/pub/points/squadron_builder)](https://pub.dev/packages/squadron_builder/score)
[![Likes](https://img.shields.io/pub/likes/squadron_builder)](https://pub.dev/packages/squadron_builder/score)
[![Popularity](https://img.shields.io/pub/popularity/squadron_builder)](https://pub.dev/packages/squadron_builder/score)
[![Last Commit](https://img.shields.io/github/last-commit/d-markey/squadron_builder?logo=git&logoColor=white)](https://github.com/d-markey/squadron_builder/commits)

# Example - Hello, World

The classic `Hello, World!` example code with a `HelloWorld` service:

```dart
import 'dart:async';

import 'package:squadron/squadron.dart';
import 'package:squadron/squadron_annotations.dart';

import 'display_thread_id.dart';
import 'hello_world.activator.g.dart';

part 'hello_world.worker.g.dart';

@UseLogger(ConsoleSquadronLogger)
@SquadronService(web: false)
class HelloWorld {
  @SquadronMethod()
  Future<String> hello([String? name]) async {
    displayThreadId('hello(${name ?? ''})');
    name = name?.trim();
    if (name == null || name.isEmpty) {
      return 'Hello, World!';
    } else {
      return 'Hello, $name!';
    }
  }
}
```

Generate code for `HelloWorldWorker` and `HelloWorldWorkerPool` with `dart run build_runner build`.

Now you're ready to go:

```dart
import 'package:squadron/squadron.dart';

import 'display_thread_id.dart';
import 'hello_world.dart';

void main() async {
  Squadron.setId('HELLO_WORLD');
  Squadron.logLevel = SquadronLogLevel.config;
  Squadron.setLogger(ConsoleSquadronLogger());

  displayThreadId('main()');
  final worker = HelloWorldWorker();
  Squadron.info(await worker.hello());
  Squadron.info(await worker.hello('Mary'));
  Squadron.info(await worker.hello('John'));
  worker.stop();
}
```

Sample output:

```
[2023-06-27T00:53:18.898087Z] [CONFIG] [HELLO_WORLD] main() running in Isolate 830189434
[2023-06-27T00:53:18.929868Z] [CONFIG] [HELLO_WORLD] created Isolate #HELLO_WORLD.1
[2023-06-27T00:53:18.936874Z] [CONFIG] [HELLO_WORLD] connected to Isolate #HELLO_WORLD.1
[2023-06-27T00:53:18.945103Z] [CONFIG] [HELLO_WORLD.1] hello() running in Isolate 495827043
[2023-06-27T00:53:18.949187Z] [INFO] [HELLO_WORLD] Hello, World!
[2023-06-27T00:53:18.950100Z] [CONFIG] [HELLO_WORLD.1] hello(Mary) running in Isolate 495827043
[2023-06-27T00:53:18.950100Z] [INFO] [HELLO_WORLD] Hello, Mary!
[2023-06-27T00:53:18.950100Z] [CONFIG] [HELLO_WORLD.1] hello(John) running in Isolate 495827043
[2023-06-27T00:53:18.951099Z] [INFO] [HELLO_WORLD] Hello, John!
[2023-06-27T00:53:18.951099Z] [CONFIG] [HELLO_WORLD.1] terminating Isolate
[2023-06-27T00:53:18.954099Z] [CONFIG] [HELLO_WORLD] Isolate #HELLO_WORLD.1 terminated.
```

# Example - Fibonacci sequence

The example computes Fibonacci numbers recursively, simply applying the definition of the Fibonacci sequence. It is very inefficient, but illustrates the effect of multithreading.

```dart
import 'dart:async';

import 'package:squadron/squadron_annotations.dart';
import 'package:squadron/squadron.dart';

import 'fib_service.activator.g.dart';

part 'fib_service.worker.g.dart';

@SquadronService()
class FibService {
  @SquadronMethod()
  Future<int> fibonacci(int i) async => _fib(i);

  // naive & inefficient implementation of the Fibonacci sequence
  static int _fib(int i) => (i < 2) ? i : (_fib(i - 2) + _fib(i - 1));
}
```

To have `squadron_builder` generate the code for the worker and the worker pool, run:

```
dart run build_runner build
```

The main program runs the same computations:
* first with a plain instance of `FibService` (single-threaded, running in the main program's Isolate),
* then with an instance of `FibServiceWorker` (single-threaded, running in a dedicated Isolate),
* finally with an instance of `FibServiceWorkerPool` (multi-threaded, running in specific Isolates managed by the worker pool).

The worker and worker pool generated by `squadron_builder` both wrap the original service and implement it: as a result, they are interchangeable with the original service.

```dart
import 'package:squadron/squadron.dart';

import 'fib_service.dart';

void main() async {
  Squadron.setId('FIB');
  Squadron.setLogger(ConsoleSquadronLogger());
  Squadron.logLevel = SquadronLogLevel.info;

  // compute 9 fibonnaci numbers (starting from 37)
  int count = 9, start = 37;

  print('Computing with FibService (single-threaded, main Isolate)');
  final service = FibService();
  await computeWith(service, start, count);

  print('');
  print('Computing with FibServiceWorker (single-threaded, dedicated Isolate)');
  final worker = FibServiceWorker();
  await worker.start();
  await computeWith(worker, start, count);
  print('  * Stats for worker ${worker.workerId}: ${worker.stats.dump()}');
  worker.stop();

  print('');
  print('Computing with FibServiceWorkerPool (multi-threaded, dedicated Isolates)');
  final concurrency = ConcurrencySettings(minWorkers: 1, maxWorkers: count ~/ 2, maxParallel: 1);
  final pool = FibServiceWorkerPool(concurrencySettings: concurrency);
  await pool.start();
  await computeWith(pool, start, count);
  print(pool.fullStats.map((s) => '  * Stats for pool worker ${s.id}: ${s.dump()}').join('\n'));
  pool.stop();
}

Future computeWith(FibService service, int start, int count) async {
  final sw = Stopwatch()..start();
  // start all computations
  final computations = Iterable<int>.generate(count)
      .map((i) => service.fibonacci(start + i))
      .toList();
  // wait for results
  final results = await Future.wait(computations);
  // display results
  print('  * Results = $results');
  print('  * Total elapsed time: ${sw.elapsed}');
}

extension DebugStats on WorkerStat {
  String dump() => 'totalWorkload=$totalWorkload (max $maxWorkload) - upTime=$upTime - idleTime=$idleTime - status=$status';
}
```

To run the example:

```
dart run .\example\main.dart
```

Sample output:

```
Computing with FibService (single-threaded, main Isolate)
  * Results = [24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170]
  * Total elapsed time: 0:00:11.686547

Computing with FibServiceWorker (single-threaded, dedicated Isolate)
  * Results = [24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170]
  * Total elapsed time: 0:00:11.475894
  * Stats for worker FIB.1: totalWorkload=9 (max 9) - upTime=0:00:11.479725 - idleTime=0:00:00.006250 - status=IDLE

Computing with FibServiceWorkerPool (multi-threaded, dedicated Isolates)
  * Results = [24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170]
  * Total elapsed time: 0:00:05.877645
  * Stats for pool worker FIB.2: totalWorkload=3 (max 1) - upTime=0:00:05.883385 - idleTime=0:00:00.004117 - status=IDLE
  * Stats for pool worker FIB.3: totalWorkload=2 (max 1) - upTime=0:00:05.871348 - idleTime=0:00:04.375454 - status=IDLE
  * Stats for pool worker FIB.4: totalWorkload=2 (max 1) - upTime=0:00:05.870383 - idleTime=0:00:03.585933 - status=IDLE
  * Stats for pool worker FIB.5: totalWorkload=2 (max 1) - upTime=0:00:05.870383 - idleTime=0:00:02.196035 - status=IDLE
```
