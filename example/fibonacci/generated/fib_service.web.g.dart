// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.0.0+1 (Squadron 7.1.2+1)
// Generated: 2025-09-22 21:57:03.505305Z
// **************************************************************************

import 'package:squadron/squadron.dart';

import 'dart:core' as dc;

import '../fib_service.dart';

void main() {
  /// Web entry point for FibService
  run($FibServiceInitializer);
}

EntryPoint $getFibServiceActivator(SquadronPlatformType platform) {
  if (platform.isWeb) {
    return Squadron.uri('/workers/fib_service.web.g.dart.js');
  } else {
    throw dc.UnsupportedError('${platform.label} not supported.');
  }
}
