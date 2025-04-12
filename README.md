<table><tr>
<td valign="top">
  <img src="https://raw.githubusercontent.com/d-markey/squadron/main/squadron_logo.svg" width="120" alt="Squadron logo" />
</td>
<td valign="top">

## **Squadron - Multithreading and worker pools in Dart**

Offload CPU-bound and long running tasks and give your mobile and Web apps some air!

</td>
</tr></table>

# squadron_builder

Dart code generator for Squadron workers. Implement your worker service and let `squadron_builder` bridge the gap with Web Workers and Isolates!

[![Pub Package](https://img.shields.io/pub/v/squadron_builder)](https://pub.dev/packages/squadron_builder)
[![Dart Platforms](https://badgen.net/pub/dart-platform/squadron_builder)](https://pub.dev/packages/squadron_builder)
[![Flutter Platforms](https://badgen.net/pub/flutter-platform/squadron_builder)](https://pub.dev/packages/squadron_builder)

[![License](https://img.shields.io/github/license/d-markey/squadron_builder)](https://github.com/d-markey/squadron_builder/blob/master/LICENSE)
[![Null Safety](https://img.shields.io/badge/null-safety-brightgreen)](https://dart.dev/null-safety)
[![Dart Style](https://img.shields.io/badge/style-lints-40c4ff)](https://pub.dev/packages/lints)
[![Pub Points](https://img.shields.io/pub/points/squadron_builder)](https://pub.dev/packages/squadron_builder/score)
[![Likes](https://img.shields.io/pub/likes/squadron_builder)](https://pub.dev/packages/squadron_builder/score)
[![Downloads](https://img.shields.io/pub/dm/squadron_builder)](https://pub.dev/packages/squadron_builder/score)
[![Last Commit](https://img.shields.io/github/last-commit/d-markey/squadron_builder?logo=git&logoColor=white)](https://github.com/d-markey/squadron_builder/commits)

# Usage

`squadron_builder` is a companion package to `Squadron` and is intended to be installed as a development dependency to your project.

Its purpose is to generate the code for Workers and WorkerPools based on the service classes you want to run in dedicated threads.

Example of a service class:

```dart
// file hello_world.dart

// mandatory, will be generated with platform-specific code for your worker's entry points
import 'hello_world.activator.g.dart';

// mandatory, will be generated with code for your worker & worker pool
part 'hello_world.worker.g.dart';

// this annotation tells squadron_builder that this class contains code to be executed on dedicated threads
@SquadronService(baseUrl: '~/workers', targetPlatform: TargetPlatform.vm | TargetPlatform.web)
base class HelloWorld {
  // this annotation tells squadron_builder that this method is exposed to clients running in the main thread for instance
  @squadronMethod
  FutureOr<String> hello([String? name]) {
    name = name?.trim() ?? 'World';
    return 'Hello, $name!';
  }
}
```

