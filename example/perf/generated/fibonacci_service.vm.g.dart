// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 8.0.0 (Squadron 7.1.2+1)
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
