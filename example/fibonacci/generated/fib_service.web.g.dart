// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 7.1.5-mki (Squadron 7.1.2+1)
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
