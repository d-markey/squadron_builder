import 'package:source_gen_test/source_gen_test.dart';
import 'package:test/test.dart';

import 'squadron_utils.dart';
import 'utils.dart';

void main() async {
  initializeBuildLogTracking();

  group('BASE TYPES', () {
    test('- int (without finalizers)', () async {
      try {
        final buildResult = await build(
          'base_types/int_service.dart',
          buildOptionsWithoutFinalizers,
        );

        expect(buildResult.web, isNull);
        expect(buildResult.stub, isNull);

        expectOutputContains(buildResult.worker, buildResult, {
          'WorkerService \$IntServiceInitializer(WorkerRequest \$req)',
          'class IntServiceWorker',
          'IntServiceWorker.vm',
          'class IntServiceWorkerPool',
          'class _\$Deser',
        });

        expectOutputDoesNotContain(buildResult.worker, buildResult, {
          'class _\$IntServiceWorker',
          'IntServiceWorker.wasm',
          'IntServiceWorker.js',
          'class _\$IntServiceWorkerPool',
          'class _\$Ser',
        });

        expectOutputContains(buildResult.vm, buildResult, {
          'void _start\$IntService(WorkerRequest command)',
          'EntryPoint \$getIntServiceActivator(SquadronPlatformType platform)',
        });

        expectOutputContains(buildResult.activator, buildResult, {
          'const \$IntServiceActivator',
        });
      } finally {
        checkBuildLogs();
      }
    });

    test('- int (with finalizers)', () async {
      try {
        final buildResult = await build(
          'base_types/int_service.dart',
          buildOptionsWithFinalizers,
        );

        expect(buildResult.web, isNull);
        expect(buildResult.stub, isNull);

        expectOutputContains(buildResult.worker, buildResult, {
          'WorkerService \$IntServiceInitializer(WorkerRequest \$req)',
          'class _\$IntServiceWorker',
          'class IntServiceWorker',
          'IntServiceWorker.vm',
          'class _\$IntServiceWorkerPool',
          'class IntServiceWorkerPool',
          'class _\$Deser',
        });

        expectOutputDoesNotContain(buildResult.worker, buildResult, {
          'IntServiceWorker.wasm',
          'IntServiceWorker.js',
          'class _\$Ser',
        });

        expectOutputContains(buildResult.vm, buildResult, {
          'void _start\$IntService(WorkerRequest command)',
          'EntryPoint \$getIntServiceActivator(SquadronPlatformType platform)',
        });

        expectOutputContains(buildResult.activator, buildResult, {
          'const \$IntServiceActivator',
        });
      } finally {
        checkBuildLogs({
          'finalizable workers',
          'requires',
          'package:using',
          'package:cancelation_token',
          'package:logger',
        });
      }
    });

    test('- DateTime', () async {
      try {
        final buildResult = await build(
          'base_types/datetime_service.dart',
          buildOptionsWithoutFinalizers,
        );

        expect(buildResult.stub, isNotNull);

        expectOutputContains(buildResult.worker, buildResult, {
          'WorkerService \$DateTimeServiceInitializer(WorkerRequest \$req)',
          'class DateTimeServiceWorker',
          'DateTimeServiceWorker.vm',
          'DateTimeServiceWorker.wasm',
          'DateTimeServiceWorker.js',
          'class DateTimeServiceWorkerPool',
          'class _\$Deser',
        });

        expectOutputDoesNotContain(buildResult.worker, buildResult, {
          'class _\$DateTimeServiceWorker',
          'class _\$DateTimeServiceWorkerPool',
          'class _\$Ser',
        });

        expectOutputContains(buildResult.vm, buildResult, {
          'void _start\$DateTimeService(WorkerRequest command)',
          'EntryPoint \$getDateTimeServiceActivator(SquadronPlatformType platform)',
        });

        expectOutputContains(buildResult.web, buildResult, {
          'void main()',
          'EntryPoint \$getDateTimeServiceActivator(SquadronPlatformType platform)',
        });

        expectOutputContains(buildResult.activator, buildResult, {
          'const \$DateTimeServiceActivator',
        });
      } finally {
        checkBuildLogs();
      }
    });
  }, timeout: Timeout.none);
}
