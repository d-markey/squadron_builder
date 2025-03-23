// ignore_for_file: non_constant_identifier_names

part of '../worker_assets.dart';

extension SquadronOverrides on WorkerAssets {
  Map<String, String> _getWorkerOverrides() {
    return {
      // state properties and statistics
      // '$TList get args': 'args',
      '$TExceptionManager get exceptionManager': 'exceptionManager',
      '$TLogger? get channelLogger': 'channelLogger',
      'set channelLogger($TLogger? value)': 'channelLogger = value',
      '$TBool get isConnected': 'isConnected',
      '$TWorkerStat get stats': 'stats',
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
      '$TObject get $DetachToken': DetachToken,
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
      '$TInt get minWorkers': 'minWorkers',
      '$TInt get pendingWorkload': 'pendingWorkload',
      '$TInt get size': 'size',
      '$TIterable<$TWorkerStat> get stats': 'stats',
      '$TBool get stopped': 'stopped',
      // pool & task control
      'void cancelAll([$TString? message])': 'cancelAll(message)',
      'void cancel($TTask task, [$TString? message])': 'cancel(task, message)',
      '$TFutureOr<void> start()': 'start()',
      '$TInt stop([$TBool Function(@TWorker@ worker)? predicate])':
          'stop(predicate)',
      'void terminate([$TTaskTerminatedException? ex])': 'terminate(ex)',
      '$TObject registerWorkerPoolListener(void Function($TWorkerStat, $TBool) listener)':
          'registerWorkerPoolListener(listener)',
      'void unregisterWorkerPoolListener({void Function($TWorkerStat, $TBool)? listener, $TObject? token})':
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
      '$TObject get $DetachToken': DetachToken,
    };
  }
}
