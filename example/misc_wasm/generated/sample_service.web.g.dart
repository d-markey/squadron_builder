// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 7.1.1 (Squadron 7.1.1)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../sample_service.dart';

void main() {
  /// Web entry point for SampleService
  run($SampleServiceInitializer);
}

EntryPoint $getSampleServiceActivator(SquadronPlatformType platform) {
  if (platform.isWeb) {
    return Squadron.uri(
        'example/misc_wasm/generated/sample_service.web.g.dart.wasm');
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
