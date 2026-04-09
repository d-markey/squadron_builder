// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 9.2.0 (Squadron 7.4.3)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../fibonacci_service.dart';

void _start$FibonacciService(WorkerRequest command) {
  /// VM entry point for FibonacciService
  run($FibonacciServiceInitializer, command);
}

EntryPoint $getFibonacciServiceActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$FibonacciService;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
