import 'package:using/using.dart';

import 'test_services.dart';

void main() async {
  await TestTypedDataWorker().useAsync((w) async {
    print(await w.foo([1, 2, 3, 7, 11]));
  });
}
