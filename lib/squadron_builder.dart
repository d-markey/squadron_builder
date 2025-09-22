import 'package:dart_style/dart_style.dart' show DartFormatter;
import 'package:pub_semver/pub_semver.dart';

export 'src/worker_builder.dart';

/// Formats `code` for language version `version`.
String dartFormat(String code, Version version) =>
    DartFormatter(languageVersion: version).format(code);
