// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.1.0 (Squadron 7.2.0)
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
