// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.0.0+1 (Squadron 7.1.2+1)
// Generated: 2025-09-22 21:57:03.735423Z
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../person_service.dart';

void _start$PersonService(WorkerRequest command) {
  /// VM entry point for PersonService
  run($PersonServiceInitializer, command);
}

EntryPoint $getPersonServiceActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$PersonService;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
