// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 6.1.3
// **************************************************************************

import 'package:squadron/squadron.dart' as sq;

import '../json_service.dart';

void main() {
  /// Web entry point for JsonService
  sq.run($JsonServiceInitializer);
}

sq.EntryPoint $getJsonServiceActivator(sq.SquadronPlatformType platform) {
  if (platform.isJs) {
    return sq.Squadron.uri('example/misc/generated/json_service.web.g.dart.js');
  } else if (platform.isWasm) {
    return sq.Squadron.uri(
        'example/misc/generated/json_service.web.g.dart.wasm');
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
