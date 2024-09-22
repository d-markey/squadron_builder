import 'dart:async' as xxx;
import 'dart:isolate';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/logger.dart';
import 'package:squadron/squadron.dart';
import 'package:using/using.dart';

import 'generated/hello_world.activator.g.dart';

part 'generated/hello_world.worker.g.dart';

@SquadronService(baseUrl: '~/workers', targetPlatform: TargetPlatform.all)
base class HelloWorld {
  @squadronMethod
  xxx.FutureOr<String?> hello(
      [String? name = 'world', CancelationToken? token]) {
    name = name?.trim() ?? '';
    return name.isEmpty
        ? 'Hello, World! from Isolate ${Isolate.current.hashCode.hex}'
        : 'Hello, $name! from Isolate ${Isolate.current.hashCode.hex}';
  }
}
