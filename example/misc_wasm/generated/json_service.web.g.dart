// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 6.1.1
// **************************************************************************

import 'package:squadron/squadron.dart' as sq;

import '../json_service.dart';

void main() {
  /// Web entry point for JsonService
  sq.run($JsonServiceInitializer);
}

sq.EntryPoint $getJsonServiceActivator(sq.SquadronPlatformType platform) {
  if (platform.isWeb) {
    return sq.Squadron.uri(
        'example/misc_wasm/generated/json_service.web.g.dart.wasm');
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
