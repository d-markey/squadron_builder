// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 7.1.4 (Squadron 7.1.1)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../data_service.dart';

void main() {
  /// Web entry point for DataService
  run($DataServiceInitializer);
}

EntryPoint $getDataServiceActivator(SquadronPlatformType platform) {
  if (platform.isWeb) {
    return Squadron.uri(
        'example/misc_wasm/generated/data_service.web.g.dart.wasm');
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
