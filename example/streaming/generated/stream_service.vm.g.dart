// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 6.0.3
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../stream_service.dart';

void _start$StreamService(WorkerRequest command) {
  /// VM entry point for StreamService
  run($StreamServiceInitializer, command);
}

EntryPoint $getStreamServiceActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$StreamService;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
