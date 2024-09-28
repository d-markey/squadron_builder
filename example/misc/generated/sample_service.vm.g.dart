// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 6.0.3
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../sample_service.dart';

void _start$SampleService(WorkerRequest command) {
  /// VM entry point for SampleService
  run($SampleServiceInitializer, command);
}

EntryPoint $getSampleServiceActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$SampleService;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
