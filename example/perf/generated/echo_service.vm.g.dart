// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../echo_service.dart';

void _start$EchoService(WorkerRequest command) {
  /// VM entry point for EchoService
  run($EchoServiceInitializer, command);
}

EntryPoint $getEchoServiceActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$EchoService;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
