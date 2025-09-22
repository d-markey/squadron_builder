// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.0.0+1 (Squadron 7.1.2+1)
// Generated: 2025-09-22 21:57:04.735282Z
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
      'example/misc_wasm/generated/sample_service.web.g.dart.wasm',
    );
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
