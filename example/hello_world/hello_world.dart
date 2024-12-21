import 'dart:async';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/web.dart';
import 'package:squadron/squadron.dart';
import 'package:using/using.dart';

import 'generated/hello_world.activator.g.dart';

part 'generated/hello_world.worker.g.dart';

@SquadronService(baseUrl: '~/workers', targetPlatform: TargetPlatform.all)
base class HelloWorld {
  @squadronMethod
  FutureOr<String> sayHello([String? name]) {
    name = name?.trim() ?? '';
    return 'Hello, ${name.isEmpty ? 'World' : name} from thread $threadId!';
  }
}
