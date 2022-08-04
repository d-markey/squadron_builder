import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'squadron_service_generator.dart';

Builder squadronServiceBuilder(BuilderOptions options) {
  return PartBuilder([SquadronServiceGenerator()], '.worker.g.dart',
      additionalOutputExtensions: [
        '.vm.g.dart',
        '.web.g.dart',
        '.stub.g.dart',
        '.activator.g.dart',
      ]);
}
