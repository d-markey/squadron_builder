import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:meta/meta.dart';

import '_overrides.dart';
import 'build_step_events.dart';
import 'marshalers/marshaling_info.dart';
import 'readers/dart_method_reader.dart';
import 'readers/squadron_service_reader.dart';
import 'types/type_manager.dart';

/// Code generator for worker service/operation maps, workers, worker pools, service initializers
/// and worker activators.
@internal
class WorkerAssets {
  WorkerAssets(BuildStep buildStep, this._service)
      : _workerServiceClassName = '_\$${_service.name}WorkerService',
        _workerClassName = '${_service.name}Worker',
        _workerPoolClassName = '${_service.name}WorkerPool',
        _serviceInitializerName = '\$${_service.name}Initializer',
        _serviceActivator = '${_service.name}Activator',
        _inputId = buildStep.inputId {
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

  final AssetId _inputId;
  AssetId? _vmOutput;
  AssetId? _webOutput;
  AssetId? _xplatOutput;
  AssetId? _activatorOutput;

  final SquadronServiceReader _service;

  TypeManager get _typeManager => _service.typeManager;

  final String _workerServiceClassName;
  final String _workerClassName;
  final String _workerPoolClassName;
  final String _serviceInitializerName;
  final String _serviceActivator;

  /// Service activator (stub)
  void generateCrossPlatformCode(BuildStepCodeEvent codeEvent) {
    final output = _xplatOutput;
    if (output != null && _vmOutput != null && _webOutput != null) {
      codeEvent.import(
        output,
        'package:squadron/squadron.dart',
        prefix: _typeManager.squadronPrefix,
      );
      codeEvent.add(
        output,
        _unimplemented(
            '${_typeManager.entryPointType} \$get$_serviceActivator()'),
      );
    }
  }

  /// Service activator (native platforms)
  void generateVmCode(BuildStepCodeEvent codeEvent) {
    final output = _vmOutput;
    if (output != null) {
      codeEvent.import(output, 'package:squadron/squadron.dart',
          prefix: _typeManager.squadronPrefix);
      codeEvent.import(output, _getRelativePath(_inputId, output));

      final run = _typeManager.squadronPrefix.isEmpty
          ? 'run'
          : '${_typeManager.squadronPrefix}.run';

      codeEvent.add(
        output,
        '''/// VM entry point for ${_service.name}
           void _start\$${_service.name}(${_typeManager.listType} command) => $run($_serviceInitializerName, command);

           ${_typeManager.entryPointType} \$get$_serviceActivator() => _start\$${_service.name};
        ''',
      );
    }
  }

  /// Service activator (Web platforms)
  void generateWebCode(BuildStepCodeEvent codeEvent) {
    final output = _webOutput;
    if (output != null) {
      codeEvent.import(
        output,
        'package:squadron/squadron.dart',
        prefix: _typeManager.squadronPrefix,
      );
      codeEvent.import(output, _getRelativePath(_inputId, output));

      final run = _typeManager.squadronPrefix.isEmpty
          ? 'run'
          : '${_typeManager.squadronPrefix}.run';

      codeEvent.addWebEntryPoint(
        output,
        '''/// Web entry point for ${_service.name}
           $run($_serviceInitializerName);
        ''',
      );

      final workerUrl = _service.baseUrl.isEmpty
          ? '${output.path}.js'
          : '${_service.baseUrl}/${output.pathSegments.last}.js';
      codeEvent.add(
        output,
        '${_typeManager.entryPointType} \$get$_serviceActivator() => \'$workerUrl\';',
      );
    }
  }

  /// Service activator
  void generateActivatorCode(BuildStepCodeEvent codeEvent) {
    final output = _activatorOutput;
    if (output != null) {
      if (_xplatOutput != null && _webOutput != null && _vmOutput != null) {
        codeEvent.import(
          output,
          _getRelativePath(_xplatOutput!, output),
          platformSpecific: {
            'js': _getRelativePath(_webOutput!, output),
            'html': _getRelativePath(_webOutput!, output),
            'io': _getRelativePath(_vmOutput!, output),
          },
        );
      } else if (_vmOutput != null) {
        codeEvent.import(output, _getRelativePath(_vmOutput!, output));
      } else if (_webOutput != null) {
        codeEvent.import(output, _getRelativePath(_webOutput!, output));
      }

      codeEvent.add(output, '''/// Service activator for ${_service.name}
          final \$$_serviceActivator = \$get$_serviceActivator();
        ''');
    }
  }

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
      commands[i].setNum(i + 1);
    }

