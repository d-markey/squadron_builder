// ignore_for_file: non_constant_identifier_names

part of '../worker_assets.dart';

mixin _ImportedTypesMixin {
  TypeManager get _typeManager;

  late final _squadronAlias = _typeManager.squadronAlias;
  late final _run = _squadronAlias.isEmpty ? 'run' : '$_squadronAlias.run';

  late final _dartCoreAlias = _typeManager.dartCoreAlias;

  late final _override =
      _dartCoreAlias.isEmpty ? '@override' : '@$_dartCoreAlias.override';

  late final TChannel = _typeManager.TChannel;
  late final TPlatformChannel = _typeManager.TPlatformChannel;
  late final TOperationsMap = _typeManager.TOperationsMap;
  late final TWorkerService = _typeManager.TWorkerService;
  late final TWorkerRequest = _typeManager.TWorkerRequest;
  late final TEntryPoint = _typeManager.TEntryPoint;
  late final TSquadron = _typeManager.TSquadron;
  late final TSquadronPlatformType = _typeManager.TSquadronPlatformType;
  late final TPlatformThreadHook = _typeManager.TPlatformThreadHook;
  late final TExceptionManager = _typeManager.TExceptionManager;
  late final TInvoker = _typeManager.TInvoker;
  late final TWorker = _typeManager.TWorker;
  late final TWorkerPool = _typeManager.TWorkerPool;
  late final TTask = _typeManager.TTask;
  late final TValueTask = _typeManager.TValueTask;
  late final TStreamTask = _typeManager.TStreamTask;
  late final TTaskTerminatedException = _typeManager.TTaskTerminatedException;
  late final TWorkerStat = _typeManager.TWorkerStat;
  late final TPerfCounter = _typeManager.TPerfCounter;
  late final TLocalWorker = _typeManager.TLocalWorker;
  late final TLocalWorkerClient = _typeManager.TLocalWorkerClient;
  late final TMarshalingContext = _typeManager.TMarshalingContext;
  late final TConcurrencySettings = _typeManager.TConcurrencySettings;

  late final TReleasable = _typeManager.TReleasable;
  late final TCancelationToken = _typeManager.TCancelationToken;
  late final TLogger = _typeManager.TLogger;

  late final TMap = _typeManager.TMap;
  late final TList = _typeManager.TList;
  late final TIterable = _typeManager.TIterable;
  late final TBool = _typeManager.TBool;
  late final TInt = _typeManager.TInt;
  late final TString = _typeManager.TString;
  late final TDuration = _typeManager.TDuration;
  late final TFinalizer = _typeManager.TFinalizer;
  late final TFuture = _typeManager.TFuture;
  late final TFutureOr = _typeManager.TFutureOr;
  late final TStream = _typeManager.TStream;
  late final TObject = _typeManager.TObject;
  late final TDynamic = _typeManager.TDynamic;
  late final TUnimplementedError = _typeManager.TUnimplementedError;
  late final TUnsupportedError = _typeManager.TUnsupportedError;
}
