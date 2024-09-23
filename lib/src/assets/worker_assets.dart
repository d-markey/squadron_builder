import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:meta/meta.dart';

import '../_overrides.dart';
import '../build_step_events.dart';
import '../readers/dart_method_reader.dart';
import '../readers/squadron_service_reader.dart';
import '../types/type_manager.dart';

part 'worker_assets_activator.dart';
part 'worker_assets_activator_stub.dart';
part 'worker_assets_activator_vm.dart';
part 'worker_assets_activator_web.dart';
part 'worker_assets_service.dart';
part 'worker_assets_worker.dart';
part 'worker_assets_worker_pool.dart';

/// Code generator for worker service/operation maps, workers, worker pools, service initializers
/// and worker activators.
@internal
class WorkerAssets {
  WorkerAssets(BuildStep buildStep, this._service)
      : _name = _service.name,
        _workerService = '_\$${_service.name}WorkerService',
        _worker = '${_service.name}Worker',
        _workerPool = '${_service.name}WorkerPool',
        _serviceInitializer = '\$${_service.name}Initializer',
        _serviceActivator = '${_service.name}Activator',
        _typeManager = _service.typeManager,
        _squadronAlias = _service.typeManager.squadronAlias,
        _override = _service.typeManager.override {
    for (var output in buildStep.allowedOutputs) {
      final path = output.path.toLowerCase();
      if (_service.vm && path.endsWith('.vm.g.dart')) {
        _vmOutput = output;
      } else if (_service.web && path.endsWith('.web.g.dart')) {
        _webOutput = output;
      } else if (path.endsWith('.stub.g.dart')) {
        _xplatOutput = output;
      } else if (path.endsWith('.activator.g.dart')) {
        _activatorOutput = output;
      }
    }
  }

  AssetId? _vmOutput;
  AssetId? _webOutput;
  AssetId? _xplatOutput;
  AssetId? _activatorOutput;

  final SquadronServiceReader _service;

  final String _override;
  final String _squadronAlias;
  late final String _squadronPrefix =
      _squadronAlias.isEmpty ? '' : '$_squadronAlias.';

  final TypeManager _typeManager;

  // ignore: non_constant_identifier_names
  late final TCommandHandler = _typeManager.TCommandHandler;
  // ignore: non_constant_identifier_names
  late final TWorkerService = _typeManager.TWorkerService;
  // ignore: non_constant_identifier_names
  late final TWorkerRequest = _typeManager.TWorkerRequest;
  // ignore: non_constant_identifier_names
  late final TEntryPoint = _typeManager.TEntryPoint;
  // ignore: non_constant_identifier_names
  late final TSquadron = _typeManager.TSquadron;
  // ignore: non_constant_identifier_names
  late final TSquadronPlatformType = _typeManager.TSquadronPlatformType;
  // ignore: non_constant_identifier_names
  late final TPlatformThreadHook = _typeManager.TPlatformThreadHook;
  // ignore: non_constant_identifier_names
  late final TExceptionManager = _typeManager.TExceptionManager;
  // ignore: non_constant_identifier_names
  late final TWorker = _typeManager.TWorker;
  // ignore: non_constant_identifier_names
  late final TWorkerPool = _typeManager.TWorkerPool;
  // ignore: non_constant_identifier_names
  late final TConcurrencySettings = _typeManager.TConcurrencySettings;
  // ignore: non_constant_identifier_names
  late final TReleasable = _typeManager.TReleasable;

  // ignore: non_constant_identifier_names
  late final TMap = _typeManager.TMap;
  // ignore: non_constant_identifier_names
  late final TInt = _typeManager.TInt;
  // ignore: non_constant_identifier_names
  late final TFinalizer = _typeManager.TFinalizer;
  // ignore: non_constant_identifier_names
  late final TObject = _typeManager.TObject;

  final String _name;
  final String _workerService;
  final String _worker;
  final String _workerPool;
  final String _serviceInitializer;
  final String _serviceActivator;

