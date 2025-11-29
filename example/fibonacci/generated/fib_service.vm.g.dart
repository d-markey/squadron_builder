// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.3.0 (Squadron 7.4.0)
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
