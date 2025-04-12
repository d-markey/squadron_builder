// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 7.1.1 (Squadron 7.1.1)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../hello_world.dart';

void _start$HelloWorld(WorkerRequest command) {
  /// VM entry point for HelloWorld
  run($HelloWorldInitializer, command);
}

EntryPoint $getHelloWorldActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$HelloWorld;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
