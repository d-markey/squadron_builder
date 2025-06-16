part of 'worker_assets.dart';

extension on WorkerAssets {
  /// Worker
  String _generateWorker(List<SquadronMethodReader> commands,
      List<DartMethodReader> unimplemented, bool finalizable) {
    final startReq = r'_$startReq', localWorkers = '_\$localWorkers';

    final String declareLocalWorkers, overrideStop;
    final String declareStartArgs, setStartArgs, getStartArgs;

    final params = _service.parameters;
    final startArgs = params.serializeForActivation(_context);
    if (startArgs.isEmpty) {
      // parameter-less service
      declareLocalWorkers = '';
      declareStartArgs = '';
      setStartArgs = '';
      getStartArgs = ' => null;';
      overrideStop = '';
    } else {
      declareStartArgs = 'final ${typeManager.TList} $startReq;';
      setStartArgs = '$startReq = $startArgs,';

      // handle parameters decorated with @localWorker annotation
      // these parameters are local workers for which a shared channel must be serialized
      // additionaly, local workers need to be stopped when the worker is stopped
      final initLocalWorkers = StringBuffer(),
          stopLocalWorkers = StringBuffer();
      for (var param in _service.parameters.all) {
        if (param.isLocalWorker) {
          final idx = param.serIdx, p = 'p$idx';
          // instantiate and register a local worker
          // obtain a shared channel for serialization
          initLocalWorkers.write('''
            final $p = $startReq[$idx];
            if ($p is ${param.type.nonNullable}) {
              $startReq[$idx] = ($localWorkers[$idx] = $p.getLocalWorker()).channel?.serialize();
            }''');

          // stop the local worker and reset the start argument
          stopLocalWorkers.write('''
            $localWorkers[$idx]?.stop();
            $localWorkers[$idx] = null;
            $startReq[$idx] = ${param.name};
          ''');
        }
      }

      getStartArgs = initLocalWorkers.isEmpty
          ? ' => $startReq;'
          : '{ $initLocalWorkers return $startReq; }';

      declareLocalWorkers = stopLocalWorkers.isEmpty
          ? ''
          : 'final $localWorkers = <$TLocalWorker?>[${params.all.map((_) => 'null').join(', ')}];';

      overrideStop = stopLocalWorkers.isEmpty
          ? ''
          : '$override_ void stop() { $stopLocalWorkers super.stop(); }';
    }

    final workerParams = _service.parameters.clone();
    final threadHook =
        workerParams.addOptional('threadHook', TPlatformThreadHook);
    final exceptionManager =
        workerParams.addOptional('exceptionManager', TExceptionManager);

    final additionalArgs =
        '${threadHook.namedArgument()}, ${exceptionManager.namedArgument()}';

    final args = '$_serviceActivator($TSquadron.platformType), $additionalArgs';
    final vmArgs =
        '$_serviceActivator($TSquadronPlatformType.vm), $additionalArgs';
    final jsArgs =
        '$_serviceActivator($TSquadronPlatformType.js), $additionalArgs';
    final wasmArgs =
        '$_serviceActivator($TSquadronPlatformType.wasm), $additionalArgs';

    final worker = finalizable ? '_\$$_worker' : _worker;

    final code = StringBuffer();
    code.writeln('''
        /// Worker for $_name
        base class $worker extends $TWorker with $_serviceInvoker, $_serviceFacade implements $_name {
          
          $worker($workerParams) : $setStartArgs super(\$$args);

          ${_service.vm ? '$worker.vm($workerParams) : $setStartArgs super(\$$vmArgs);' : ''}

          ${_service.js ? '$worker.js($workerParams) : $setStartArgs super(\$$jsArgs);' : ''}

          ${_service.wasm ? '$worker.wasm($workerParams) : $setStartArgs super(\$$wasmArgs);' : ''}

          $declareLocalWorkers
          $declareStartArgs

          $override_
          ${typeManager.TList}? getStartArgs() $getStartArgs

          $overrideStop

          ${_service.fields.values.map((f) => f.override(this)).join('\n\n')}

          ${finalizable ? 'final $DetachToken = $TObject();' : ''}
        }
      ''');

    if (finalizable) {
      code.writeln('''/// Finalizable worker wrapper for $_name
        base class $_worker with $TReleasable implements $worker {
          
          $_worker._(this.$Worker) {
            _finalizer.attach(this, $Worker, detach: $Worker.$DetachToken);
          }

          $_worker(${workerParams.toStringNoFields()}) : this._($worker(${workerParams.asArguments()}));

          ${_service.vm ? '$_worker.vm(${workerParams.toStringNoFields()}) : this._($worker.vm(${workerParams.asArguments()}));' : ''}

          ${_service.js ? '$_worker.js(${workerParams.toStringNoFields()}) : this._($worker.js(${workerParams.asArguments()}));' : ''}

          ${_service.wasm ? '$_worker.wasm(${workerParams.toStringNoFields()}) : this._($worker.wasm(${workerParams.asArguments()}));' : ''}

          ${_service.fields.values.map((f) => f.forwardTo(Worker, this)).join('\n\n')}

          final $worker $Worker;

          static final $TFinalizer<$worker> _finalizer = $TFinalizer<$worker>((w) {
            try {
              _finalizer.detach(w.$DetachToken);
              w.release();
            } catch (_) {
              // finalizers must not throw
            }
          });

          $override_
          void release() {
            try {
              $Worker.release();
              super.release();
            } catch (_) {
              // release should not throw
            }
          }

          ${declareLocalWorkers.isEmpty ? '' : '$override_ $TList<$TLocalWorker?> get $localWorkers => const [];'}

          ${declareStartArgs.isEmpty ? '' : '$override_ $TList<$TDynamic> get $startReq => const  [];'}

          $override_
          ${typeManager.TList}? getStartArgs() => null;

          ${commands.map((cmd) => cmd.forwardTo(Worker, this)).join('\n\n')}

          ${unimplemented.map((cmd) => cmd.forwardTo(Worker, this)).join('\n\n')}

          ${_service.accessors.where((a) => !a.isOperationsMap).map((a) => a.forwardTo(Worker, this)).join('\n\n')}

          ${_getWorkerOverrides().entries.map((e) => _forwardOverride(e.key, Worker, e.value)).join('\n\n')}

          $override_
          final $TOperationsMap operations = $TWorkerService.noOperations;
        }
      ''');
    }

    return code.toString();
  }
}
