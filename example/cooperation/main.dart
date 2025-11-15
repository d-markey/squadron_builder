import 'package:squadron/squadron.dart';

import 'service.dart';
import 'shared_service.dart';

void main() async {
  print('main thread id = $threadId');

  // SharedService sharedService = SharedService('SHARED SERVICE (MAIN THREAD)');
  // SharedService sharedService = SharedServiceWorker('SHARED SERVICE (WORKER)');
  SharedService sharedService = SharedServiceWorkerPool(
    'SHARED SERVICE (WORKER POOL)',
  );
  print('sharedService --> ${await sharedService.getThreadIdAndName()}');

  final serviceWorkerPool = ServiceWorkerPool(
    sharedService: sharedService,
    concurrencySettings: ConcurrencySettings.threeCpuThreads,
  );

  final futures = <Future>[];
  for (var i = 0; i < 2 * serviceWorkerPool.maxConcurrency + 1; i++) {
    // launch all tasks in parallel
    futures.add(serviceWorkerPool.callRemoteService(i).then(print));
  }

  await Future.wait(futures);

  serviceWorkerPool.stop();
  if (sharedService is IWorker) {
    (sharedService as IWorker).stop();
  }
}
