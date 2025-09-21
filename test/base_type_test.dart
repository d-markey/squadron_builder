import 'dart:io';

import 'package:source_gen_test/source_gen_test.dart';
import 'package:test/test.dart';

import 'squadron_utils.dart';
import 'utils.dart';

void main() async {
  initializeBuildLogTracking();

  group('BASE TYPES', () {
    test('- int', () async {
      try {
        final buildResult = await build(
          'base_types/int_service.dart',
          buildOptionsWithFinalizers,
        );

        final workerOutput = buildResult.outputs.worker;
        expect(workerOutput, isNotNull);
        final workerSrc = buildResult.getGeneratedContents(workerOutput!);

        expect(workerSrc, contains('class _\$IntServiceWorker extends Worker'));
        expect(workerSrc, contains('class IntServiceWorker'));
        expect(workerSrc, contains('IntServiceWorker.vm'));
        expect(workerSrc, isNot(contains('IntServiceWorker.wasm')));
        expect(workerSrc, isNot(contains('IntServiceWorker.js')));
        expect(workerSrc, contains('class _\$IntServiceWorkerPool'));
        expect(
          workerSrc,
          contains(
            'class IntServiceWorkerPool extends WorkerPool<IntServiceWorker>',
          ),
        );
        expect(workerSrc, contains('class _\$Deser'));
        expect(workerSrc, isNot(contains('class _\$Ser')));
        expect(
          workerSrc,
          contains(
            'WorkerService \$IntServiceInitializer(WorkerRequest \$req)',
          ),
        );

        final vmOutput = buildResult.outputs.vm;
        expect(vmOutput, isNotNull);
        final vmSrc = buildResult.getGeneratedContents(vmOutput!);

        expect(
          vmSrc,
          contains(
            'EntryPoint \$getIntServiceActivator(SquadronPlatformType platform)',
          ),
        );
        expect(
          vmSrc,
          contains('void _start\$IntService(WorkerRequest command)'),
        );

        final activatorOutput = buildResult.outputs.activator;
        expect(activatorOutput, isNotNull);
        final activatorSrc = buildResult.getGeneratedContents(activatorOutput!);

        expect(activatorSrc, contains('const \$IntServiceActivator'));

        expect(buildResult.outputs.web, isNull);
        expect(buildResult.outputs.stub, isNull);
      } finally {
        checkBuildLogs();
      }
    });

    test('- DateTime', () async {
      try {
        final buildResult = await build(
          'base_types/datetime_service.dart',
          buildOptionsWithoutFinalizers,
        );

        final workerOutput = buildResult.outputs.worker;
        expect(workerOutput, isNotNull);
        final workerSrc = buildResult.getGeneratedContents(workerOutput!);

        expect(workerSrc, contains('class DateTimeServiceWorker'));
        expect(workerSrc, contains('DateTimeServiceWorker.vm'));
        expect(workerSrc, contains('DateTimeServiceWorker.wasm'));
        expect(workerSrc, contains('DateTimeServiceWorker.js'));
        expect(workerSrc, contains('class DateTimeServiceWorkerPool'));
        expect(workerSrc, contains('class _\$Deser'));
        expect(workerSrc, isNot(contains('class _\$Ser')));
        expect(
          workerSrc,
          contains(
            'WorkerService \$DateTimeServiceInitializer(WorkerRequest \$req)',
          ),
        );

        final vmOutput = buildResult.outputs.vm;
        expect(vmOutput, isNotNull);
        final vmSrc = buildResult.getGeneratedContents(vmOutput!);

        expect(
          vmSrc,
          contains(
            'EntryPoint \$getDateTimeServiceActivator(SquadronPlatformType platform)',
          ),
        );
        expect(
          vmSrc,
          contains('void _start\$DateTimeService(WorkerRequest command)'),
        );

        final activatorOutput = buildResult.outputs.activator;
        expect(activatorOutput, isNotNull);
        final activatorSrc = buildResult.getGeneratedContents(activatorOutput!);

        expect(activatorSrc, contains('const \$DateTimeServiceActivator'));

        expect(buildResult.outputs.web, isNotNull);
        expect(buildResult.outputs.stub, isNotNull);
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
