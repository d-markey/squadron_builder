// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 9.0.0+2 (Squadron 7.4.0)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../shared_service.dart';

void _start$SharedService(WorkerRequest command) {
  /// VM entry point for SharedService
  run($SharedServiceInitializer, command);
}

EntryPoint $getSharedServiceActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$SharedService;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
