part of 'worker_assets.dart';

extension on WorkerAssets {
  /// Worker pool
  String _generateWorkerPool(
      List<SquadronMethodReader> commands, List<DartMethodReader> unimplemented,
      {bool finalizable = false}) {
    final poolParams = _service.parameters.clone();
    final cs =
        poolParams.addOptional('concurrencySettings', TConcurrencySettings);
    poolParams.addOptional('threadHook', TPlatformThreadHook);
    poolParams.addOptional('exceptionManager', TExceptionManager);
    final serviceParams = _service.parameters.clone();
    serviceParams.addOptional('threadHook', TPlatformThreadHook);
    serviceParams.addOptional('exceptionManager', TExceptionManager);

    final workerPool = finalizable ? '_\$$_workerPool' : _workerPool;

    var workerPoolCode = '''/// Worker pool for $_name
        base class $workerPool extends $TWorkerPool<$_worker> implements $_name {

          $workerPool($poolParams) : super(
              ($TExceptionManager exceptionManager) => $_worker(${serviceParams.asArguments()}),
              ${cs.namedArgument()},
          );

          ${_service.vm ? '''$workerPool.vm($poolParams) : super(
              ($TExceptionManager exceptionManager) => $_worker.vm(${serviceParams.asArguments()}),
              ${cs.namedArgument()},
          );''' : ''}

          ${_service.js ? '''$workerPool.js($poolParams) : super(
              ($TExceptionManager exceptionManager) => $_worker.js(${serviceParams.asArguments()}),
              ${cs.namedArgument()},
          );''' : ''}

          ${_service.wasm ? '''$workerPool.wasm($poolParams) : super(
              ($TExceptionManager exceptionManager) => $_worker.wasm(${serviceParams.asArguments()}),
              ${cs.namedArgument()},
          );''' : ''}

          ${_service.fields.values.map((f) => f.override(_typeManager)).join('\n\n')}

          ${commands.map((cmd) => cmd.poolMethod()).join('\n\n')}

          ${unimplemented.map((m) => m.unimplemented()).join('\n\n')}

          ${_service.accessors.map((a) => a.unimplemented(_typeManager)).join('\n\n')}

          ${finalizable ? 'final $TObject _detachToken = $TObject();' : ''}
        }
      ''';

    if (finalizable) {
      final instance = r'_$pool';
      workerPoolCode += '''/// Finalizable worker pool wrapper for $_name
        base class $_workerPool with $TReleasable implements $workerPool {
          
          $_workerPool._(this.$instance) {
            _finalizer.attach(this, $instance, detach: $instance._detachToken);
          }

          $_workerPool(${poolParams.toStringNoFields()}) : this._($workerPool(${poolParams.asArguments()}));

          ${_service.vm ? '$_workerPool.vm(${poolParams.toStringNoFields()}) : this._($workerPool.vm(${poolParams.asArguments()}));' : ''}

          ${_service.js ? '$_workerPool.js(${poolParams.toStringNoFields()}) : this._($workerPool.js(${poolParams.asArguments()}));' : ''}

          ${_service.wasm ? '$_workerPool.wasm(${poolParams.toStringNoFields()}) : this._($workerPool.wasm(${poolParams.asArguments()}));' : ''}

          ${_service.fields.values.map((f) => f.forwardTo(instance, _typeManager)).join('\n\n')}

          final $workerPool $instance;

          static final $TFinalizer<$workerPool> _finalizer = $TFinalizer<$workerPool>((p) {
            try {
              _finalizer.detach(p._detachToken);
              p.release();
            } catch (_) {
              // finalizers must not throw
            }
          });

          $_override
          void release() {
            try {
              $instance.release();
              super.release();
            } catch (_) {
              // release should not throw
            }
          }

          ${commands.map((cmd) => cmd.forwardTo(instance)).join('\n\n')}

          ${unimplemented.map((cmd) => cmd.forwardTo(instance)).join('\n\n')}

          ${_service.accessors.map((a) => a.forwardTo(instance, _typeManager)).join('\n\n')}

          ${_typeManager.getWorkerPoolOverrides().entries.map((e) => _forwardOverride(e.key, instance, e.value)).join('\n\n')}

          $_override
          final $TMap<$TInt, $TCommandHandler> operations = $TWorkerService.noOperations;
        }''';
    }

    return workerPoolCode;
  }
}
