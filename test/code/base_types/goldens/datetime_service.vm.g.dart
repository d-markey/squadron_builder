// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 8.0.0 (Squadron 7.1.2+1)
// Generated: 2025-09-21 21:58:27.173261Z
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../datetime_service.dart';

void _start$DateTimeService(WorkerRequest command) {
  /// VM entry point for DateTimeService
  run($DateTimeServiceInitializer, command);
}

EntryPoint $getDateTimeServiceActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$DateTimeService;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}