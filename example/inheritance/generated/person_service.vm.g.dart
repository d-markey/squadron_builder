// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.3.0 (Squadron 7.3.0)
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
