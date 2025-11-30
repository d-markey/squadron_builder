// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 9.0.0+1 (Squadron 7.4.0)
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
