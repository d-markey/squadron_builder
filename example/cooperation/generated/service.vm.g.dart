// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.3.0 (Squadron 7.3.0)
// **************************************************************************

import 'package:squadron/squadron.dart' as sq;

import '../service.dart';

void _start$Service(sq.WorkerRequest command) {
  /// VM entry point for Service
  sq.run($ServiceInitializer, command);
}

sq.EntryPoint $getServiceActivator(sq.SquadronPlatformType platform) {
  if (platform.isVm) {
    return _start$Service;
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
