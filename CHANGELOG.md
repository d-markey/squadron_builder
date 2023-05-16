## 2.1.1

- Downgrade version for `analyzer` (fix for https://github.com/d-markey/squadron_builder/issues/4).

## 2.1.0

- Enable support of Dart 3.
- Fix issues reported by `pub.dev` score.
- Add option `serialization_type` to configure the serialization type used for worker request/response (`Map` for Squadron < 5.0.0, `List` for Squadron >= 5.0.0).

## 2.0.0

- Breaking changes: several renamings, in particular the builder name which is now `squadron_builder:worker_builder`.
- Generate appropriate code for fields used as parameters in the constructor of the service class. In previous versions, the generated code for constructors did not map parameters with fields, and fields were overriden with getters/setters throwing an `UnimplementedError`. Please note that if the field is not final or if its value is mutable, updates will not be propagated to/from the platform worker. This is by design, because the service fields and the worker/pool fields are different instances living in different threads, and threads do not share memory in Dart and browsers.
- Support `UseLogger` annotation to generate associated code during worther thread initialization.
- Take builder options into account. In previous versions, builder options were ignored. Also upgraded `source_gen` to 1.3.0 (see pull request https://github.com/dart-lang/source_gen/pull/647 related to builders that produce multiple files).
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
