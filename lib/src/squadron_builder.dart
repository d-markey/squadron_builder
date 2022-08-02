import 'dart:io';

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'squadron_service_generator.dart';

Builder squadronServiceBuilder(BuilderOptions options) {
  stdout.writeln('in squadronServiceBuilder');
  return PartBuilder([SquadronServiceGenerator()], '.worker.g.dart',
      additionalOutputExtensions: [
        '.vm.g.dart',
        '.web.g.dart',
        '.xplat.g.dart',
        '.activator.g.dart',
      ]);
}
