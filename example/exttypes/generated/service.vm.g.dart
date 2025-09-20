// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 8.0.0 (Squadron 7.1.2+1)
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
