part of 'worker_assets.dart';

extension on WorkerAssets {
  /// Local Worker
  String _generateLocal(
    List<SquadronMethodReader> commands,
    List<DartMethodReader> unimplemented,
  ) {
    final localWorkerClient = WorkerAssets.getLocalWorkerClientFor(_name);
    final localWorkerExt = '\$${_name}LocalWorkerExt';

    return '''
        /// Local worker extension for $_name
        extension $localWorkerExt on $_name {
          // Get a fresh local worker instance.
          $TLocalWorker<$_name> getLocalWorker([$TExceptionManager? exceptionManager]) =>
            $TLocalWorker.create(this, _\$getOperations(), exceptionManager);
        }

        /// LocalWorkerClient for $_name
        final class $localWorkerClient
            extends $TLocalWorkerClient
            with $_serviceInvoker, $_serviceFacade
            implements $_name {

          $localWorkerClient($TPlatformChannel channelInfo)
            : super($TChannel.deserialize(channelInfo)!);
        }
      ''';
  }
}
