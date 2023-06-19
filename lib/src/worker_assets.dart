import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:meta/meta.dart';

import 'annotations/marshallers/marshalling_info.dart';
import 'annotations/squadron_library.dart';
import 'annotations/squadron_method_annotation.dart';
import 'annotations/squadron_service_annotation.dart';
import '_overrides.dart';
import 'build_step_events.dart';

/// Code generator for operation maps, workers, worker pools, service initializers
/// and worker activators.
@internal
class WorkerAssets {
  WorkerAssets(BuildStep buildStep, this._squadron, this._service)
      : _workerClassName = '${_service.name}Worker',
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

  final SquadronServiceAnnotation _service;

  final SquadronLibrary _squadron;

  final String _operationsMixinName;
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
  Stream<String> generateMapWorkerAndPool(bool withFinalizers) async* {
    final commands = <SquadronMethodAnnotation>[];
    final unimplemented = <SquadronMethodAnnotation>[];

    for (var method in _service.methods) {
      // load command info
      final command = SquadronMethodAnnotation.load(method);
      if (method.name.startsWith('_') || command == null) {
        // not a Squadron command: override as unimplemented in worker / pool
        unimplemented.add(SquadronMethodAnnotation.unimplemented(method));
      } else {
        // Squadron command: override to use worker / pool
        commands.add(command);
      }
    }

    commands.sort((a, b) => a.name.compareTo(b.name));
    for (var i = 0; i < commands.length; i++) {
      commands[i].setNum(i + 1);
    }

    yield _generateOperationMap(commands);

    yield _generateServiceInitializer();

    final generators = [
      withFinalizers ? _generateFinalizableWorker : _generateWorker,
      if (_service.pool)
        withFinalizers ? _generateFinalizableWorkerPool : _generateWorkerPool,
    ];

    for (var generator in generators) {
      yield generator(commands, unimplemented);
    }
  }

  /// Operation map
  String _generateOperationMap(List<SquadronMethodAnnotation> commands) => '''
        /// Operations map for ${_service.name}
        mixin $_operationsMixinName on WorkerService {
          Map<int, CommandHandler>? _operations;

          @override
          Map<int, CommandHandler> get operations {
            var ops = _operations;
            if (ops == null) {
              ops = { ${commands.map(_generateCommandHandler).join(',\n')} };
              _operations = ops;
            }
            return ops;
          }

          ${commands.map(_generateCommandIds).join('\n')}
        }
      ''';

  /// Service initializer
  String _generateServiceInitializer() => '''
        /// Service initializer for ${_service.name}
        ${_service.name} $_serviceInitializerName(WorkerRequest startRequest)
            => ${_service.name}(${_service.parameters.deserialize('startRequest')});
      ''';

  /// Worker (without finalization code)
  String _generateWorker(List<SquadronMethodAnnotation> commands,
      List<SquadronMethodAnnotation> unimplemented) {
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

    return '''
        /// Worker for ${_service.name}
        class $_workerClassName
          extends Worker
          implements ${_service.name} {
          
          $_workerClassName($params) : super(\$$activationArgs);

          ${_service.fields.values.map(_generateField).join('\n\n')}

          ${commands.map(_generateWorkerMethod).join('\n\n')}

          ${unimplemented.map(_generateUnimplemented).join('\n\n')}

          ${_service.accessors.map(_generateUnimplementedAcc).join('\n\n')}

          @override
          Map<int, CommandHandler>? _operations;
        }
      ''';
  }

