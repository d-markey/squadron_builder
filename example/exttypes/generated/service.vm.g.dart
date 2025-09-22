// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.0.0+1 (Squadron 7.1.2+1)
// Generated: 2025-09-22 21:57:03.365374Z
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../service.dart';

void _start$Service(WorkerRequest command) {
  /// VM entry point for Service
  run($ServiceInitializer, command);
}

EntryPoint $getServiceActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$Service;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
