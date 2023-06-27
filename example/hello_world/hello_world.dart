import 'dart:async';

import 'package:squadron/squadron.dart';
import 'package:squadron/squadron_annotations.dart';

import 'display_thread_id.dart';
import 'generated/hello_world.activator.g.dart';

part 'generated/hello_world.worker.g.dart';

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