  /// Worker (with finalization code)
  String _generateFinalizableWorker(List<SquadronMethodAnnotation> commands,
      List<SquadronMethodAnnotation> unimplemented) {
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

    return '''
        /// Worker for ${_service.name}
        class _$_workerClassName
          extends Worker
          implements ${_service.name} {
          
          _$_workerClassName($params) : super(\$$activationArgs);

          ${_service.fields.values.map(_generateField).join('\n\n')}

          ${commands.map(_generateWorkerMethod).join('\n\n')}

          ${unimplemented.map(_generateUnimplemented).join('\n\n')}

          ${_service.accessors.map(_generateUnimplementedAcc).join('\n\n')}

          @override
          Map<int, CommandHandler>? _operations;

          final Object _detachToken = Object();
        }

        /// Finalizable worker wrapper for ${_service.name}
        class $_workerClassName implements _$_workerClassName {
          
          $_workerClassName(${params.toStringNoFields()}) : _worker = _$_workerClassName(${params.arguments()}) {
            _finalizer.attach(this, _worker, detach: _worker._detachToken);
          }

          ${_service.fields.values.map((f) => _forwardField(f, '_worker')).join('\n\n')}

          final _$_workerClassName _worker;

          static final Finalizer<_$_workerClassName> _finalizer = Finalizer<_$_workerClassName>((w) {
            try {
              _finalizer.detach(w._detachToken);
              w.stop();
            } catch (ex) {
              // finalizers must not throw
            }
          });

          ${commands.map((cmd) => _forwardMethod(cmd, '_worker')).join('\n\n')}

          ${unimplemented.map((cmd) => _forwardMethod(cmd, '_worker')).join('\n\n')}

          @override
          Map<int, CommandHandler>? _operations;

          @override
          Map<int, CommandHandler> get operations => WorkerService.noOperations;

          ${_service.accessors.map((acc) => _forwardAccessor(acc, '_worker')).join('\n\n')}

          ${workerOverrides.entries.map((e) => _forwardOverride(e.key, '_worker', e.value)).join('\n\n')}
        }
      ''';
  }

  /// Worker pool (without finalization code)
  String _generateWorkerPool(List<SquadronMethodAnnotation> commands,
      List<SquadronMethodAnnotation> unimplemented) {
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

    return '''
        /// Worker pool for ${_service.name}
        class $_workerPoolClassName
          extends WorkerPool<$_workerClassName>
          implements ${_service.name} {

          $_workerPoolClassName($poolParams) : super(
              () => $_workerClassName(${serviceParams.arguments()}),
              ${cs.namedArgument()});

          ${_service.fields.values.map(_generateField).join('\n\n')}

          ${commands.map(_generatePoolMethod).join('\n\n')}

          ${unimplemented.map(_generateUnimplemented).join('\n\n')}

          ${_service.accessors.map(_generateUnimplementedAcc).join('\n\n')}

          @override
          Map<int, CommandHandler>? _operations;
        }
      ''';
  }

  /// Worker (with finalization code)
  String _generateFinalizableWorkerPool(List<SquadronMethodAnnotation> commands,
      List<SquadronMethodAnnotation> unimplemented) {
    var poolParams = _service.parameters.clone();
    var serviceParams = _service.parameters;
    final cs = poolParams.addOptional(
        'concurrencySettings', _squadron.concurrencySettingsTypeName);
    if (_squadron.platformWorkerHookTypeName != null) {
      poolParams.addOptional(
          'platformWorkerHook', _squadron.platformWorkerHookTypeName!);
      serviceParams = serviceParams.clone();
      serviceParams.addOptional(
          'platformWorkerHook', _squadron.platformWorkerHookTypeName!);
    }

    return '''
        /// Worker pool for ${_service.name}
        class _$_workerPoolClassName
          extends WorkerPool<$_workerClassName>
          implements ${_service.name} {

          _$_workerPoolClassName($poolParams) : super(
              () => $_workerClassName(${serviceParams.arguments()}),
              ${cs.namedArgument()});

          ${_service.fields.values.map(_generateField).join('\n\n')}

          ${commands.map(_generatePoolMethod).join('\n\n')}

          ${unimplemented.map(_generateUnimplemented).join('\n\n')}

          ${_service.accessors.map(_generateUnimplementedAcc).join('\n\n')}

          @override
          Map<int, CommandHandler>? _operations;

          final Object _detachToken = Object();
        }

        /// Finalizable worker pool wrapper for ${_service.name}
        class $_workerPoolClassName implements _$_workerPoolClassName {
          
          $_workerPoolClassName(${poolParams.toStringNoFields()}) : _pool = _$_workerPoolClassName(${poolParams.arguments()}) {
            _finalizer.attach(this, _pool, detach: _pool._detachToken);
          }

          ${_service.fields.values.map((f) => _forwardField(f, '_pool')).join('\n\n')}

          final _$_workerPoolClassName _pool;

          static final Finalizer<_$_workerPoolClassName> _finalizer = Finalizer<_$_workerPoolClassName>((p) {
            try {
              _finalizer.detach(p._detachToken);
              p.stop();
            } catch (ex) {
              // finalizers must not throw
            }
          });

          ${commands.map((cmd) => _forwardMethod(cmd, '_pool')).join('\n\n')}

          ${unimplemented.map((cmd) => _forwardMethod(cmd, '_pool')).join('\n\n')}

          @override
          Map<int, CommandHandler>? _operations;

          @override
          Map<int, CommandHandler> get operations => WorkerService.noOperations;

          ${_service.accessors.map((acc) => _forwardAccessor(acc, '_pool')).join('\n\n')}

          ${workerPoolOverrides.entries.map((e) => _forwardOverride(e.key, '_pool', e.value)).join('\n\n')}
        }
        ''';
  }

