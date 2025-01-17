import 'package:squadron/squadron.dart';

import 'test_services.dart';

void main() async {
  TestTypedDataWorkerPool? pool = TestTypedDataWorkerPool(
      concurrencySettings: ConcurrencySettings.threeCpuThreads);

  await Future.wait(
    Iterable.generate(
      6,
      (i) => pool.foo([1, 2, 3, 7, 11]).then(print),
    ),
  );

  pool.terminate();

  print('Done.');
}
