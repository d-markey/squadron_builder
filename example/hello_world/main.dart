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
