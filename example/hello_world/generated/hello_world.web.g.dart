// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// Generator: WorkerGenerator 8.1.0 (Squadron 7.2.0)
// **************************************************************************

import 'package:squadron/squadron.dart';

import '../hello_world.dart';

void main() {
  /// Web entry point for HelloWorld
  run($HelloWorldInitializer);
}

EntryPoint $getHelloWorldActivator(SquadronPlatformType platform) {
  if (platform.isJs) {
    return Squadron.uri('~/workers/hello_world.web.g.dart.js');
  } else if (platform.isWasm) {
    return Squadron.uri('~/workers/hello_world.web.g.dart.wasm');
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}
