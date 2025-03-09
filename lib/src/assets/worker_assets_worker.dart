part of 'worker_assets.dart';

extension on WorkerAssets {
  /// Worker
  String _generateWorker(List<SquadronMethodReader> commands,
      List<DartMethodReader> unimplemented, bool finalizable) {
    final serialized = _service.parameters.serializeForActivation(_context);
    var activationArgs = serialized.isEmpty
        ? '$_serviceActivator($TSquadron.platformType)'
        : '$_serviceActivator($TSquadron.platformType), args: $serialized';
    var vmActivationArgs = serialized.isEmpty
        ? '$_serviceActivator($TSquadronPlatformType.vm)'
        : '$_serviceActivator($TSquadronPlatformType.vm), args: $serialized';
    var jsActivationArgs = serialized.isEmpty
        ? '$_serviceActivator($TSquadronPlatformType.js)'
        : '$_serviceActivator($TSquadronPlatformType.js), args: $serialized';
    var wasmActivationArgs = serialized.isEmpty
        ? '$_serviceActivator($TSquadronPlatformType.wasm)'
        : '$_serviceActivator($TSquadronPlatformType.wasm), args: $serialized';

    var params = _service.parameters;
    params = params.clone();
    final threadHook = params.addOptional('threadHook', TPlatformThreadHook);
    final exceptionManager =
        params.addOptional('exceptionManager', TExceptionManager);

    activationArgs +=
        ', ${threadHook.namedArgument()}, ${exceptionManager.namedArgument()}';
    vmActivationArgs +=
        ', ${threadHook.namedArgument()}, ${exceptionManager.namedArgument()}';
    jsActivationArgs +=
        ', ${threadHook.namedArgument()}, ${exceptionManager.namedArgument()}';
    wasmActivationArgs +=
        ', ${threadHook.namedArgument()}, ${exceptionManager.namedArgument()}';

    final worker = finalizable ? '_\$$_worker' : _worker;

    var workerCode = '''
        /// Worker for $_name
        base class $worker extends $TWorker with $_serviceInvoker, $_serviceFacade implements $_name {
          
          $worker($params) : super(\$$activationArgs);

          ${_service.vm ? '$worker.vm($params) : super(\$$vmActivationArgs);' : ''}

          ${_service.js ? '$worker.js($params) : super(\$$jsActivationArgs);' : ''}

          ${_service.wasm ? '$worker.wasm($params) : super(\$$wasmActivationArgs);' : ''}

          ${_service.fields.values.map((f) => f.override(_typeManager)).join('\n\n')}

          ${finalizable ? 'final $TObject _detachToken = $TObject();' : ''}
        }
      ''';

    if (finalizable) {
      final instance = r'_$worker';
      workerCode += '''/// Finalizable worker wrapper for $_name
        base class $_worker with $TReleasable implements $worker {
          
          $_worker._(this.$instance) {
            _finalizer.attach(this, $instance, detach: $instance._detachToken);
          }

          $_worker(${params.toStringNoFields()}) : this._($worker(${params.asArguments()}));

          ${_service.vm ? '$_worker.vm(${params.toStringNoFields()}) : this._($worker.vm(${params.asArguments()}));' : ''}

          ${_service.js ? '$_worker.js(${params.toStringNoFields()}) : this._($worker.js(${params.asArguments()}));' : ''}

          ${_service.wasm ? '$_worker.wasm(${params.toStringNoFields()}) : this._($worker.wasm(${params.asArguments()}));' : ''}

          ${_service.fields.values.map((f) => f.forwardTo(instance, _typeManager)).join('\n\n')}

          final $worker $instance;

          static final $TFinalizer<$worker> _finalizer = $TFinalizer<$worker>((w) {
            try {
              _finalizer.detach(w._detachToken);
              w.release();
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

          ${_service.accessors.where((a) => !a.isOperationsMap).map((a) => a.forwardTo(instance, _typeManager)).join('\n\n')}

          ${_typeManager.getWorkerOverrides().entries.map((e) => _forwardOverride(e.key, instance, e.value)).join('\n\n')}

          $_override
          final $TOperationsMap operations = $TWorkerService.noOperations;
        }
      ''';
    }

    return workerCode;
  }
}
