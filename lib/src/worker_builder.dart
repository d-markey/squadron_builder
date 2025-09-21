import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'worker_generator.dart';

const defaultBuilderOptions = BuilderOptions({
  'build_extensions': {
    '.dart': [
      '.worker.g.dart',
      '.vm.g.dart',
      '.web.g.dart',
      '.stub.g.dart',
      '.activator.g.dart',
    ],
  },
});

/// Creates the builder used to generate code for platform workers, Squadron
/// worker and Squadron worker pool. [options] is provided by Dart's build
/// system. It is read from the `build.yaml` file. Supported options include:
/// * `build_extensions`: to customize generated files.
/// * `with_finalizers`: to activate automatic finalization of workers/worker pools.
Builder workerBuilder(BuilderOptions options) {
  final withFinalizers = options.config['with_finalizers'] ?? false;
  if (withFinalizers is! bool) {
    throw ArgumentError.value(
      withFinalizers,
      'with_finalizers',
      'Invalid value for \'with_finalizers\': it must be a boolean value (either \'true\' or \'false\').',
    );
  }

  // PartBuilder disallows additionalOutputExtensions when options is provided
  // => a default config is provided in options if necessary
  if (!options.config.containsKey('build_extensions')) {
    options = options.overrideWith(defaultBuilderOptions);
  }

  final formatOutput = PartBuilder([WorkerGenerator()], '.g.dart').formatOutput;

  return PartBuilder(
    [
      WorkerGenerator(
        formatOutput: formatOutput,
        withFinalizers: withFinalizers,
      ),
    ],
    '.worker.g.dart',
    formatOutput: formatOutput,
    options: options,
  );
}
