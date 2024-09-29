// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 6.0.4
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../data_service.dart';

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
