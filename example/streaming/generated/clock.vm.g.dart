// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.0.0+1 (Squadron 7.1.2+1)
// Generated: 2025-09-22 21:57:04.981275Z
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../clock.dart';

void _start$Clock(WorkerRequest command) {
  /// VM entry point for Clock
  run($ClockInitializer, command);
}

EntryPoint $getClockActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$Clock;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
