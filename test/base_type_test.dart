import 'dart:io';

import 'package:source_gen_test/source_gen_test.dart';
import 'package:test/test.dart';

import 'utils.dart';

void main() async {
  initializeBuildLogTracking();

  group('BASE TYPES', () {
    test(' - int', () async {
      try {
        final buildResult = await build(
          'base_types/int_service.dart',
          buildOptions[#withFinalizers],
        );

        final workerSrc = buildResult.getGeneratedContents(
          buildResult.outputs.first,
        );

        expect(workerSrc, contains('class MyServiceWorker'));
        expect(workerSrc, contains('MyServiceWorker.vm'));
        expect(workerSrc, isNot(contains('MyServiceWorker.wasm')));
        expect(workerSrc, isNot(contains('MyServiceWorker.js')));
        expect(workerSrc, contains('class MyServiceWorkerPool'));
        expect(workerSrc, contains('class _\$Deser'));
      } finally {
        checkBuildLogs();
      }
    });
  }, timeout: Timeout.none);
}

void checkBuildLogs() {
  for (var log in buildLogItems) {
    stderr.writeln('Build Log >   $log');
  }
  clearBuildLog();
}
