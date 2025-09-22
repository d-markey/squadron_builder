// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 8.0.0 (Squadron 7.1.2+1)
// Generated: 2025-09-21 21:58:27.173261Z
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../datetime_service.dart';

void main() {
  /// Web entry point for DateTimeService
  run($DateTimeServiceInitializer);
}

EntryPoint $getDateTimeServiceActivator(SquadronPlatformType platform) {
  if (platform.isJs) {
    return Squadron.uri('goldens/datetime_service.web.g.dart.js');
  } else if (platform.isWasm) {
    return Squadron.uri('goldens/datetime_service.web.g.dart.wasm');
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
