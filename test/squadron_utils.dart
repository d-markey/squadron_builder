import 'package:build/build.dart';
import 'package:source_gen_test/source_gen_test.dart';

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

final buildOptionsWithFinalizers = testOptions.overrideWith(
  const BuilderOptions({'with_finalizers': true}),
);

final buildOptionsWithoutFinalizers = testOptions.overrideWith(
  const BuilderOptions({'with_finalizers': false}),
);

extension SquadronOutputsExt on TestBuildResult {
  AssetId? get worker =>
      outputs.where(($) => $.path.endsWith('.worker.g.dart')).firstOrNull;

  AssetId? get vm =>
      outputs.where(($) => $.path.endsWith('.vm.g.dart')).firstOrNull;

  AssetId? get web =>
      outputs.where(($) => $.path.endsWith('.web.g.dart')).firstOrNull;

  AssetId? get stub =>
      outputs.where(($) => $.path.endsWith('.stub.g.dart')).firstOrNull;

  AssetId? get activator =>
      outputs.where(($) => $.path.endsWith('.activator.g.dart')).firstOrNull;
}
