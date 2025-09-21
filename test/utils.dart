import 'dart:collection';

import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:source_gen_test/source_gen_test.dart';
import 'package:squadron/squadron.dart';
import 'package:squadron_builder/src/worker_generator.dart';

const testOptions = BuilderOptions({
  'build_extensions': {
    '{{file}}.dart': [
      'goldens/{{file}}.worker.g.dart',
      'goldens/{{file}}.vm.g.dart',
      'goldens/{{file}}.web.g.dart',
      'goldens/{{file}}.stub.g.dart',
      'goldens/{{file}}.activator.g.dart',
    ],
  },
});

extension SuqadronOutputsExt on Iterable<AssetId> {
  AssetId? get worker =>
      where(($) => $.path.endsWith('.worker.g.dart')).firstOrNull;

  AssetId? get vm => where(($) => $.path.endsWith('.vm.g.dart')).firstOrNull;

  AssetId? get web => where(($) => $.path.endsWith('.web.g.dart')).firstOrNull;

  AssetId? get stub =>
      where(($) => $.path.endsWith('.stub.g.dart')).firstOrNull;

  AssetId? get activator =>
      where(($) => $.path.endsWith('.activator.g.dart')).firstOrNull;
}

final buildOptions = {
  #withFinalizers: testOptions.overrideWith(
    const BuilderOptions({'with_finalizers': true}),
  ),
  #withoutFinalizers: testOptions.overrideWith(
    const BuilderOptions({'with_finalizers': false}),
  ),
};

Future<TestBuildResult> build(String srcFile, [BuilderOptions? options]) async {
  final dir = p.dirname(srcFile);
  final file = p.basename(srcFile);
  final reader = await initializeLibraryReaderForDirectory(
    'test/code/$dir',
    file,
  );

  final buildStep = TestBuildStep(file, options);

  final formatter = DartFormatter(
    languageVersion: reader.element.languageVersion.package,
  );

  String format(String code, Version _) => formatter.format(code);

  return generateForLibrary<SquadronService>(
    getTestWorkerGenerator(formatOutput: format),
    reader,
    buildStep,
  );
}

void unused(Object? _) {}
