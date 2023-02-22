const workerOverrides = {
  // state properties and statistics
  'List get args': 'args',
  'Channel? get channel': 'channel',
  'Duration get idleTime': 'idleTime',
  'bool get isStopped': 'isStopped',
  'int get maxWorkload': 'maxWorkload',
  'WorkerStat get stats': 'stats',
  'String get status': 'status',
  'int get totalErrors': 'totalErrors',
  'int get totalWorkload': 'totalWorkload',
  'Duration get upTime': 'upTime',
  'String get workerId': 'workerId',
  'int get workload': 'workload',
  // worker control
  'Future<Channel> start()': 'start()',
  'void stop()': 'stop()',
  // worker tasks
  'Future<T> send<T>(int command, {List args = const [], CancellationToken? token, bool inspectRequest = false, bool inspectResponse = false})':
      'send<T>(command, args: args, token: token, inspectRequest: inspectRequest, inspectResponse: inspectResponse)',
  'Stream<T> stream<T>(int command, {List args = const [], CancellationToken? token, bool inspectRequest = false, bool inspectResponse = false})':
      'stream<T>(command, args: args, token: token, inspectRequest: inspectRequest, inspectResponse: inspectResponse)',
  // finalization token
  'Object get _detachToken': '_detachToken',
};

const workerPoolOverrides = <String, String>{
  // state properties and statistics
  'ConcurrencySettings get concurrencySettings': 'concurrencySettings',
  'Iterable<WorkerStat> get fullStats': 'fullStats',
  'int get maxConcurrency': 'maxConcurrency',
  'int get maxParallel': 'maxParallel',
  'int get maxSize': 'maxSize',
  'int get maxWorkers': 'maxWorkers',
  'int get maxWorkload': 'maxWorkload',
  'int get minWorkers': 'minWorkers',
  'int get pendingWorkload': 'pendingWorkload',
  'int get size': 'size',
  'Iterable<WorkerStat> get stats': 'stats',
  'bool get stopped': 'stopped',
  'int get totalErrors': 'totalErrors',
  'int get totalWorkload': 'totalWorkload',
  'int get workload': 'workload',
  // pool & task control
  'void cancel([Task? task, String? message])': 'cancel(task, message)',
  'Future start()': 'start()',
  r'int stop([bool Function($workerClassName worker)? predicate])':
      'stop(predicate)',
  r'Object registerWorkerPoolListener(void Function($workerClassName worker, bool removed) listener)':
      'registerWorkerPoolListener(listener)',
  r'void unregisterWorkerPoolListener({void Function($workerClassName worker, bool removed)? listener, Object? token})':
      'unregisterWorkerPoolListener(listener: listener, token: token)',
  // pool tasks
  r'Future<T> execute<T>(Future<T> Function($workerClassName worker) task, {PerfCounter? counter})':
      'execute<T>(task, counter: counter)',
  r'StreamTask<T> scheduleStream<T>(Stream<T> Function($workerClassName worker) task, {PerfCounter? counter})':
      'scheduleStream<T>(task, counter: counter)',
  r'ValueTask<T> scheduleTask<T>(Future<T> Function($workerClassName worker) task, {PerfCounter? counter})':
      'scheduleTask<T>(task, counter: counter)',
  r'Stream<T> stream<T>(Stream<T> Function($workerClassName worker) task, {PerfCounter? counter})':
      'stream<T>(task, counter: counter)',
  // finalization token
  'Object get _detachToken': '_detachToken',
};
