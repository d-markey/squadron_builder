// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.3.0 (Squadron 7.3.0)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../datetime_service.dart';

void _start$DateTimeService(WorkerRequest command) {
  /// VM entry point for DateTimeService
  run($DateTimeServiceInitializer, command);
}

EntryPoint $getDateTimeServiceActivator(SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$DateTimeService;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
