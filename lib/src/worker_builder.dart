import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'worker_generator.dart';

Builder workerBuilder(BuilderOptions options) {
  final withFinalizers = options.config['with_finalizers'];
  if (withFinalizers != null && withFinalizers is! bool) {
    throw ArgumentError(
      'When provided, \'with_finalizers\' must be a boolean value (either \'true\' or \'false\').',
      'with_finalizers',
    );
  }

  // PartBuilder disallows additionalOutputExtensions when options is provided
  // => a default config is provided in options if necessary
  if (!options.config.containsKey('build_extensions')) {
    options = options.overrideWith(BuilderOptions({
      'build_extensions': {
        '.dart': [
          '.worker.g.dart',
          '.vm.g.dart',
          '.web.g.dart',
          '.stub.g.dart',
          '.activator.g.dart',
        ]
      }
    }));
  }

  final formatOutput = PartBuilder([WorkerGenerator()], '.g.dart').formatOutput;

  return PartBuilder(
    [
      WorkerGenerator(
        formatOutput: formatOutput,
        allowFinalizers: withFinalizers,
      )
    ],
    '.worker.g.dart',
    formatOutput: formatOutput,
    options: options,
  );
}
