// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.0.0+1 (Squadron 7.1.2+1)
// Generated: 2025-09-22 21:57:03.644680Z
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
