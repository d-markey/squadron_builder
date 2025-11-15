// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.2.0 (Squadron 7.3.0)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../some_service.dart';

void _start$SomeService(WorkerRequest command) {
  /// VM entry point for SomeService
  run($SomeServiceInitializer, command);
}

EntryPoint $getSomeServiceActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$SomeService;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
