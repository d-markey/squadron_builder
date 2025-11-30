// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 9.0.0+1 (Squadron 7.4.0)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../datetime_service.dart';

void main() {
  /// Web entry point for DateTimeService
  run($DateTimeServiceInitializer);
}

EntryPoint $getDateTimeServiceActivator(SquadronPlatformType platform) {
  if (platform.isJs) {
    return Squadron.uri(
      'test/code/base_types/goldens/datetime_service.web.g.dart.js?v=1',
    );
  } else if (platform.isWasm) {
    return Squadron.uri(
      'test/code/base_types/goldens/datetime_service.web.g.dart.wasm?v=1',
    );
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
