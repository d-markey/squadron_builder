// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.3.0 (Squadron 7.3.0)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../data_service_marshaler.dart';

void main() {
  /// Web entry point for DataService
  run($DataServiceInitializer);
}

EntryPoint $getDataServiceActivator(SquadronPlatformType platform) {
  if (platform.isJs) {
    return Squadron.uri(
      'example/misc/generated/data_service_marshaler.web.g.dart.js',
    );
  } else if (platform.isWasm) {
    return Squadron.uri(
      'example/misc/generated/data_service_marshaler.web.g.dart.wasm',
    );
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
