part of 'type_manager.dart';

mixin _ImportedTypesMixin {
  final Map<String, Map<String, ImportedType>> _importedTypes = {
    PckUri.squadron: {
      'EntryPoint': ImportedType.unset,
      'Squadron': ImportedType.unset,
      'SquadronPlatformType': ImportedType.unset,
      'Channel': ImportedType.unset,
      'PlatformChannel': ImportedType.unset,
      'WorkerService': ImportedType.unset,
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
      'TypedDataMarshaler': ImportedType.unset,
      'CommandHandler': ImportedType.unset,
      'Task': ImportedType.unset,
      'ValueTask': ImportedType.unset,
      'StreamTask': ImportedType.unset,
    },
    PckUri.cancelationToken: {
      'CancelationToken': ImportedType.unset,
    },
    PckUri.using: {
      'Releasable': ImportedType.unset,
    },
    PckUri.logger: {
      'Logger': ImportedType.unset,
    },
    PckUri.dartTypedData: {
      'TypedData': ImportedType.unset,
    },
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
    },
  };

  // ignore: non_constant_identifier_names
  ImportedType get TEntryPoint =>
      _importedTypes[PckUri.squadron]!['EntryPoint']!;
  // ignore: non_constant_identifier_names
  ImportedType get TSquadron => _importedTypes[PckUri.squadron]!['Squadron']!;
  // ignore: non_constant_identifier_names
  ImportedType get TSquadronPlatformType =>
      _importedTypes[PckUri.squadron]!['SquadronPlatformType']!;
  // ignore: non_constant_identifier_names
  ImportedType get TChannel => _importedTypes[PckUri.squadron]!['Channel']!;
  // ignore: non_constant_identifier_names
  ImportedType get TPlatformChannel =>
      _importedTypes[PckUri.squadron]!['PlatformChannel']!;
  // ignore: non_constant_identifier_names
  ImportedType get TWorkerService =>
      _importedTypes[PckUri.squadron]!['WorkerService']!;
  // ignore: non_constant_identifier_names
  ImportedType get TWorker => _importedTypes[PckUri.squadron]!['Worker']!;
  // ignore: non_constant_identifier_names
  ImportedType get TWorkerPool =>
      _importedTypes[PckUri.squadron]!['WorkerPool']!;
  // ignore: non_constant_identifier_names
  ImportedType get TLocalWorker =>
      _importedTypes[PckUri.squadron]!['LocalWorker']!;
  // ignore: non_constant_identifier_names
  ImportedType get TLocalWorkerClient =>
      _importedTypes[PckUri.squadron]!['LocalWorkerClient']!;
  // ignore: non_constant_identifier_names
  ImportedType get TWorkerRequest =>
      _importedTypes[PckUri.squadron]!['WorkerRequest']!;
  // ignore: non_constant_identifier_names
  ImportedType get TWorkerStat =>
      _importedTypes[PckUri.squadron]!['WorkerStat']!;
  // ignore: non_constant_identifier_names
  ImportedType get TPerfCounter =>
      _importedTypes[PckUri.squadron]!['PerfCounter']!;
  // ignore: non_constant_identifier_names
  ImportedType get TConcurrencySettings =>
      _importedTypes[PckUri.squadron]!['ConcurrencySettings']!;
  // ignore: non_constant_identifier_names
  ImportedType get TExceptionManager =>
      _importedTypes[PckUri.squadron]!['ExceptionManager']!;
  // ignore: non_constant_identifier_names
  ImportedType get TTaskTerminatedException =>
      _importedTypes[PckUri.squadron]!['TaskTerminatedException']!;
  // ignore: non_constant_identifier_names
  ImportedType get TPlatformThreadHook =>
      _importedTypes[PckUri.squadron]!['PlatformThreadHook']!;
  // ignore: non_constant_identifier_names
  ImportedType get TSquadronMarshaler =>
      _importedTypes[PckUri.squadron]!['SquadronMarshaler']!;
  // ignore: non_constant_identifier_names
  ImportedType get TTypedDataMarshaler =>
      _importedTypes[PckUri.squadron]!['TypedDataMarshaler']!;
  // ignore: non_constant_identifier_names
  ImportedType get TCommandHandler =>
      _importedTypes[PckUri.squadron]!['CommandHandler']!;
  // ignore: non_constant_identifier_names
  ImportedType get TTask => _importedTypes[PckUri.squadron]!['Task']!;
  // ignore: non_constant_identifier_names
  ImportedType get TValueTask => _importedTypes[PckUri.squadron]!['ValueTask']!;
  // ignore: non_constant_identifier_names
  ImportedType get TStreamTask =>
      _importedTypes[PckUri.squadron]!['StreamTask']!;

  // ignore: non_constant_identifier_names
  ImportedType get TCancelationToken =>
      _importedTypes[PckUri.cancelationToken]!['CancelationToken']!;
  // ignore: non_constant_identifier_names
  ImportedType get TReleasable => _importedTypes[PckUri.using]!['Releasable']!;
  // ignore: non_constant_identifier_names
  ImportedType get TLogger => _importedTypes[PckUri.logger]!['Logger']!;
  // ignore: non_constant_identifier_names
  ImportedType get TTypedData =>
      _importedTypes[PckUri.dartTypedData]!['TypedData']!;

  // ignore: non_constant_identifier_names
  ImportedType get TFutureOr => _importedTypes[PckUri.dartAsync]!['FutureOr']!;
  // ignore: non_constant_identifier_names
  ImportedType get TFuture => _importedTypes[PckUri.dartAsync]!['Future']!;
  // ignore: non_constant_identifier_names
  ImportedType get TStream => _importedTypes[PckUri.dartAsync]!['Stream']!;

  // ignore: non_constant_identifier_names
  ImportedType get TList => _importedTypes[PckUri.dartCore]!['List']!;
  // ignore: non_constant_identifier_names
  ImportedType get TIterable => _importedTypes[PckUri.dartCore]!['Iterable']!;
  // ignore: non_constant_identifier_names
  ImportedType get TMap => _importedTypes[PckUri.dartCore]!['Map']!;
  // ignore: non_constant_identifier_names
  ImportedType get TInt => _importedTypes[PckUri.dartCore]!['int']!;
  // ignore: non_constant_identifier_names
  ImportedType get TBool => _importedTypes[PckUri.dartCore]!['bool']!;
  // ignore: non_constant_identifier_names
  ImportedType get TDynamic => _importedTypes[PckUri.dartCore]!['dynamic']!;
  // ignore: non_constant_identifier_names
  ImportedType get TObject => _importedTypes[PckUri.dartCore]!['Object']!;
  // ignore: non_constant_identifier_names
  ImportedType get TString => _importedTypes[PckUri.dartCore]!['String']!;
  // ignore: non_constant_identifier_names
  ImportedType get TDuration => _importedTypes[PckUri.dartCore]!['Duration']!;
  // ignore: non_constant_identifier_names
  ImportedType get TFinalizer => _importedTypes[PckUri.dartCore]!['Finalizer']!;
  // ignore: non_constant_identifier_names
  ImportedType get TUnimplementedError =>
      _importedTypes[PckUri.dartCore]!['UnimplementedError']!;
}
