// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.2.0 (Squadron 7.3.0)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../int_service.dart';

void _start$IntService(WorkerRequest command) {
  /// VM entry point for IntService
  run($IntServiceInitializer, command);
}

EntryPoint $getIntServiceActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$IntService;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
