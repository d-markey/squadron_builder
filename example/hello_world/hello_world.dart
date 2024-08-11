import 'dart:async';
import 'dart:isolate';

import 'package:squadron/squadron.dart';

import 'generated/hello_world.activator.g.dart';

part 'generated/hello_world.worker.g.dart';

@SquadronService()
class HelloWorld {
  @squadronMethod
  Future<String> hello([String? name]) async {
    name = name?.trim() ?? '';
    return name.isEmpty
        ? 'Hello, World! from Isolate ${Isolate.current.hashCode}'
        : 'Hello, $name! from Isolate ${Isolate.current.hashCode}';
  }
}
