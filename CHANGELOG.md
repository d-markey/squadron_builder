## 2.0.0

- Breaking changes: several renamings, in particular the builder name which is now `squadron_builder:worker_builder`.
- Take builder options into account. In previous versions, builder options were ignored. Note that `source_gen` currently rejects builder configurations with multiple targets. Pull request https://github.com/dart-lang/source_gen/pull/647 has been submitted to `source_gen` to support builders that produce multiple files.
- Added explicit option `with_finalizers` to force or disable code generation for finalization, and make finalization actually work.
- Split `build.yaml` in two to avoid interfering with the build process of client packages.
- Reorganized the source code to make it more readable and maintainable.

## 1.0.2

- Upgrade packages.
- Switch from deprecated `element2`/`enclosingElement3` to `element`/`enclosingElement`.

## 1.0.1

- Specify platform support in `pubspec.yaml`.

## 1.0.0

- Marshall data to/from workers according to `SerializeWith` annotations.

## 0.9.1

- Upgrade dependencies.

## 0.9.0

- Serialize arguments/return values when `toJson()`/`fromJson()` is available.

## 0.7.1

- Annotations `SquadronService` + `SquadronMethod`.
- Support of cancellation tokens.
- Package upgrade.
- Sample code.

## 0.0.1

- Initial version. Still experimental yet functional on simple use cases.
