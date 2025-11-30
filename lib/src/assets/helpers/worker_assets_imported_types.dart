// ignore_for_file: non_constant_identifier_names

part of '../worker_assets.dart';

mixin _ImportedTypesMixin {
  TypeManager get typeManager;

  late final _squadronAlias = typeManager.squadronAlias;
  late final _run = _squadronAlias.isEmpty ? 'run' : '$_squadronAlias.run';

  late final _dartCoreAlias = typeManager.dartCoreAlias;
  late final override_ = _dartCoreAlias.isEmpty
      ? '@override'
      : '@$_dartCoreAlias.override';

  late final TChannel = typeManager.TChannel;
  late final TPlatformChannel = typeManager.TPlatformChannel;
  late final TOperationsMap = typeManager.TOperationsMap;
  late final TWorkerService = typeManager.TWorkerService;
  late final TWorkerRequest = typeManager.TWorkerRequest;
  late final TEntryPoint = typeManager.TEntryPoint;
  late final TSquadron = typeManager.TSquadron;
  late final TSquadronPlatformType = typeManager.TSquadronPlatformType;
  late final TPlatformThreadHook = typeManager.TPlatformThreadHook;
  late final TExceptionManager = typeManager.TExceptionManager;
  late final TInvoker = typeManager.TInvoker;
  late final TWorker = typeManager.TWorker;
  late final TWorkerPool = typeManager.TWorkerPool;
  late final TTask = typeManager.TTask;
  late final TValueTask = typeManager.TValueTask;
  late final TStreamTask = typeManager.TStreamTask;
  late final TTaskTerminatedException = typeManager.TTaskTerminatedException;
  late final TWorkerStat = typeManager.TWorkerStat;
  late final TPerfCounter = typeManager.TPerfCounter;
  late final TLocalWorker = typeManager.TLocalWorker;
  late final TWorkerClient = typeManager.TWorkerClient;
  late final TMarshalingContext = typeManager.TMarshalingContext;
  late final TConcurrencySettings = typeManager.TConcurrencySettings;

  late final TReleasable = typeManager.TReleasable;
  late final TCancelationToken = typeManager.TCancelationToken;
  late final TLogger = typeManager.TLogger;

  late final TMap = typeManager.TMap;
  late final TList = typeManager.TList;
  late final TIterable = typeManager.TIterable;
  late final TBool = typeManager.TBool;
  late final TInt = typeManager.TInt;
  late final TString = typeManager.TString;
  late final TDuration = typeManager.TDuration;
  late final TFinalizer = typeManager.TFinalizer;
  late final TFuture = typeManager.TFuture;
  late final TFutureOr = typeManager.TFutureOr;
  late final TStream = typeManager.TStream;
  late final TObject = typeManager.TObject;
  late final TDynamic = typeManager.TDynamic;
  late final TUnimplementedError = typeManager.TUnimplementedError;
  late final TUnsupportedError = typeManager.TUnsupportedError;
}
