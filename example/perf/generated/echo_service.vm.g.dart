// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.3.0 (Squadron 7.3.0)
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
