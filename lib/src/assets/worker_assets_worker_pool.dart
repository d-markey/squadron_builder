part of 'worker_assets.dart';

extension on WorkerAssets {
  /// Worker pool
  String _generatePool(List<SquadronMethodReader> commands,
      List<DartMethodReader> unimplemented, bool finalizable) {
    final workerParams = _service.parameters.clone();
    workerParams.addOptional('threadHook', TPlatformThreadHook);
    final em = workerParams.addOptional('exceptionManager', TExceptionManager);

    final poolParams = workerParams.clone();
    final cs =
        poolParams.addOptional('concurrencySettings', TConcurrencySettings);

    final publicWorkerPool = '${_service.name}WorkerPool';
    final workerPool = finalizable ? '_\$$publicWorkerPool' : publicWorkerPool;

    final exceptionManager = '$TExceptionManager exceptionManager';
    final workerArgs = workerParams.asArguments();
    final additionalArgs = '${cs.namedArgument()}, ${em.namedArgument()}';

    final code = StringBuffer();
    code.writeln('''/// Worker pool for $_name
        base class $workerPool extends $TWorkerPool<$_worker> with $_serviceFacade implements $_name {
          $workerPool($poolParams) : super(($exceptionManager) => $_worker($workerArgs), $additionalArgs);

          ${_service.vm ? '$workerPool.vm($poolParams) : super(($exceptionManager) => $_worker.vm($workerArgs), $additionalArgs);' : ''}

          ${_service.js ? '$workerPool.js($poolParams) : super(($exceptionManager) => $_worker.js($workerArgs), $additionalArgs);' : ''}

          ${_service.wasm ? '$workerPool.wasm($poolParams) : super(($exceptionManager) => $_worker.wasm($workerArgs), $additionalArgs);' : ''}

          ${_service.fields.values.map((f) => f.override(this)).join('\n\n')}

          ${commands.map((cmd) => cmd.poolMethod(this)).join('\n\n')}

          ${finalizable ? 'final $DetachToken = $TObject();' : ''}
        }
      ''');

    if (finalizable) {
      final poolArgs = poolParams.asArguments();
      code.writeln('''/// Finalizable worker pool wrapper for $_name
        base class $publicWorkerPool with $TReleasable implements $workerPool {
          
          $publicWorkerPool._(this.$Pool) {
            _finalizer.attach(this, $Pool, detach: $Pool.$DetachToken);
          }

          $publicWorkerPool(${poolParams.toStringNoFields()}) : this._($workerPool($poolArgs));

          ${_service.vm ? '$publicWorkerPool.vm(${poolParams.toStringNoFields()}) : this._($workerPool.vm($poolArgs));' : ''}

          ${_service.js ? '$publicWorkerPool.js(${poolParams.toStringNoFields()}) : this._($workerPool.js($poolArgs));' : ''}

          ${_service.wasm ? '$publicWorkerPool.wasm(${poolParams.toStringNoFields()}) : this._($workerPool.wasm($poolArgs));' : ''}

          ${_service.fields.values.map((f) => f.forwardTo(Pool, this)).join('\n\n')}

          final $workerPool $Pool;

          static final $TFinalizer<$workerPool> _finalizer = $TFinalizer<$workerPool>((p) {
            try {
              _finalizer.detach(p.$DetachToken);
              p.release();
            } catch (_) {
              // finalizers must not throw
            }
          });

          $override
          void release() {
            try {
              $Pool.release();
              super.release();
            } catch (_) {
              // release should not throw
            }
          }

          ${commands.map((cmd) => cmd.forwardTo(Pool, this)).join('\n\n')}

          ${unimplemented.map((cmd) => cmd.forwardTo(Pool, this)).join('\n\n')}

          ${_service.accessors.where((a) => !a.isOperationsMap).map((a) => a.forwardTo(Pool, this)).join('\n\n')}

          ${getWorkerPoolOverrides().entries.map((e) => _forwardOverride(e.key, Pool, e.value)).join('\n\n')}

          $override
          final $TOperationsMap operations = $TWorkerService.noOperations;
        }''');
    }

    return code.toString();
  }
}
