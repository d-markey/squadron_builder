// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 8.0.0 (Squadron 7.1.2+1)
// Generated: 2025-09-21 16:24:37.351473Z
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