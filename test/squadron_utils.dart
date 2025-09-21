import 'package:build/build.dart';

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

extension SquadronOutputsExt on Iterable<AssetId> {
  AssetId? get worker =>
      where(($) => $.path.endsWith('.worker.g.dart')).firstOrNull;

  AssetId? get vm => where(($) => $.path.endsWith('.vm.g.dart')).firstOrNull;

  AssetId? get web => where(($) => $.path.endsWith('.web.g.dart')).firstOrNull;

  AssetId? get stub =>
      where(($) => $.path.endsWith('.stub.g.dart')).firstOrNull;

  AssetId? get activator =>
      where(($) => $.path.endsWith('.activator.g.dart')).firstOrNull;
}
