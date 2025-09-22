// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.0.0+1 (Squadron 7.1.2+1)
// Generated: 2025-09-22 21:57:04.456728Z
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../data_service_json.dart';

void main() {
  /// Web entry point for DataService
  run($DataServiceInitializer);
}

EntryPoint $getDataServiceActivator(SquadronPlatformType platform) {
  if (platform.isJs) {
    return Squadron.uri(
      'example/misc/generated/data_service_json.web.g.dart.js',
    );
  } else if (platform.isWasm) {
    return Squadron.uri(
      'example/misc/generated/data_service_json.web.g.dart.wasm',
    );
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
