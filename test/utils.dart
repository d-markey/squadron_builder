import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:source_gen_test/source_gen_test.dart';
import 'package:squadron/squadron.dart';
import 'package:squadron_builder/src/worker_generator.dart';

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

void unused(Object? _) {}
