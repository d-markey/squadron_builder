// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../sample_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.0.0
// **************************************************************************

/// WorkerService class for SampleService
class _$SampleServiceWorkerService extends SampleService
    implements WorkerService {
  _$SampleServiceWorkerService() : super();

  @override
  Map<int, CommandHandler> get operations => _operations;

  late final Map<int, CommandHandler> _operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$computeId: ($in) => compute(_$X.$0($in.args[0])).then(_$X.$1),
  });

  static const int _$computeId = 1;
}

/// Service initializer for SampleService
WorkerService $SampleServiceInitializer(WorkerRequest $in) =>
    _$SampleServiceWorkerService();

/// Worker for SampleService
class SampleServiceWorker extends Worker implements SampleService {
  SampleServiceWorker({PlatformThreadHook? threadHook})
      : super($SampleServiceActivator, threadHook: threadHook);

  @override
  Future<DataOut> compute(DataIn input) =>
      send(_$SampleServiceWorkerService._$computeId, args: [_$X.$2(input)])
          .then(_$X.$3);
}

/// Worker pool for SampleService
class SampleServiceWorkerPool extends WorkerPool<SampleServiceWorker>
    implements SampleService {
  SampleServiceWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook})
      : super(() => SampleServiceWorker(threadHook: threadHook),
            concurrencySettings: concurrencySettings);

  @override
  Future<DataOut> compute(DataIn input) => execute((w) => w.compute(input));
}

class _$X {
  static final $0 = (($) => DataIn.unmarshal($));
  static final $1 = (($) => ($ as DataOut).marshal());
  static final $2 = (($) => ($ as DataIn).marshal());
  static final $3 = (($) => DataOut.unmarshal($));
}
