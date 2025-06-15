import 'dart:async';

import 'package:build/build.dart';
import 'package:meta/meta.dart';

import '../_analyzer_helpers.dart';
import '../build_step_events.dart';
import '../marshalers/deser.dart';
import '../marshalers/marshaling_context.dart';
import '../readers/dart_method_reader.dart';
import '../readers/squadron_service_reader.dart';
import '../types/type_manager.dart';
import '../worker_generator.dart';

part 'helpers/worker_assets_imported_types.dart';
part 'helpers/worker_assets_overrides.dart';
part 'helpers/worker_assets_variables.dart';
part 'worker_assets_activator.dart';
part 'worker_assets_local_worker.dart';
part 'worker_assets_service.dart';
part 'worker_assets_worker.dart';
part 'worker_assets_worker_pool.dart';

/// Code generator for worker service/operation maps, workers, worker pools, service initializers
/// and worker activators.
@internal
class WorkerAssets with _ImportedTypesMixin {
  WorkerAssets(BuildStep buildStep, this._service, GeneratorContext context)
      : _name = _service.name,
        _worker = '${_service.name}Worker',
        _workerService = '_\$${_service.name}\$WorkerService',
        _serviceInvoker = '_\$${_service.name}\$Invoker',
        _serviceFacade = '_\$${_service.name}\$Facade',
        _serviceInitializer = '\$${_service.name}Initializer',
        _serviceActivator = '${_service.name}Activator',
        typeManager = context.typeManager,
        _context = context.marshalingContext {
    for (var output in buildStep.allowedOutputs) {
      final path = output.path.toLowerCase();
      if (_service.vm && path.endsWith('.vm.g.dart')) {
        _vmOutput = output;
      } else if (_service.web && path.endsWith('.web.g.dart')) {
        _webOutput = output;
      } else if ((_service.vm || _service.web) &&
          path.endsWith('.stub.g.dart')) {
        _xplatOutput = output;
      } else if ((_service.vm || _service.web) &&
          path.endsWith('.activator.g.dart')) {
        _activatorOutput = output;
      }
    }
  }

  static String getLocalWorkerClientFor(String name) => '\$Local${name}Client';

  AssetId? _vmOutput;
  AssetId? _webOutput;
  AssetId? _xplatOutput;
  AssetId? _activatorOutput;

  final SquadronServiceReader _service;

  @internal
  @override
  final TypeManager typeManager;

  final MarshalingContext _context;

  final String _name;
  final String _serviceInvoker;
  final String _serviceFacade;
  final String _workerService;
  final String _worker;
  final String _serviceInitializer;
  final String _serviceActivator;

  /// Worker and worker pool (including operation map and service initializer)
  Stream<String> generateWorkerAndPool(bool finalizable) async* {
    final commands = <SquadronMethodReader>[], unimpl = <DartMethodReader>[];

    for (var m in _service.methods) {
      // load command info
      switch (DartMethodReader.load(m, typeManager, _context)) {
        case SquadronMethodReader command:
          // Squadron command: override to use worker / pool
          commands.add(command);
          break;
        case DartMethodReader method:
          // not a Squadron command: override as unimplemented in worker / pool
          unimpl.add(method);
          break;
      }
    }

    commands.sort((a, b) => a.name.compareTo(b.name));
    for (var i = 0; i < commands.length; i++) {
      commands[i].setIndex(i + 1);
    }

    // common code
    yield _generateServiceOperations(commands);
    yield _generateServiceMixins(commands, unimpl);

    // local worker
    if (_service.local) yield _generateLocal(commands, unimpl);

    // regular worker
    if (_service.worker) {
      yield _generateServiceClass(commands);
      yield _generateServiceInitializer(_context);
      yield _generateWorker(commands, unimpl, finalizable);
    }

    // worker pool
    if (_service.pool) yield _generatePool(commands, unimpl, finalizable);
  }

  /// Proxy for base worker/worker pool method
  String _forwardOverride(String decl, String target, String impl) =>
      '$override ${decl.replaceAll('@TWorker@', _worker)} => $target.$impl;';

  // Unimplemented member
  String unimpl(String decl, {bool override = false, bool unused = false}) =>
      '''${override ? this.override : ''}
       ${unused ? '// ignore: unused_element' : ''}
       $decl => throw $TUnimplementedError();''';
}
