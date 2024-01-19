import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:meta/meta.dart';

import '_overrides.dart';
import 'annotations/marshalers/marshaling_info.dart';
import 'annotations/squadron_library.dart';
import 'annotations/squadron_method_reader.dart';
import 'annotations/squadron_service_reader.dart';
import 'build_step_events.dart';

/// Code generator for worker service/operation maps, workers, worker pools, service initializers
/// and worker activators.
@internal
class WorkerAssets {
  WorkerAssets(BuildStep buildStep, this._squadron, this._service)
      : _workerServiceClassName = '_\$${_service.name}WorkerService',
        _workerClassName = '${_service.name}Worker',
        _workerPoolClassName = '${_service.name}WorkerPool',
        _operationsMixinName = '\$${_service.name}Operations',
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

  final SquadronLibrary _squadron;

  final String _operationsMixinName; // TODO: remove in a future version

  final String _workerServiceClassName;
  final String _workerClassName;
  final String _workerPoolClassName;
  final String _serviceInitializerName;
  final String _serviceActivator;

  /// Service activator (stub)
  void generateCrossPlatformCode(BuildStepCodeEvent codeEvent) {
    final output = _xplatOutput;
    if (output != null && _vmOutput != null && _webOutput != null) {
      if (_squadron.entryPointTypeName is! DynamicType) {
        codeEvent.import(output, 'package:squadron/squadron.dart');
      }
      codeEvent.add(
          output,
          _unimplemented(
              '${_squadron.entryPointTypeName} \$get$_serviceActivator()'));
    }
  }

  /// Service activator (native platforms)
  void generateVmCode(BuildStepCodeEvent codeEvent, String? logger) {
    final output = _vmOutput;
    if (output != null) {
      final serializationType = _squadron.serializationTypeName.toString();
      final serviceImport = _getRelativePath(_inputId, output);
      codeEvent.import(output, 'package:squadron/squadron.dart');
      codeEvent.import(output, serviceImport);
      codeEvent.add(output, '''
          /// VM entry point for ${_service.name}
          void _start\$${_service.name}($serializationType command) => run($_serviceInitializerName, command, $logger);

          ${_squadron.entryPointTypeName} \$get$_serviceActivator() => _start\$${_service.name};
        ''');
    }
  }

  /// Service activator (Web platforms)
  void generateWebCode(BuildStepCodeEvent codeEvent, String? logger) {
    final output = _webOutput;
    if (output != null) {
      final serviceImport = _getRelativePath(_inputId, output);
      final workerUrl = _service.baseUrl.isEmpty
          ? '${output.path}.js'
          : '${_service.baseUrl}/${output.pathSegments.last}.js';
      codeEvent.import(output, 'package:squadron/squadron.dart');
      codeEvent.import(output, serviceImport);
      codeEvent.addWebEntryPoint(output, '''
          /// Web entry point for ${_service.name}
          run($_serviceInitializerName, null, $logger);
        ''');
      codeEvent.add(output,
          '${_squadron.entryPointTypeName} \$get$_serviceActivator() => \'$workerUrl\';');
    }
  }

  /// Service activator
  void generateActivatorCode(BuildStepCodeEvent codeEvent) {
    final output = _activatorOutput;
    if (output != null) {
      if (_xplatOutput != null && _webOutput != null && _vmOutput != null) {
        final stubImport = _getRelativePath(_xplatOutput!, output);
        final webImport = _getRelativePath(_webOutput!, output);
        final vmImport = _getRelativePath(_vmOutput!, output);
        codeEvent.import(output, stubImport, platformSpecific: {
          'js': webImport,
          'html': webImport,
          'io': vmImport
        });
        codeEvent.add(output, '''
          /// Service activator for ${_service.name}
          final \$$_serviceActivator = \$get$_serviceActivator();
        ''');
      } else if (_vmOutput != null) {
        final vmImport = _getRelativePath(_vmOutput!, output);
        codeEvent.import(output, vmImport);
        codeEvent.add(output, '''
          /// Service activator for ${_service.name}
          final \$$_serviceActivator = \$get$_serviceActivator();
        ''');
      } else if (_webOutput != null) {
        final webImport = _getRelativePath(_webOutput!, output);
        codeEvent.import(output, webImport);
        codeEvent.add(output, '''
          /// Service activator for ${_service.name}
          final \$$_serviceActivator = \$get$_serviceActivator();
        ''');
      }
    }
  }

