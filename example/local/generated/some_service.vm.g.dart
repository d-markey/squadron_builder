// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.0.0+1 (Squadron 7.1.2+1)
// Generated: 2025-09-22 21:57:03.825645Z
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