    return Stream.fromIterable([
      _generateLints(),
      _generateServiceClass(commands),
      _generateServiceInitializer(),
      _generateWorker(commands, unimplemented, finalizable: withFinalizers),
      if (_service.pool)
        _generateWorkerPool(commands, unimplemented,
            finalizable: withFinalizers)
    ]);
  }

  String _generateLints() => '''
// ignore_for_file: unnecessary_cast
''';

  String _generateServiceClass(List<SquadronMethodReader> commands) {
    final params = _service.parameters;
    return '''
        /// WorkerService class for ${_service.name}
        class $_workerServiceClassName extends ${_service.name} implements ${_typeManager.workerServiceType} {

          $_workerServiceClassName(${params.toStringNoFields()}): super(${params.arguments()});

          @override
          Map<int, ${_typeManager.commandHandlerType}> get operations => _operations;

          late final Map<int, ${_typeManager.commandHandlerType}> _operations =
              Map.unmodifiable(<int, ${_typeManager.commandHandlerType}>{
                ${commands.map(_commandHandler).followedBy(['']).join(',\n')}
              });

          ${commands.map(_commandId).join('\n')}
        }
      ''';
  }

  /// Service initializer
  String _generateServiceInitializer() => '''
        /// Service initializer for ${_service.name}
        ${_typeManager.workerServiceType} $_serviceInitializerName(${_typeManager.workerRequestType} startRequest)
            => $_workerServiceClassName(${_service.parameters.deserialize('startRequest')});
      ''';

  /// Worker
  String _generateWorker(
      List<SquadronMethodReader> commands, List<DartMethodReader> unimplemented,
      {bool finalizable = false}) {
    final serialized = _service.parameters.serialize();
    var activationArgs = serialized.isEmpty
        ? _serviceActivator
        : '$_serviceActivator, args: [$serialized]';

    var params = _service.parameters;
    params = params.clone();
    final threadHook =
        params.addOptional('threadHook', _typeManager.platformThreadHookType);
    activationArgs += ', ${threadHook.namedArgument()}';

    final className = finalizable ? '_\$$_workerClassName' : _workerClassName;

    var workerCode = '''
        /// Worker for ${_service.name}
        class $className
          extends ${_typeManager.workerType}
          implements ${_service.name} {
          
          $className($params) : super(\$$activationArgs);

          ${_service.fields.values.map(_field).join('\n\n')}

          ${commands.map(_workerMethod).join('\n\n')}

          ${unimplemented.map(_unimplementedMethod).join('\n\n')}

          ${_service.accessors.map(_unimplementedAccessor).join('\n\n')}

          ${finalizable ? 'final Object _detachToken = Object();' : ''}
        }
      ''';

    if (finalizable) {
      final worker = r'_$w';
      workerCode += '''
        /// Finalizable worker wrapper for ${_service.name}
        class $_workerClassName implements $className {
          
          $_workerClassName(${params.toStringNoFields()}) : $worker = $className(${params.arguments()}) {
            _finalizer.attach(this, $worker, detach: $worker._detachToken);
          }

          ${_service.fields.values.map((f) => _forwardField(f, worker)).join('\n\n')}

          final $className $worker;

          static final Finalizer<$className> _finalizer = Finalizer<$className>((w) {
            try {
              _finalizer.detach(w._detachToken);
              w.stop();
            } catch (ex) {
              // finalizers must not throw
            }
          });

          ${commands.map((cmd) => _forwardMethod(cmd, worker)).join('\n\n')}

          ${unimplemented.map((cmd) => _forwardMethod(cmd, worker)).join('\n\n')}

          ${_service.accessors.map((acc) => _forwardAccessor(acc, worker)).join('\n\n')}

          ${getWorkerOverrides(_typeManager).entries.map((e) => _forwardOverride(e.key, worker, e.value)).join('\n\n')}

          @override
          Map<int, ${_typeManager.commandHandlerType}> get operations => ${_typeManager.workerServiceType}.noOperations;
        }
      ''';
    }

    return workerCode;
  }

  /// Worker pool
  String _generateWorkerPool(
      List<SquadronMethodReader> commands, List<DartMethodReader> unimplemented,
      {bool finalizable = false}) {
    var poolParams = _service.parameters.clone();
    final cs = poolParams.addOptional(
        'concurrencySettings', _typeManager.concurrencySettingsType);
    var serviceParams = _service.parameters;
    poolParams.addOptional('threadHook', _typeManager.platformThreadHookType);
    serviceParams = serviceParams.clone();
    serviceParams.addOptional(
        'threadHook', _typeManager.platformThreadHookType);

    final className =
        finalizable ? '_\$$_workerPoolClassName' : _workerPoolClassName;

    var workerPoolCode = '''
        /// Worker pool for ${_service.name}
        class $className
          extends ${_typeManager.workerPoolType}<$_workerClassName>
          implements ${_service.name} {

          $className($poolParams) : super(
              () => $_workerClassName(${serviceParams.arguments()}),
              ${cs.namedArgument()});

          ${_service.fields.values.map(_field).join('\n\n')}

          ${commands.map(_poolMethod).join('\n\n')}

          ${unimplemented.map(_unimplementedMethod).join('\n\n')}

          ${_service.accessors.map(_unimplementedAccessor).join('\n\n')}

          ${finalizable ? 'final Object _detachToken = Object();' : ''}
        }
      ''';

    if (finalizable) {
      final pool = r'_$p';
      workerPoolCode += '''
        /// Finalizable worker pool wrapper for ${_service.name}
        class $_workerPoolClassName implements $className {
          
          $_workerPoolClassName(${poolParams.toStringNoFields()}) : $pool = $className(${poolParams.arguments()}) {
            _finalizer.attach(this, $pool, detach: $pool._detachToken);
          }

          ${_service.fields.values.map((f) => _forwardField(f, pool)).join('\n\n')}

          final $className $pool;

          static final Finalizer<$className> _finalizer = Finalizer<$className>((p) {
            try {
              _finalizer.detach(p._detachToken);
              p.stop();
            } catch (ex) {
              // finalizers must not throw
            }
          });

          ${commands.map((cmd) => _forwardMethod(cmd, pool)).join('\n\n')}

          ${unimplemented.map((cmd) => _forwardMethod(cmd, pool)).join('\n\n')}

          ${_service.accessors.map((acc) => _forwardAccessor(acc, pool)).join('\n\n')}

          ${getWorkerPoolOverrides(_typeManager).entries.map((e) => _forwardOverride(e.key, pool, e.value)).join('\n\n')}

          @override
          Map<int, ${_typeManager.commandHandlerType}> get operations => ${_typeManager.workerServiceType}.noOperations;
        }''';
    }

    return workerPoolCode;
  }

  /// Command ID
  String _commandId(SquadronMethodReader cmd) =>
      'static const int ${cmd.id} = ${cmd.num};';

  /// Command handler
  String _commandHandler(SquadronMethodReader cmd) {
    final req = r'$', res = '_';
    final serviceCall = '${cmd.name}(${cmd.parameters.deserialize(req)})';
    if (cmd.needsSerialization && !cmd.serializedResult.isIdentity) {
      if (cmd.isStream) {
        return '${cmd.id}: ($req) => $serviceCall.${cmd.continuation}(($res) => ${cmd.serializedResult(res)})';
      } else {
        final result = '\$r';
        return '${cmd.id}: ($req) async { final $result = await $serviceCall; return ${cmd.serializedResult(result)}; }';
      }
    } else {
      return '${cmd.id}: ($req) => $serviceCall';
    }
  }

  /// Overridden service field
  String _field(FieldElement field) => '''
      @override
      ${field.isFinal ? 'final ' : ''}${field.type} ${field.name};
    ''';

  /// Unimplemented member
  String _unimplemented(String decl,
          {bool override = false, bool unused = false}) =>
      '''
      ${override ? '@override' : ''}
      ${unused ? '// ignore: unused_element' : ''}
      $decl => throw UnimplementedError();
    ''';

  /// Unimplemented field/method
  String _unimplementedMethod(DartMethodReader cmd) =>
      _unimplemented(cmd.declaration, override: true);

  /// Unimplemented accessor
  String _unimplementedAccessor(PropertyAccessorElement acc) => _unimplemented(
        acc.isGetter
            ? '${acc.returnType} get ${acc.name}'
            : 'set ${acc.name.replaceAll('=', '')}(${acc.returnType} value)',
        override: true,
        unused: true,
      );

  /// Service method invocation from worker
  String _workerMethod(SquadronMethodReader cmd) {
    final res = '_';
    final deserialize =
        (cmd.needsSerialization && !cmd.deserializedResult.isIdentity)
            ? '.${cmd.continuation}(($res) => ${cmd.deserializedResult(res)})'
            : '';
    final args = [
      '$_workerServiceClassName.${cmd.id}',
      'args: [ ${cmd.parameters.serialize()} ]',
      if (cmd.parameters.cancelationToken != null)
        'token: ${cmd.parameters.cancelationToken}',
      if (cmd.inspectRequest) 'inspectRequest: true',
      if (cmd.inspectResponse) 'inspectResponse: true'
    ].join(', ');
    return '''
      @override
      ${cmd.declaration} => ${cmd.workerExecutor}($args)$deserialize;
    ''';
  }

  /// Service method invocation from worker pool
  String _poolMethod(SquadronMethodReader cmd) => '''
      @override
      ${cmd.declaration} => ${cmd.poolExecutor}((w) => w.${cmd.name}(${cmd.parameters.arguments()}));
    ''';

  /// Proxy for service field
  String _forwardField(FieldElement field, String target) => '''
      @override
      ${field.type} get ${field.name} => $target.${field.name};

      ${field.isFinal ? '' : '''
        @override
        set ${field.name}(${field.type} value) => $target.${field.name} = value;
      '''}
    ''';

  /// Proxy for service method
  String _forwardMethod(DartMethodReader cmd, String target) => '''
      @override
      ${cmd.declaration} => $target.${cmd.name}(${cmd.parameters.arguments()});
    ''';

  /// Proxy for service accessor
  String _forwardAccessor(PropertyAccessorElement acc, String target) =>
      acc.isGetter
          ? '''
            @override
            ${acc.returnType} get ${acc.name} => $target.${acc.name};
          '''
          : '''
            @override
            set ${acc.name.replaceAll('=', '')}(${acc.returnType} value) => $target.${acc.name}(value);
          ''';

  /// Proxy for base worker/worker pool method
  String _forwardOverride(String decl, String target, String impl) => '''
      @override
      ${decl.replaceAll(r'$workerClassName', _workerClassName)} => $target.$impl;
    ''';

  /// Get relative path to import [target] from [current]
  static String _getRelativePath(AssetId target, AssetId current) {
    final targetSegments = target.pathSegments;
    final currentSegments = current.pathSegments;

    while (targetSegments.isNotEmpty &&
        currentSegments.isNotEmpty &&
        targetSegments.first == currentSegments.first) {
      targetSegments.removeAt(0);
      currentSegments.removeAt(0);
    }

    while (currentSegments.length > 1) {
      targetSegments.insert(0, '..');
      currentSegments.removeAt(0);
    }

    return targetSegments.join('/');
  }
}
