import 'types/type_manager.dart';

Map<String, String> getWorkerOverrides(TypeManager typeManager) => {
      // state properties and statistics
      '${typeManager.listType} get args': 'args',
      '${typeManager.channelType}? get channel': 'channel',
      '${typeManager.exceptionManagerType} get exceptionManager':
          'exceptionManager',
      '${typeManager.loggerType}? get channelLogger': 'channelLogger',
      'set channelLogger(${typeManager.loggerType}? value)':
          'channelLogger = value',
      'Duration get idleTime': 'idleTime',
      'bool get isStopped': 'isStopped',
      'int get maxWorkload': 'maxWorkload',
      '${typeManager.workerStatType} get stats': 'stats',
      'String get status': 'status',
      'int get totalErrors': 'totalErrors',
      'int get totalWorkload': 'totalWorkload',
      'Duration get upTime': 'upTime',
      'int get workload': 'workload',
      // worker control
      'Future<${typeManager.channelType}> start()': 'start()',
      'void stop()': 'stop()',
      // worker tasks
      'Future<T> send<T>(int command, {${typeManager.listType} args = const [], ${typeManager.cancelationTokenType}? token, bool inspectRequest = false, bool inspectResponse = false})':
          'send<T>(command, args: args, token: token, inspectRequest: inspectRequest, inspectResponse: inspectResponse)',
      'Stream<T> stream<T>(int command, {${typeManager.listType} args = const [], ${typeManager.cancelationTokenType}? token, bool inspectRequest = false, bool inspectResponse = false})':
          'stream<T>(command, args: args, token: token, inspectRequest: inspectRequest, inspectResponse: inspectResponse)',
      // finalization token
      'Object get _detachToken': '_detachToken',
    };

Map<String, String> getWorkerPoolOverrides(TypeManager typeManager) => {
      // state properties and statistics
      '${typeManager.exceptionManagerType} get exceptionManager':
          'exceptionManager',
      '${typeManager.loggerType}? get channelLogger': 'channelLogger',
      'set channelLogger(${typeManager.loggerType}? value)':
          'channelLogger = value',
      '${typeManager.concurrencySettingsType} get concurrencySettings':
          'concurrencySettings',
      'Iterable<${typeManager.workerStatType}> get fullStats': 'fullStats',
      'int get maxConcurrency': 'maxConcurrency',
      'int get maxParallel': 'maxParallel',
      'int get maxSize': 'maxSize',
      'int get maxWorkers': 'maxWorkers',
      'int get maxWorkload': 'maxWorkload',
      'int get minWorkers': 'minWorkers',
      'int get pendingWorkload': 'pendingWorkload',
      'int get size': 'size',
      'Iterable<${typeManager.workerStatType}> get stats': 'stats',
      'bool get stopped': 'stopped',
      'int get totalErrors': 'totalErrors',
      'int get totalWorkload': 'totalWorkload',
      'int get workload': 'workload',
      // pool & task control
      'void cancel([${typeManager.taskType}? task, String? message])':
          'cancel(task, message)',
      'FutureOr start()': 'start()',
      r'int stop([bool Function($workerClassName worker)? predicate])':
          'stop(predicate)',
      r'Object registerWorkerPoolListener(void Function($workerClassName worker, bool removed) listener)':
          'registerWorkerPoolListener(listener)',
      r'void unregisterWorkerPoolListener({void Function($workerClassName worker, bool removed)? listener, Object? token})':
          'unregisterWorkerPoolListener(listener: listener, token: token)',
      // pool tasks
      'Future<T> execute<T>(Future<T> Function(\$workerClassName worker) task, {${typeManager.perfCounterType}? counter})':
          'execute<T>(task, counter: counter)',
      '${typeManager.streamTaskType}<T> scheduleStream<T>(Stream<T> Function(\$workerClassName worker) task, {${typeManager.perfCounterType}? counter})':
          'scheduleStream<T>(task, counter: counter)',
      '${typeManager.valueTaskType}<T> scheduleTask<T>(Future<T> Function(\$workerClassName worker) task, {${typeManager.perfCounterType}? counter})':
          'scheduleTask<T>(task, counter: counter)',
      'Stream<T> stream<T>(Stream<T> Function(\$workerClassName worker) task, {${typeManager.perfCounterType}? counter})':
          'stream<T>(task, counter: counter)',
      // finalization token
      'Object get _detachToken': '_detachToken',
    };
