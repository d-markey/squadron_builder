// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 6.1.3
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../fib_service.dart';

void _start$FibService(WorkerRequest command) {
  /// VM entry point for FibService
  run($FibServiceInitializer, command);
}

EntryPoint $getFibServiceActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$FibService;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
