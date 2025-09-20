// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 8.0.0 (Squadron 7.1.2+1)
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
