## 6.1.2

- Fix pub.dev issues.

## 6.1.1

- Update serializers/deserializers when `Squadron.converter` is modified.

## 6.1.0

- Use marshalers for `TypedData`.
- Update version number.

## 6.0.9

- Update version number.

## 6.0.8

- Don't use marshaller tear-offs when method implementations do not use `dynamic` (eg. `GenericMarshaler<T>.marshal()` could be overridden to return something more specific than `dynamic`).

## 6.0.7

- Don't generate converters for `dynamic` or `void`.
- Use tear-offs instead of lambdas for marshalers where pivot type is `dynamic`.
- Add support for generating local workers / local worker clients.

## 6.0.6

- Declare the service activator as `const` instead of `final`.

## 6.0.5

- Make sure no code is emitted when no worker code was generated.

## 6.0.4

- Update managed type cache asap in `handleDartType()` (fixes a stack overflow exception).
- Read value of boolean flags in annotations -- fixes https://github.com/d-markey/squadron/issues/44 

## 6.0.3

- Added log messages.
- Implemented a cache for TypeManagers -- credits go to https://github.com/jpohhhh, thanks! 

## 6.0.2

- Reworked initialization of imported types.

## 6.0.1

- Do not initialize the type manager before a Squadron annotation is effectively found -- fixes https://github.com/d-markey/squadron/issues/40

## 6.0.0

- squadron_builder for Squadron version >= 6.0. Please note there are no versions 3.x-5.x in order to align squadron_builder version numbers with that of Squadron.
- Removed support for 'useLogger' and 'SerializeWith' annotations.
- Added support for libraries imported with a prefix -- fixes https://github.com/d-markey/squadron_builder/issues/14
- Added support for record types.

## 3.x-5.x

- Intentionaly missing versions (fastforward to 6.0 to match Squadron versions).

## 2.4.5

- Fix bug for async service method decorated with a marshaler: the service method was called twice if the return value is nullable!

## 2.4.4

- Remove debug output leftovers.

## 2.4.3

- Fix bug when generating code for generic service methods -- type arguments were lost in the process.
- Fix bug when a service method argument has no associated element per Dart's analyzer -- such arguments will always be marshalled as-is.
- These two corrections fix https://github.com/d-markey/squadron/issues/26.
- Added example `json`.

## 2.4.2

- Fix bug when service method returns `FutureOr<void>` or `Future<void>`.
- Make the generated operations map unmodifiable.
- [PR #7](https://github.com/d-markey/squadron_builder/pull/7) by [guid-empty](https://github.com/guid-empty): Minor changes to support required fields and fix to have Iterable parameters
- [PR #8](https://github.com/d-markey/squadron_builder/pull/8) by [techouse](https://github.com/techouse): Allow usage of analyzer v6
- Updated examples.
- Added topics and funding information to pubspec.

## 2.4.1

- Added example/README.md to comply with pub.dev checks.

## 2.4.0

- Reorganized example folder and updated README.
- Revised code generation strategy for operations map: previously, the operations map was generated in a mixin class and the (user-developed) service class had to derive from `WorkerService` *and* mix in with the generated mixin class. This is no longer required and the generated code now implements a private service class (deriving from the user's service class) which implements `WorkerService` with the generated operations map. This removes several constraints on service implementation and enables support of "plain old Dart objects" as Squadron services. User-developped service classes must be public and concrete (non-abstract, non-final, non-sealed...) and must provide an unnamed constructor which will be called by the associated generated `WorkerService` class.
- Service method/constructor parameters whose type implement `marshal()`/`unmarshal()` or `marshall()`/`unmarshall()` methods will be automatically serialized using these methods if no explicit marshaler is provided. `marshal()`/`unmarshal()` have priority over `marshall()`/`unmarshall()`. These methods also have priority over automatic JSON serialization available since version 0.9.0. The marshaling method must be an instance method taking no arguments; the unmarshaling method must be static and accept one argument. `squadron_builder` will not verify parameter or return types of these methods, but obviously if the marshaling method of class `T` returns type `U`, the unmarshaling method must accept a `U` argument and return an instance of `T`. Failure to comply with this contract may lead to Dart compilation errors.

## 2.3.1

- Eliminate async code generation for additional assets.
- Properly resolve Squadron's main library.

## 2.3.0

- Properly handle platform worker thread parameter + getter in generated worker/worker pool when `with_finalizers` is enabled (fix for https://github.com/d-markey/squadron_builder/issues/5).
- Refactored service/method parameter management.
- Enable code generation for libraries that define several services. This will run as expected on native platforms where worker entrypoints are top-level static methods. It will not work on Web platforms where worker entrypoints are URLs: each worker needs its own URL, hence its own library.

## 2.2.0

- Automatically discover Squadron capabilities (`WorkerRequest`/`WorkerResponse` serialization type + availability of `EntryPoint` and `PlatformWorkerHook`).
- Retire option `serialization_type` as it is now discovered automatically.

## 2.1.2

- Downgrade version for `analyzer` (fix for https://github.com/d-markey/squadron_builder/issues/4).

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

- Marshal data to/from workers according to `SerializeWith` annotations.

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
