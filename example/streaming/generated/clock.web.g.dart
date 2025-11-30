// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 9.0.0+1 (Squadron 7.4.0)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../clock.dart';

void main() {
  /// Web entry point for Clock
  run($ClockInitializer);
}

EntryPoint $getClockActivator(SquadronPlatformType platform) {
  if (platform.isJs) {
    return Squadron.uri('example/streaming/generated/clock.web.g.dart.js');
  } else if (platform.isWasm) {
    return Squadron.uri('example/streaming/generated/clock.web.g.dart.wasm');
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
