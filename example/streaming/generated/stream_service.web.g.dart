// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 6.0.9
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../stream_service.dart';

void main() {
  /// Web entry point for StreamService
  run($StreamServiceInitializer);
}

EntryPoint $getStreamServiceActivator(SquadronPlatformType platform) {
  if (platform.isWeb) {
    return Squadron.uri(
        'example/streaming/generated/stream_service.web.g.dart.wasm');
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
