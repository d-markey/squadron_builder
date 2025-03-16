import 'some_service.dart';
import 'thread_identity_service.dart';

void main() async {
  // this (local) service is running in the main thread
  final threadIdService = ThreadIdentityService();

  // this worker will invoke the local service
  final worker = SomeServiceWorker(threadIdService: threadIdService);

  try {
    final workerThreadId = await worker.getThreadId();
    final mainThreadId = await threadIdService.getThreadId();
    final mainThreadIdViaWorker = await worker.getThreadIdFromLocal();

    print('worker threadID = $workerThreadId');
    print('local threadID (called from main thread)  = $mainThreadId');
    print('local threadID (called via worker thread) = $mainThreadIdViaWorker');
    print((mainThreadId == mainThreadIdViaWorker) ? 'OK :)' : 'KO :(');
  } finally {
    worker.stop();
  }
}
