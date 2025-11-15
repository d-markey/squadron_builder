part of 'worker_assets.dart';

extension on WorkerAssets {
  /// Local Worker
  String _generateLocalWorker() {
    final localWorkerExt = '\$${_name}LocalWorkerExt';

    return '''
        /// Local worker extension for $_name
        extension $localWorkerExt on $_name {
          // Get a fresh local worker instance.
          $TLocalWorker<$_name> getLocalWorker([$TExceptionManager? exceptionManager]) =>
            $TLocalWorker.create(this, _\$getOperations(), exceptionManager);
        }
      ''';
  }
}
