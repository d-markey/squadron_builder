// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 7.0.0
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../data_service.dart';

void main() {
  /// Web entry point for DataService
  run($DataServiceInitializer);
}

EntryPoint $getDataServiceActivator(SquadronPlatformType platform) {
  if (platform.isJs) {
    return Squadron.uri('example/misc/generated/data_service.web.g.dart.js');
  } else if (platform.isWasm) {
    return Squadron.uri('example/misc/generated/data_service.web.g.dart.wasm');
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