  /// Operation map, service initializer, worker and worker pool
  Stream<String> generateMapWorkerAndPool(bool withFinalizers) {
    final commands = <SquadronMethodReader>[];
    final unimplemented = <SquadronMethodReader>[];

    for (var method in _service.methods) {
      // load command info
      final command = SquadronMethodReader.load(method);
      if (command == null) {
        // ignore this one
        continue;
      } else if (command is OtherMethodReader) {
        // not a Squadron command: override as unimplemented in worker / pool
        unimplemented.add(command);
      } else {
        // Squadron command: override to use worker / pool
        commands.add(command);
      }
    }

    commands.sort((a, b) => a.name.compareTo(b.name));
    for (var i = 0; i < commands.length; i++) {
      commands[i].setNum(i + 1);
    }

    return Stream.fromIterable([
      _generateServiceClass(commands),
      _generateServiceInitializer(),
      _generateLegacyMixin(),
      _generateWorker(commands, unimplemented, finalizable: withFinalizers),
      if (_service.pool)
        _generateWorkerPool(commands, unimplemented,
            finalizable: withFinalizers)
    ]);
  }

  String _generateServiceClass(List<SquadronMethodReader> commands) {
    final params = _service.parameters;
    return '''
        /// WorkerService class for ${_service.name}
        class $_workerServiceClassName extends ${_service.name} implements WorkerService {

          $_workerServiceClassName(${params.toStringNoFields()}): super(${params.arguments()});

          @override
          Map<int, CommandHandler> get operations => _operations;

          late final Map<int, CommandHandler> _operations =
              Map.unmodifiable(<int, CommandHandler>{
                ${commands.map(_commandHandler).followedBy(['']).join(',\n')}
              });

          ${commands.map(_commandId).join('\n')}
        }
      ''';
  }

  String _generateLegacyMixin() => '''
        /// Operations map for ${_service.name}
        @Deprecated('squadron_builder now supports "plain old Dart objects" as services. '
          'Services do not need to derive from WorkerService nor do they need to mix in '
          'with \\$_operationsMixinName anymore.')
        mixin $_operationsMixinName on WorkerService {
          @override
          // not needed anymore, generated for compatibility with previous versions of squadron_builder
          Map<int, CommandHandler> get operations => WorkerService.noOperations;
        }
      ''';

  /// Service initializer
  String _generateServiceInitializer() => '''
        /// Service initializer for ${_service.name}
        WorkerService $_serviceInitializerName(WorkerRequest startRequest)
            => $_workerServiceClassName(${_service.parameters.deserialize('startRequest')});
      ''';

  /// Worker
  String _generateWorker(List<SquadronMethodReader> commands,
      List<SquadronMethodReader> unimplemented,
      {bool finalizable = false}) {
    final serialized = _service.parameters.serialize();
    var activationArgs = serialized.isEmpty
        ? _serviceActivator
        : '$_serviceActivator, args: [$serialized]';

    var params = _service.parameters;
    if (_squadron.platformWorkerHookTypeName != null) {
      params = params.clone();
      final pwh = params.addOptional(
          'platformWorkerHook', _squadron.platformWorkerHookTypeName!);
      activationArgs += ', ${pwh.namedArgument()}';
    }

    final className = finalizable ? '_\$$_workerClassName' : _workerClassName;

    var workerCode = '''
        /// Worker for ${_service.name}
        class $className
          extends Worker
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

          ${workerOverrides.entries.map((e) => _forwardOverride(e.key, worker, e.value)).join('\n\n')}

          @override
          Map<int, CommandHandler> get operations => WorkerService.noOperations;
        }
      ''';
    }

    return workerCode;
  }

  /// Worker pool
  String _generateWorkerPool(List<SquadronMethodReader> commands,
      List<SquadronMethodReader> unimplemented,
      {bool finalizable = false}) {
    var poolParams = _service.parameters.clone();
    final cs = poolParams.addOptional(
        'concurrencySettings', _squadron.concurrencySettingsTypeName);
    var serviceParams = _service.parameters;
    if (_squadron.platformWorkerHookTypeName != null) {
      poolParams.addOptional(
          'platformWorkerHook', _squadron.platformWorkerHookTypeName!);
      serviceParams = serviceParams.clone();
      serviceParams.addOptional(
          'platformWorkerHook', _squadron.platformWorkerHookTypeName!);
    }

    final className =
        finalizable ? '_\$$_workerPoolClassName' : _workerPoolClassName;

    var workerPoolCode = '''
        /// Worker pool for ${_service.name}
        class $className
          extends WorkerPool<$_workerClassName>
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

          ${workerPoolOverrides.entries.map((e) => _forwardOverride(e.key, pool, e.value)).join('\n\n')}

          @override
          Map<int, CommandHandler> get operations => WorkerService.noOperations;
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
  String _unimplementedMethod(SquadronMethodReader cmd) =>
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
      if (cmd.parameters.cancellationToken != null)
        'token: ${cmd.parameters.cancellationToken}',
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
  String _forwardMethod(SquadronMethodReader cmd, String target) => '''
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