  /// Worker and worker pool (including operation map and service initializer)
  Stream<String> generateWorkerAndPool(bool withFinalizers) {
    final commands = <SquadronMethodReader>[];
    final unimplemented = <DartMethodReader>[];

    for (var method in _service.methods) {
      // load command info
      final command = DartMethodReader.load(method, _service.typeManager);
      if (command == null) {
        // ignore this one
        continue;
      } else if (command is SquadronMethodReader) {
        // Squadron command: override to use worker / pool
        commands.add(command);
      } else {
        // not a Squadron command: override as unimplemented in worker / pool
        unimplemented.add(command);
      }
    }

    commands.sort((a, b) => a.name.compareTo(b.name));
    for (var i = 0; i < commands.length; i++) {
      commands[i].setIndex(i + 1);
    }

    return Stream.fromIterable([
      _generateServiceClass(commands),
      _generateServiceInitializer(),
      _generateWorker(commands, unimplemented, finalizable: withFinalizers),
      if (_service.pool)
        _generateWorkerPool(commands, unimplemented,
            finalizable: withFinalizers)
    ]);
  }

  /// Proxy for base worker/worker pool method
  String _forwardOverride(String decl, String target, String impl) =>
      '$_override ${decl.replaceAll('@Worker@', _worker)} => $target.$impl;';
}

// Unimplemented member
String _unimplemented(TypeManager? typeManager, String decl,
        {bool override = false, bool unused = false}) =>
    '''${override ? (typeManager?.override ?? '@override') : ''}
       ${unused ? '// ignore: unused_element' : ''}
       $decl => throw ${typeManager?.TUnimplementedError.toString() ?? 'UnimplementedError'}();''';

// extensions for forwarded or unimplemented members

extension on DartMethodReader {
  String forwardTo(String target) {
    final override = typeManager.override;
    return '$override $declaration => $target.$name(${parameters.asArguments()});';
  }

  String unimplemented() {
    return _unimplemented(typeManager, declaration, override: true);
  }
}

extension on SquadronMethodReader {
  String commandId() => 'static const ${typeManager.TInt} $id = $index;';

  String commandHandler() {
    final req = r'$';
    final serviceCall = '$name(${parameters.deserialize(req)})';
    final typeParams =
        typeParameters.isEmpty ? '' : '<${typeParameters.join(', ')}>';
    if (serializer.isEmpty) {
      return '$id: $typeParams($req) => $serviceCall,';
    } else if (isStream) {
      return '$id: $typeParams($req) => $serviceCall.map($serializer),';
    } else if (isFuture) {
      return '$id: $typeParams($req) => $serviceCall.then($serializer),';
    } else {
      return '$id: $typeParams($req) async => $serializer(await $serviceCall),';
    }
  }

  String workerMethod(String workerService) {
    final args = [
      '$workerService.$id',
      'args: [ ${parameters.serialize()} ]',
      if (parameters.cancelationToken != null)
        'token: ${parameters.cancelationToken}',
      if (inspectRequest) 'inspectRequest: true',
      if (inspectResponse) 'inspectResponse: true'
    ].join(', ');
    var deserialize = deserializer;
    if (deserialize.isNotEmpty) {
      deserialize = '$continuation($deserialize)';
    }
    final override = typeManager.override;
    return '$override $declaration => $workerExecutor($args)$deserialize;';
  }

  String poolMethod() {
    final override = typeManager.override;
    return '$override $declaration => $poolExecutor((w) => w.$name(${parameters.asArguments()}));';
  }
}

extension on FieldElement {
  String forwardTo(String target, TypeManager typeManager) {
    final typeName = typeManager.getTypeName(type);
    final override = typeManager.override;
    return [
      '$override $typeName get $name => $target.$name;',
      if (!isFinal)
        '$override set $name($typeName value) => $target.$name = value;',
    ].join('\n');
  }

  String override(TypeManager typeManager) {
    final typeName = typeManager.getTypeName(type);
    final override = typeManager.override;
    return '$override ${isFinal ? 'final ' : ''}$typeName $name;';
  }
}

extension on PropertyAccessorElement {
  String get property => isGetter ? name : name.replaceAll('=', '');

  String forwardTo(String target, TypeManager typeManager) {
    final type = typeManager.getTypeName(returnType);
    final override = typeManager.override;
    return isGetter
        ? '$override $type get $property => $target.$property;'
        : '$override set $property($type value) => $target.$property = value;';
  }

  String unimplemented(TypeManager typeManager) {
    final type = typeManager.getTypeName(returnType);
    return _unimplemented(
      typeManager,
      isGetter ? '$type get $property' : 'set $property($type value)',
      override: true,
      unused: true,
    );
  }
}
