import 'stream_service.dart';

void main() async {
  // start worker
  final worker = StreamServiceWorker();
  await worker.start();
  // start streaming from clock service
  final stream = worker.infiniteClock(frequency: 3 /*Hz*/);
  final sub = stream.listen((event) {
    print('${DateTime.now()} - received $event');
  }, onError: (err) {
    print('${DateTime.now()} - Unexpected error: $err.');
  }, onDone: () {
    print('${DateTime.now()} - Done.');
  });
  // cancel subscription in 7 seconds
  Future.delayed(Duration(seconds: 7), () async {
    print('${DateTime.now()} - cancelling subscription...');
    await sub.cancel();
    print('${DateTime.now()} - subscription effectively cancelled.');
  });
  // stop worker
  worker.stop();
  print(
      '${DateTime.now()} - worker is now stopped but streaming continues until the subscription is cancelled.');
}
