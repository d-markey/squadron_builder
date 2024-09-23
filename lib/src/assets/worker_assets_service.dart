part of 'worker_assets.dart';

extension on WorkerAssets {
  String _generateServiceClass(List<SquadronMethodReader> commands) {
    final params = _service.parameters;
    return '''/// WorkerService class for $_name
        ${_service.isBase ? 'base ' : ''}class $_workerService extends $_name implements $TWorkerService {

          $_workerService(${params.asSuperParams()}): super(${params.asNonSuperArguments()});

          $_override
          late final $TMap<$TInt, $TCommandHandler> operations =
              $TMap.unmodifiable(<$TInt, $TCommandHandler>{
                ${commands.map((cmd) => cmd.commandHandler()).join()}
              });

          ${commands.map((cmd) => cmd.commandId()).join('\n')}
        }
      ''';
  }

  static const _input = r'$$';

  /// Service initializer
  String _generateServiceInitializer() => '''/// Service initializer for $_name
        $TWorkerService $_serviceInitializer($TWorkerRequest $_input)
            => $_workerService(${_service.parameters.deserialize(_input)});
      ''';
}
