// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 6.1.3
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
