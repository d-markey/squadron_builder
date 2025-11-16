// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.3.0 (Squadron 7.3.0)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../service.dart';

void main() {
  /// Web entry point for Service
  run($ServiceInitializer);
}

EntryPoint $getServiceActivator(SquadronPlatformType platform) {
  if (platform.isJs) {
    return Squadron.uri('~/workers/service.web.g.dart.js');
  } else if (platform.isWasm) {
    return Squadron.uri('~/workers/service.web.g.dart.wasm');
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
