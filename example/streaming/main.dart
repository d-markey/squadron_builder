import 'stream_service.dart';

void main() async {
  // start worker
  final worker = StreamServiceWorker();
  await worker.start();
  // start streaming from clock service
  final stream = worker.infiniteClock(frequency: 2);
  final sub = stream.listen((event) {
    print('${DateTime.now()} - received $event');
  }, onError: (err) {
    print('${DateTime.now()} - Unexpected error: $err.');
  });
  // cancel subscription in 7 seconds
  Future.delayed(Duration(seconds: 7), () {
    sub.cancel();
    print('${DateTime.now()} - subscription cancelled.');
  });
  // stop worker
  worker.stop();
  print(
      '${DateTime.now()} - worker is now stopped but streaming continues until the subscription is cancelled.');
}
