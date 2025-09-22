// ignore_for_file: non_constant_identifier_names

part of 'type_manager.dart';

mixin _ImportedTypesMixin {
  final _importedTypes = {
    PckUri.squadron: {
      'EntryPoint': ImportedType.unset,
      'Squadron': ImportedType.unset,
      'SquadronPlatformType': ImportedType.unset,
      'Channel': ImportedType.unset,
      'PlatformChannel': ImportedType.unset,
      'WorkerService': ImportedType.unset,
      'Invoker': ImportedType.unset,
      'Worker': ImportedType.unset,
      'WorkerPool': ImportedType.unset,
      'LocalWorker': ImportedType.unset,
      'LocalWorkerClient': ImportedType.unset,
      'WorkerRequest': ImportedType.unset,
      'WorkerStat': ImportedType.unset,
      'PerfCounter': ImportedType.unset,
      'ConcurrencySettings': ImportedType.unset,
      'ExceptionManager': ImportedType.unset,
      'TaskTerminatedException': ImportedType.unset,
      'PlatformThreadHook': ImportedType.unset,
      'SquadronMarshaler': ImportedType.unset,
      'MarshalingContext': ImportedType.unset,
      'Converter': ImportedType.unset,
      'OperationsMap': ImportedType.unset,
      'Task': ImportedType.unset,
      'ValueTask': ImportedType.unset,
      'StreamTask': ImportedType.unset,
    },
    PckUri.cancelationToken: {'CancelationToken': ImportedType.unset},
    PckUri.using: {'Releasable': ImportedType.unset},
    PckUri.logger: {'Logger': ImportedType.unset},
    PckUri.dartTypedData: {'TypedData': ImportedType.unset},
    PckUri.dartAsync: {
      'FutureOr': ImportedType.unset,
      'Future': ImportedType.unset,
      'Stream': ImportedType.unset,
    },
    PckUri.dartCore: {
      'Iterable': ImportedType.unset,
      'List': ImportedType.unset,
      'Map': ImportedType.unset,
      'String': ImportedType.unset,
      'int': ImportedType.unset,
      'bool': ImportedType.unset,
      'dynamic': ImportedType.unset,
      'Object': ImportedType.unset,
      'Duration': ImportedType.unset,
      'Finalizer': ImportedType.unset,
      'UnimplementedError': ImportedType.unset,
      'UnsupportedError': ImportedType.unset,
    },
  };

  late final _sq = _importedTypes[PckUri.squadron]!;
  late final _cancelationToken = _importedTypes[PckUri.cancelationToken]!;
  late final _using = _importedTypes[PckUri.using]!;
  late final _logger = _importedTypes[PckUri.logger]!;
  late final _dartTypedData = _importedTypes[PckUri.dartTypedData]!;
  late final _dartAsync = _importedTypes[PckUri.dartAsync]!;
  late final _dartCore = _importedTypes[PckUri.dartCore]!;

  ImportedType get TEntryPoint => _sq['EntryPoint']!;
  ImportedType get TSquadron => _sq['Squadron']!;
  ImportedType get TSquadronPlatformType => _sq['SquadronPlatformType']!;
  ImportedType get TChannel => _sq['Channel']!;
  ImportedType get TPlatformChannel => _sq['PlatformChannel']!;
  ImportedType get TWorkerService => _sq['WorkerService']!;
  ImportedType get TInvoker => _sq['Invoker']!;
  ImportedType get TWorker => _sq['Worker']!;
  ImportedType get TWorkerPool => _sq['WorkerPool']!;
  ImportedType get TLocalWorker => _sq['LocalWorker']!;
  ImportedType get TLocalWorkerClient => _sq['LocalWorkerClient']!;
  ImportedType get TWorkerRequest => _sq['WorkerRequest']!;
  ImportedType get TWorkerStat => _sq['WorkerStat']!;
  ImportedType get TPerfCounter => _sq['PerfCounter']!;
  ImportedType get TConcurrencySettings => _sq['ConcurrencySettings']!;
  ImportedType get TExceptionManager => _sq['ExceptionManager']!;
  ImportedType get TTaskTerminatedException => _sq['TaskTerminatedException']!;
  ImportedType get TPlatformThreadHook => _sq['PlatformThreadHook']!;
  ImportedType get TSquadronMarshaler => _sq['SquadronMarshaler']!;
  ImportedType get TMarshalingContext => _sq['MarshalingContext']!;
  ImportedType get TConverter => _sq['Converter']!;
  ImportedType get TOperationsMap => _sq['OperationsMap']!;
  ImportedType get TTask => _sq['Task']!;
  ImportedType get TValueTask => _sq['ValueTask']!;
  ImportedType get TStreamTask => _sq['StreamTask']!;

  ImportedType get TCancelationToken => _cancelationToken['CancelationToken']!;
  ImportedType get TReleasable => _using['Releasable']!;
  ImportedType get TLogger => _logger['Logger']!;

  ImportedType get TTypedData => _dartTypedData['TypedData']!;

  ImportedType get TFutureOr => _dartAsync['FutureOr']!;
  ImportedType get TFuture => _dartAsync['Future']!;
  ImportedType get TStream => _dartAsync['Stream']!;

  ImportedType get TList => _dartCore['List']!;
  ImportedType get TIterable => _dartCore['Iterable']!;
  ImportedType get TMap => _dartCore['Map']!;
  ImportedType get TInt => _dartCore['int']!;
  ImportedType get TBool => _dartCore['bool']!;
  ImportedType get TDynamic => _dartCore['dynamic']!;
  ImportedType get TObject => _dartCore['Object']!;
  ImportedType get TString => _dartCore['String']!;
  ImportedType get TDuration => _dartCore['Duration']!;
  ImportedType get TFinalizer => _dartCore['Finalizer']!;
  ImportedType get TUnimplementedError => _dartCore['UnimplementedError']!;
  ImportedType get TUnsupportedError => _dartCore['UnsupportedError']!;
}
