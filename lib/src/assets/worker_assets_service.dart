part of 'worker_assets.dart';

extension on WorkerAssets {
  /// Service extension to generate operations map
  String _generateServiceOperations(List<SquadronMethodReader> commands) {
    for (var cmd in commands) {
      cmd.throwIfLocalWorkerParam();
    }
    return '''
      /// Command ids used in operations map
      ${commands.map((cmd) => cmd.commandId()).join('\n')}

      /// WorkerService operations for $_name
      extension on $_name {
        $TOperationsMap _\$getOperations() =>
          $TOperationsMap({
            ${commands.map((cmd) => cmd.commandHandler()).join()}
          });
      }''';
  }

  /// Service mixins for invocation and implementation
  String _generateServiceMixins(List<SquadronMethodReader> commands,
          List<DartMethodReader> unimplemented) =>
      '''/// Invoker for $_name, implements the public interface to invoke the
      /// remote service.
      ${_service.isBase ? 'base ' : ''}mixin $_serviceInvoker on $TInvoker implements $_name {
        ${commands.map((cmd) => cmd.workerMethod(this)).join('\n\n')}
      }

      /// Facade for $_name, implements other details of the service unrelated to
      /// invoking the remote service.
      ${_service.isBase ? 'base ' : ''}mixin $_serviceFacade implements $_name {
        ${unimplemented.map((m) => m.unimpl(this)).join('\n\n')}

        ${_service.accessors.where((a) => !a.isOperationsMap).map((a) => a.unimpl(this)).join('\n\n')}
      }''';

  /// Worker Service
  String _generateServiceClass(List<SquadronMethodReader> commands) {
    final params = _service.parameters;
    return '''/// WorkerService class for $_name
        ${_service.isBase ? 'base ' : ''}class $_workerService extends $_name implements $TWorkerService {
          $_workerService(${params.asSuperParams()}): super(${params.asNonSuperArguments()});

          $override
          $TOperationsMap get operations => _\$getOperations();
        }''';
  }

  /// Service initializer
  String _generateServiceInitializer(MarshalingContext context) {
    final args = _service.parameters.deser(_context, Req);
    final contextInitialization =
        _context.initDeserContext(args != null, args.contextAware);

    return contextInitialization.isEmpty
        ? '''/// Service initializer for $_name
            $TWorkerService $_serviceInitializer($TWorkerRequest $Req) =>
              $_workerService(${args.code});
          '''
        : '''/// Service initializer for $_name
            $TWorkerService $_serviceInitializer($TWorkerRequest $Req) {
              $contextInitialization;
              return $_workerService(${args.code});
            }''';
  }
}
