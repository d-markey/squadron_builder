part of 'worker_assets.dart';

extension on WorkerAssets {
  String _generateServiceOperations(List<SquadronMethodReader> commands) =>
      '''/// WorkerService operations for $_name
        extension $_serviceOperations on $_name {
          $TOperationsMap _\$getOperations() =>
              $TMap.unmodifiable({
                ${commands.map((cmd) => cmd.commandHandler()).join()}
              });

          ${commands.map((cmd) => cmd.commandId()).join('\n')}
        }
      ''';

  /// Service mixins for invocation and implementation
  String _generateServiceMixins(List<SquadronMethodReader> commands,
          List<DartMethodReader> unimplemented) =>
      '''
        /// Invoker for $_name, implements the public interface to invoke the
        /// remote service.
        ${_service.isBase ? 'base ' : ''}mixin $_serviceInvoker on $TInvoker implements $_name {
          ${commands.map((cmd) => cmd.workerMethod(_serviceOperations)).join('\n\n')}
        }

        /// Facade for $_name, implements other details of the service not related to
        /// invoking the remote service.
        ${_service.isBase ? 'base ' : ''}mixin $_serviceFacade implements $_name {
          ${unimplemented.map((m) => m.unimplemented()).join('\n\n')}

          ${_service.accessors.where((a) => !a.isOperationsMap).map((a) => a.unimplemented(_typeManager)).join('\n\n')}
        }
      ''';

  String _generateServiceClass(List<SquadronMethodReader> commands) {
    final params = _service.parameters;
    return '''/// WorkerService class for $_name
        ${_service.isBase ? 'base ' : ''}class $_workerService extends $_name implements $TWorkerService {

          $_workerService(${params.asSuperParams()}): super(${params.asNonSuperArguments()});

          $TOperationsMap? _operations;

          $_override
          $TOperationsMap get operations => (_operations ??= _\$getOperations());
        }
      ''';
  }

  /// Service initializer
  String _generateServiceInitializer() {
    final startReq = '\$req';
    final args = _service.parameters.deserialize(_context, startReq);
    final contextInitialization =
        _context.initialize(args != null, args.contextAware);

    return contextInitialization.isEmpty
        ? '''/// Service initializer for $_name
            $TWorkerService $_serviceInitializer($TWorkerRequest $startReq) =>
              $_workerService(${args.code});
          '''
        : '''/// Service initializer for $_name
            $TWorkerService $_serviceInitializer($TWorkerRequest $startReq) {
              $contextInitialization;
              return $_workerService(${args.code});
            }''';
  }
}
