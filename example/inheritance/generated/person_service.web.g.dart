// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 8.0.0 (Squadron 7.1.2+1)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../person_service.dart';

void main() {
  /// Web entry point for PersonService
  run($PersonServiceInitializer);
}

EntryPoint $getPersonServiceActivator(SquadronPlatformType platform) {
  if (platform.isJs) {
    return Squadron.uri('~/workers/person_service.web.g.dart.js');
  } else if (platform.isWasm) {
    return Squadron.uri('~/workers/person_service.web.g.dart.wasm');
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