  /// Command ID
  String _generateCommandIds(SquadronMethodAnnotation cmd) =>
      'static const int ${cmd.id} = ${cmd.num};';

  /// Command handler
  String _generateCommandHandler(SquadronMethodAnnotation cmd) {
    final serviceCall =
        '(this as ${_service.name}).${cmd.name}(${cmd.parameters.deserialize('req')})';
    if (cmd.needsSerialization && !cmd.serializedResult.isIdentity) {
      if (cmd.isStream) {
        return '${cmd.id}: (req) => $serviceCall.${cmd.continuation}((\$res) => ${cmd.serializedResult('\$res')})';
      } else {
        return '${cmd.id}: (req) async => ${cmd.serializedResult('(await $serviceCall)')}';
      }
    } else {
      return '${cmd.id}: (req) => $serviceCall';
    }
  }

  /// Overridden service field
  String _generateField(FieldElement field) => '''
      @override
      ${field.isFinal ? 'final ' : ''}${field.type} ${field.name};
    ''';

  /// Unimplemented member
  String _unimplemented(String declaration, {bool override = false}) => '''
      ${override ? '@override' : ''}
      $declaration => throw UnimplementedError();
    ''';

  /// Unimplemented field/method
  String _generateUnimplemented(SquadronMethodAnnotation cmd) =>
      _unimplemented(cmd.declaration, override: true);

  /// Unimplemented accessor
  String _generateUnimplementedAcc(PropertyAccessorElement acc) {
    final declaration = acc.isGetter
        ? '${acc.returnType} get ${acc.name}'
        : 'set ${acc.name.replaceAll('=', '')}(${acc.returnType} value)';
    return _unimplemented(declaration, override: true);
  }

  /// Service method invocation from worker
  String _generateWorkerMethod(SquadronMethodAnnotation cmd) {
    var deserialize = '';
    if (cmd.needsSerialization && !cmd.deserializedResult.isIdentity) {
      deserialize =
          '.${cmd.continuation}((\$res) => ${cmd.deserializedResult('\$res')})';
    }
    return '''
      @override
      ${cmd.declaration} => ${cmd.workerExecutor}(
            $_operationsMixinName.${cmd.id}, 
            args: [ ${cmd.parameters.serialize()} ], 
            ${cmd.parameters.cancellationToken != null ? 'token: ${cmd.parameters.cancellationToken},' : ''}
            ${cmd.inspectRequest ? 'inspectRequest: true,' : ''}
            ${cmd.inspectResponse ? 'inspectResponse: true,' : ''}
          )$deserialize;
    ''';
  }

  /// Service method invocation from worker pool
  String _generatePoolMethod(SquadronMethodAnnotation cmd) => '''
      @override
      ${cmd.declaration} => ${cmd.poolExecutor}((\$w) => \$w.${cmd.name}(${cmd.parameters.arguments()}));
    ''';

  /// Proxy for service field
  String _forwardField(FieldElement field, String target) {
    if (field.isFinal) {
      return '''
          @override
          ${field.type} get ${field.name} => $target.${field.name};
        ''';
    } else {
      return '''
          @override
          ${field.type} get ${field.name} => $target.${field.name};

          @override
          set ${field.name}(${field.type} value) => $target.${field.name} = value;
        ''';
    }
  }

  /// Proxy for service method
  String _forwardMethod(SquadronMethodAnnotation cmd, String target) {
    return '''
      @override
      ${cmd.declaration} => $target.${cmd.name}(${cmd.parameters.arguments()});
    ''';
  }

  /// Proxy for service accessor
  String _forwardAccessor(PropertyAccessorElement acc, String target) {
    return acc.isGetter
        ? '''
            @override
            ${acc.returnType} get ${acc.name} => $target.${acc.name};
          '''
        : '''
            @override
            set ${acc.name.replaceAll('=', '')}(${acc.returnType} value) => $target.${acc.name}(value);
          ''';
  }

  /// Proxy for base worker/worker pool method
  String _forwardOverride(
      String declaration, String target, String implementation) {
    return '''
      @override
      ${declaration.replaceAll(r'$workerClassName', _workerClassName)} => $target.$implementation;
    ''';
  }

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
