// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
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
