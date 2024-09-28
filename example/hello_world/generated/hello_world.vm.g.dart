// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 6.0.3
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
