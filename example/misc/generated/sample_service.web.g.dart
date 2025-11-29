// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.3.0 (Squadron 7.4.0)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../sample_service.dart';

void main() {
  /// Web entry point for SampleService
  run($SampleServiceInitializer);
}

EntryPoint $getSampleServiceActivator(SquadronPlatformType platform) {
  if (platform.isJs) {
    return Squadron.uri('example/misc/generated/sample_service.web.g.dart.js');
  } else if (platform.isWasm) {
    return Squadron.uri(
      'example/misc/generated/sample_service.web.g.dart.wasm',
    );
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
