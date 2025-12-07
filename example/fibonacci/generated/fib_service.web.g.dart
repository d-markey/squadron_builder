// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 9.0.0+2 (Squadron 7.4.0)
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
