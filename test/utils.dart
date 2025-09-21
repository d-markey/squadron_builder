import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:source_gen_test/source_gen_test.dart';
import 'package:squadron/squadron.dart';
import 'package:squadron_builder/src/worker_generator.dart';
import 'package:test/test.dart';

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

  String $format(String code, Version _) => formatter.format(code);

  return generateForLibrary<SquadronService>(
    getTestWorkerGenerator(formatOutput: $format, options: options),
    reader,
    buildStep,
  );
}

void expectOutputContains(
  AssetId? output,
  TestBuildResult buildResult,
  Set<Pattern> expectations,
) {
  expect(output, isNotNull);
  output as AssetId;

  final src = buildResult.getGeneratedContents(output);

  for (var exp in expectations) {
    expect(src, contains(exp));
  }
}

void expectOutputDoesNotContain(
  AssetId? output,
  TestBuildResult buildResult,
  Set<Pattern> unexpectations,
) {
  expect(output, isNotNull);
  output as AssetId;

  final src = buildResult.getGeneratedContents(output);

  for (var unexp in unexpectations) {
    expect(src, isNot(contains(unexp)));
  }
}

void checkBuildLogs([Set<Pattern> expectations = const {}]) {
  if (expectations.isEmpty && buildLogItems.isNotEmpty) {
    print('UNEXPECTED: build log is not empty:');
    buildLogItems.map((l) => '>>> $l').forEach(print);
  } else {
    var matches = <Pattern>{};
    for (var exp in expectations) {
      for (var log in buildLogItems) {
        if (log.contains(exp)) {
          matches.add(exp);
          break;
        }
      }
    }
    final missing = expectations.difference(matches);
    if (missing.isNotEmpty) {
      print(
        'UNEXPECTED: build log is missing the following term(s): ${missing.map((t) => '"$t"').join(', ')}',
      );
      buildLogItems.map((l) => '>>> $l').forEach(print);
    }
  }
  clearBuildLog();
}
