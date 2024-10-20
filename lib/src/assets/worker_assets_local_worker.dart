part of 'worker_assets.dart';

extension on WorkerAssets {
  /// Local Worker
  String _generateLocalWorker(List<SquadronMethodReader> commands,
      List<DartMethodReader> unimplemented) {
    final localWorkerClient = '\$Local${_name}Client';
    final localWorkerExt = '\$${_name}LocalWorkerExt';

    var localWorkerCode = '''
        /// Operation map for $_name
        extension $localWorkerExt on $_name {
          $TMap<$TInt, $TCommandHandler> \$getOperationMap() =>
              $TMap.unmodifiable(<$TInt, $TCommandHandler>{
                ${commands.map((cmd) => cmd.commandHandler()).join()}
              });
          
          $TLocalWorker<$_name> \$getLocalWorker() => $TLocalWorker.create(this);

          ${commands.map((cmd) => cmd.commandId()).join('\n')}
        }

        /// LocalWorkerClient for $_name
        final class $localWorkerClient extends $TLocalWorkerClient implements $_name {
          $localWorkerClient($TPlatformChannel channelInfo) : super($TChannel.deserialize(channelInfo)!);

          ${commands.map((cmd) => cmd.workerMethod(localWorkerExt)).join('\n\n')}

          ${unimplemented.map((m) => m.unimplemented()).join('\n\n')}

          ${_service.accessors.where((a) => !a.isOperationMap).map((a) => a.unimplemented(_typeManager)).join('\n\n')}
        }
      ''';

    return localWorkerCode;
  }
}
