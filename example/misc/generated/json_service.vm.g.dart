// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 9.0.0+1 (Squadron 7.4.0)
// **************************************************************************

import 'package:squadron/squadron.dart' as sq;

import '../json_service.dart';

void _start$JsonService(sq.WorkerRequest command) {
  /// VM entry point for JsonService
  sq.run($JsonServiceInitializer, command);
}

sq.EntryPoint $getJsonServiceActivator(sq.SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$JsonService;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
