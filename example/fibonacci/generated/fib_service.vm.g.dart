// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.0.0+1 (Squadron 7.1.2+1)
// Generated: 2025-09-22 21:57:03.505305Z
// **************************************************************************

import 'package:squadron/squadron.dart';

import 'dart:core' as dc;

import '../fib_service.dart';

void _start$FibService(WorkerRequest command) {
  /// VM entry point for FibService
  run($FibServiceInitializer, command);
}

EntryPoint $getFibServiceActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$FibService;
  } else {
    throw dc.UnsupportedError('${platform.label} not supported.');
  }
}
