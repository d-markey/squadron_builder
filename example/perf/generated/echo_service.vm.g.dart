// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 7.1.1 (Squadron 7.1.1)
// **************************************************************************

import 'package:squadron/squadron.dart' as sq;

import '../echo_service.dart';

void _start$EchoService(sq.WorkerRequest command) {
  /// VM entry point for EchoService
  sq.run($EchoServiceInitializer, command);
}

sq.EntryPoint $getEchoServiceActivator(sq.SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$EchoService;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
