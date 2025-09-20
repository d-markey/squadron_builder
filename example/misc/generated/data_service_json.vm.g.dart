// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 8.0.0 (Squadron 7.1.2+1)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../data_service_json.dart';

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
