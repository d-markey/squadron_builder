// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
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
