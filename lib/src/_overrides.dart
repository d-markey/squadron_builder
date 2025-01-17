// ignore_for_file: non_constant_identifier_names

import 'types/type_manager.dart';

extension SquadronOverrides on TypeManager {
  Map<String, String> getWorkerOverrides() {
    return {
      // state properties and statistics
      '$TList get args': 'args',
      '$TExceptionManager get exceptionManager': 'exceptionManager',
      '$TLogger? get channelLogger': 'channelLogger',
      'set channelLogger($TLogger? value)': 'channelLogger = value',
      '$TDuration get idleTime': 'idleTime',
      '$TBool get isStopped': 'isStopped',
      '$TBool get isConnected': 'isConnected',
      '$TInt get maxWorkload': 'maxWorkload',
      '$TWorkerStat get stats': 'stats',
      '$TString get status': 'status',
      '$TInt get totalErrors': 'totalErrors',
      '$TInt get totalWorkload': 'totalWorkload',
      '$TDuration get upTime': 'upTime',
      '$TInt get workload': 'workload',
      // worker control
      '$TFuture<$TChannel> start()': 'start()',
      'void stop()': 'stop()',
      'void terminate([$TTaskTerminatedException? ex])': 'terminate(ex)',
      '$TChannel? getSharedChannel()': 'getSharedChannel()',
      // worker tasks
      '$TFuture<$TDynamic> send($TInt command, {$TList args = const [], $TCancelationToken? token, $TBool inspectRequest = false, $TBool inspectResponse = false})':
          'send(command, args: args, token: token, inspectRequest: inspectRequest, inspectResponse: inspectResponse)',
      '$TStream<$TDynamic> stream($TInt command, {$TList args = const [], $TCancelationToken? token, $TBool inspectRequest = false, $TBool inspectResponse = false})':
          'stream(command, args: args, token: token, inspectRequest: inspectRequest, inspectResponse: inspectResponse)',
      // finalization token
      '$TObject get _detachToken': '_detachToken',
    };
  }

  Map<String, String> getWorkerPoolOverrides() {
    return {
      // state properties and statistics
      '$TExceptionManager get exceptionManager': 'exceptionManager',
      '$TLogger? get channelLogger': 'channelLogger',
      'set channelLogger($TLogger? value)': 'channelLogger = value',
      '$TConcurrencySettings get concurrencySettings': 'concurrencySettings',
      '$TIterable<$TWorkerStat> get fullStats': 'fullStats',
      '$TInt get maxConcurrency': 'maxConcurrency',
      '$TInt get maxParallel': 'maxParallel',
      '$TInt get maxSize': 'maxSize',
      '$TInt get maxWorkers': 'maxWorkers',
      '$TInt get maxWorkload': 'maxWorkload',
      '$TInt get minWorkers': 'minWorkers',
      '$TInt get pendingWorkload': 'pendingWorkload',
      '$TInt get size': 'size',
      '$TIterable<$TWorkerStat> get stats': 'stats',
      '$TBool get stopped': 'stopped',
      '$TInt get totalErrors': 'totalErrors',
      '$TInt get totalWorkload': 'totalWorkload',
      '$TInt get workload': 'workload',
      // pool & task control
      'void cancelAll([$TString? message])': 'cancelAll(message)',
      'void cancel($TTask task, [$TString? message])': 'cancel(task, message)',
      '$TFutureOr<void> start()': 'start()',
      '$TInt stop([$TBool Function(@TWorker@ worker)? predicate])':
          'stop(predicate)',
      'void terminate([$TTaskTerminatedException? ex])': 'terminate(ex)',
      '$TObject registerWorkerPoolListener(void Function(@TWorker@ worker, $TBool removed) listener)':
          'registerWorkerPoolListener(listener)',
      'void unregisterWorkerPoolListener({void Function(@TWorker@ worker, $TBool removed)? listener, $TObject? token})':
          'unregisterWorkerPoolListener(listener: listener, token: token)',
      // pool tasks
      '$TFuture<T> execute<T>($TFuture<T> Function(@TWorker@ worker) task, {$TPerfCounter? counter})':
          'execute<T>(task, counter: counter)',
      '$TStream<T> stream<T>($TStream<T> Function(@TWorker@ worker) task, {$TPerfCounter? counter})':
          'stream<T>(task, counter: counter)',
      '$TStreamTask<T> scheduleStreamTask<T>($TStream<T> Function(@TWorker@ worker) task, {$TPerfCounter? counter})':
          'scheduleStreamTask<T>(task, counter: counter)',
      '$TValueTask<T> scheduleValueTask<T>($TFuture<T> Function(@TWorker@ worker) task, {$TPerfCounter? counter})':
          'scheduleValueTask<T>(task, counter: counter)',
      // finalization token
      '$TObject get _detachToken': '_detachToken',
    };
  }
}
