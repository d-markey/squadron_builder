// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.0.0+1 (Squadron 7.1.2+1)
// Generated: 2025-09-22 21:57:04.503694Z
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../data_service_marshaler.dart';

void _start$DataService(WorkerRequest command) {
  /// VM entry point for DataService
  run($DataServiceInitializer, command);
}

EntryPoint $getDataServiceActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$DataService;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
