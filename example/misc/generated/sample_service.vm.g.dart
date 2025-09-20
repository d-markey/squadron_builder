// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 8.0.0 (Squadron 7.1.2+1)
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
