import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron_builder/src/annotations/marshallers/marshalling_info.dart';

import 'annotations/squadron_method_annotation.dart';
import 'annotations/squadron_service_annotation.dart';
import '_overrides.dart';

class WorkerAssets {
  WorkerAssets(this.buildStep, this.service, this.formatOutput, {this.header})
      : workerClassName = '${service.name}Worker',
        workerPoolClassName = '${service.name}WorkerPool',
        operationsMixinName = '\$${service.name}Operations',
        serviceInitializerName = '\$${service.name}Initializer',
        serviceActivator = '${service.name}Activator' {
    for (var output in buildStep.allowedOutputs) {
      final path = output.path.toLowerCase();
      if (service.vm && path.endsWith('.vm.g.dart')) {
        _vmOutput = output;
      } else if (service.web && path.endsWith('.web.g.dart')) {
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

  String Function(String source) formatOutput;

  final BuildStep buildStep;
  final SquadronServiceAnnotation service;
  final String? header;

  final String operationsMixinName;
  final String workerClassName;
  final String workerPoolClassName;
  final String serviceInitializerName;
  final String serviceActivator;

  void generateCrossPlatformCode() {
    final output = _xplatOutput;
    if (output != null && _vmOutput != null && _webOutput != null) {
      buildStep.writeAsString(output, formatOutput('''
          ${header ?? defaultFileHeader}

          ${_unimplemented('dynamic \$get$serviceActivator()')}
        '''));
    }
  }

  void generateVmCode(String? logger) {
    final output = _vmOutput;
    if (output != null) {
      final serviceImport = _getRelativePath(buildStep.inputId, output);
      buildStep.writeAsString(output, formatOutput('''
          ${header ?? defaultFileHeader}

          import 'package:squadron/squadron_service.dart';
          import '$serviceImport';

          // VM entry point
          void _start(Map command) => run($serviceInitializerName, command, $logger);

          dynamic \$get$serviceActivator() => _start;
        '''));
    }
  }

  void generateWebCode(String? logger) {
    final output = _webOutput;
    if (output != null) {
      final serviceImport = _getRelativePath(buildStep.inputId, output);
      final workerUrl = service.baseUrl.isEmpty
          ? '${output.path}.js'
          : '${service.baseUrl}/${output.pathSegments.last}.js';
      buildStep.writeAsString(output, formatOutput('''
          ${header ?? defaultFileHeader}

          import 'package:squadron/squadron_service.dart';
          import '$serviceImport';

          // Web entry point
          void main() => run($serviceInitializerName, null, $logger);

          dynamic \$get$serviceActivator() => '$workerUrl';
        '''));
    }
  }

  void generateActivatorCode() {
    final output = _activatorOutput;
    if (output != null) {
      if (_xplatOutput != null && _webOutput != null && _vmOutput != null) {
        final stubImport = _getRelativePath(_xplatOutput!, output);
        final webImport = _getRelativePath(_webOutput!, output);
        final vmImport = _getRelativePath(_vmOutput!, output);
        buildStep.writeAsString(output, formatOutput('''
          ${header ?? defaultFileHeader}

          import '$stubImport'
            if (dart.library.js) '$webImport'
            if (dart.library.html) '$webImport'
            if (dart.library.io) '$vmImport';

          final \$$serviceActivator = \$get$serviceActivator();
        '''));
      } else if (_vmOutput != null) {
        final vmImport = _getRelativePath(_vmOutput!, output);
        buildStep.writeAsString(output, formatOutput('''
          ${header ?? defaultFileHeader}

          import '$vmImport';

          final \$$serviceActivator = \$get$serviceActivator();
        '''));
      } else if (_webOutput != null) {
        final webImport = _getRelativePath(_webOutput!, output);
        buildStep.writeAsString(output, formatOutput('''
          ${header ?? defaultFileHeader}

          import '$webImport';

          final \$$serviceActivator = \$get$serviceActivator();
        '''));
      }
    }
  }

  Iterable<String> generateMapWorkerAndPool(bool withFinalizers) sync* {
    final commands = <SquadronMethodAnnotation>[];
    final unimplemented = <SquadronMethodAnnotation>[];

    for (var method in service.methods) {
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

    yield '''
        // Operations map for ${service.name}
        mixin $operationsMixinName on WorkerService {
          @override
          late final Map<int, CommandHandler> operations = _getOperations(this as ${service.name});

          ${commands.map(_generateCommandIds).join('\n')}

          static Map<int, CommandHandler> _getOperations(${service.name} svc) => {
            ${commands.map(_generateCommandHandler).join(',\n')}
          };
        }
      ''';

    yield '''
        // Service initializer
        ${service.name} $serviceInitializerName(WorkerRequest startRequest)
            => ${_generateServiceInitializer()};
      ''';

    var activationsArgs = serviceActivator;
    if (service.serializedArguments.isNotEmpty) {
      activationsArgs += ', args: [${service.serializedArguments}]';
    }

    if (withFinalizers) {
      yield '''
        // Worker for ${service.name}
        class _$workerClassName
          extends Worker with $operationsMixinName
          implements ${service.name} {
          
          _$workerClassName(${service.parameters}) : super(\$$activationsArgs);

          ${service.fields.values.map(_generateField).join('\n\n')}

          ${commands.map(_generateWorkerMethod).join('\n\n')}

          @override
          Map<int, CommandHandler> get operations => WorkerService.noOperations;

          ${unimplemented.map(_generateUnimplemented).join('\n\n')}

          ${service.accessors.map(_generateUnimplementedAcc).join('\n\n')}

          final Object _detachToken = Object();
        }

        // Finalizable worker wrapper for ${service.name}
        class $workerClassName implements _$workerClassName {
          
          $workerClassName(${service.nonFormalParameters}) : _worker = _$workerClassName(${service.nonFormalArguments}) {
            _finalizer.attach(this, _worker, detach: _worker._detachToken);
          }

          ${service.fields.values.map((f) => _forwardField(f, '_worker')).join('\n\n')}

          final _$workerClassName _worker;

          static final Finalizer<_$workerClassName> _finalizer = Finalizer<_$workerClassName>((w) {
            try {
              _finalizer.detach(w._detachToken);
              w.stop();
            } catch (ex) {
              // finalizers must not throw
            }
          });

          ${commands.map((cmd) => _forwardMethod(cmd, '_worker')).join('\n\n')}

          @override
          Map<int, CommandHandler> get operations => _worker.operations;

          ${unimplemented.map((cmd) => _forwardMethod(cmd, '_worker')).join('\n\n')}

          ${service.accessors.map((acc) => _forwardAccessor(acc, '_worker')).join('\n\n')}

          ${workerOverrides.entries.map((e) => _forwardOverride(e.key, '_worker', e.value)).join('\n\n')}
        }
      ''';
    } else {
      yield '''
        // Worker for ${service.name}
        class $workerClassName
          extends Worker with $operationsMixinName
          implements ${service.name} {
          
          $workerClassName(${service.parameters}) : super(\$$activationsArgs);

          ${service.fields.values.map(_generateField).join('\n\n')}

          ${commands.map(_generateWorkerMethod).join('\n\n')}

          @override
          Map<int, CommandHandler> get operations => WorkerService.noOperations;

          ${unimplemented.map(_generateUnimplemented).join('\n\n')}

          ${service.accessors.map(_generateUnimplementedAcc).join('\n\n')}
        }
      ''';
    }

    if (service.pool) {
      var poolParameters = service.parameters;
      if (poolParameters.isEmpty) {
        poolParameters = '{ConcurrencySettings? concurrencySettings}';
      } else if (poolParameters.endsWith('}')) {
        poolParameters = poolParameters.substring(0, poolParameters.length - 1);
        poolParameters += ', ConcurrencySettings? concurrencySettings}';
      } else if (poolParameters.endsWith(']')) {
        poolParameters = poolParameters.substring(0, poolParameters.length - 1);
        poolParameters += ', ConcurrencySettings? concurrencySettings]';
      } else {
        poolParameters += ', {ConcurrencySettings? concurrencySettings}';
      }

      if (withFinalizers) {
        var poolNonFormalParameters = service.nonFormalParameters;
        var poolNonFormalArguments = service.nonFormalArguments;
        if (poolNonFormalParameters.isEmpty) {
          poolNonFormalParameters =
              '{ConcurrencySettings? concurrencySettings}';
          poolNonFormalArguments = 'concurrencySettings: concurrencySettings';
        } else if (poolNonFormalParameters.endsWith(']')) {
          poolNonFormalParameters = poolNonFormalParameters.substring(
              0, poolNonFormalParameters.length - 1);
          poolNonFormalParameters +=
              ', ConcurrencySettings? concurrencySettings]';
          poolNonFormalArguments += ', concurrencySettings';
        } else if (poolNonFormalParameters.endsWith('}')) {
          poolNonFormalParameters = poolNonFormalParameters.substring(
              0, poolNonFormalParameters.length - 1);
          poolNonFormalParameters +=
              ', ConcurrencySettings? concurrencySettings}';
          poolNonFormalArguments +=
              ', concurrencySettings: concurrencySettings';
        } else {
          poolNonFormalParameters +=
              ', {ConcurrencySettings? concurrencySettings}';
          poolNonFormalArguments +=
              ', concurrencySettings: concurrencySettings';
        }

        yield '''
          // Worker pool for ${service.name}
          class _$workerPoolClassName
            extends WorkerPool<$workerClassName> with $operationsMixinName
            implements ${service.name} {

            _$workerPoolClassName($poolParameters) : super(
                () => $workerClassName(${service.arguments}),
                concurrencySettings: concurrencySettings);

            ${service.fields.values.map(_generateField).join('\n\n')}

            ${commands.map(_generatePoolMethod).join('\n\n')}

            @override
            Map<int, CommandHandler> get operations => WorkerService.noOperations;

            ${unimplemented.map(_generateUnimplemented).join('\n\n')}

            ${service.accessors.map(_generateUnimplementedAcc).join('\n\n')}

            final Object _detachToken = Object();
          }

        // Finalizable worker pool wrapper for ${service.name}
        class $workerPoolClassName implements _$workerPoolClassName {
          
          $workerPoolClassName($poolNonFormalParameters) : _pool = _$workerPoolClassName($poolNonFormalArguments) {
            _finalizer.attach(this, _pool, detach: _pool._detachToken);
          }

          ${service.fields.values.map((f) => _forwardField(f, '_pool')).join('\n\n')}

          final _$workerPoolClassName _pool;

          static final Finalizer<_$workerPoolClassName> _finalizer = Finalizer<_$workerPoolClassName>((p) {
            try {
              _finalizer.detach(p._detachToken);
              p.stop();
            } catch (ex) {
              // finalizers must not throw
            }
          });

          ${commands.map((cmd) => _forwardMethod(cmd, '_pool')).join('\n\n')}

          @override
          Map<int, CommandHandler> get operations => _pool.operations;

          ${unimplemented.map((cmd) => _forwardMethod(cmd, '_pool')).join('\n\n')}

          ${service.accessors.map((acc) => _forwardAccessor(acc, '_pool')).join('\n\n')}

          ${workerPoolOverrides.entries.map((e) => _forwardOverride(e.key, '_pool', e.value)).join('\n\n')}
        }
        ''';
      } else {
        yield '''
          // Worker pool for ${service.name}
          class $workerPoolClassName
            extends WorkerPool<$workerClassName> with $operationsMixinName
            implements ${service.name} {

            $workerPoolClassName($poolParameters) : super(
                () => $workerClassName(${service.arguments}),
                concurrencySettings: concurrencySettings);

            ${service.fields.values.map(_generateField).join('\n\n')}

            ${commands.map(_generatePoolMethod).join('\n\n')}

            @override
            Map<int, CommandHandler> get operations => WorkerService.noOperations;

            ${unimplemented.map(_generateUnimplemented).join('\n\n')}

            ${service.accessors.map(_generateUnimplementedAcc).join('\n\n')}
          }
        ''';
      }
    }
  }

  String _generateServiceInitializer() =>
      '${service.name}(${service.arguments.isEmpty ? '' : service.deserializedArguments})';

  String _generateCommandIds(SquadronMethodAnnotation cmd) =>
      'static const int ${cmd.id} = ${cmd.num};';

  String _generateCommandHandler(SquadronMethodAnnotation cmd) {
    final serviceCall = 'svc.${cmd.name}(${cmd.deserializedArguments})';
    if (cmd.needsSerialization && !cmd.serializedResult.isIdentity) {
      if (cmd.isStream) {
        return '${cmd.id}: ($reqName) => $serviceCall.${cmd.continuation}((\$res) => ${cmd.serializedResult('\$res')})';
      } else {
        return '${cmd.id}: ($reqName) async => ${cmd.serializedResult('(await $serviceCall)')}';
      }
    } else {
      return '${cmd.id}: ($reqName) => $serviceCall';
    }
  }

  String _generateField(FieldElement field) => '''
      @override
      ${field.isFinal ? 'final ' : ''}${field.type} ${field.name};
    ''';

  String _unimplemented(String declaration, {bool override = false}) => '''
      ${override ? '@override' : ''}
      $declaration => throw UnimplementedError();
    ''';

  String _generateUnimplemented(SquadronMethodAnnotation cmd) =>
      _unimplemented(cmd.declaration, override: true);

  String _generateUnimplementedAcc(PropertyAccessorElement acc) {
    final declaration = acc.isGetter
        ? '${acc.returnType} get ${acc.name}'
        : 'set ${acc.name.replaceAll('=', '')}(${acc.returnType} value)';
    return _unimplemented(declaration, override: true);
  }

  String _generateWorkerMethod(SquadronMethodAnnotation cmd) {
    var deserialize = '';
    if (cmd.needsSerialization) {
      deserialize = '(\$res) => ${cmd.deserializedResult('\$res')}';
      if (deserialize != '(\$res) => \$res') {
        deserialize = '.${cmd.continuation}($deserialize)';
      } else {
        deserialize = '';
      }
    }
    return '''
      @override
      ${cmd.declaration} => ${cmd.workerExecutor}(
            $operationsMixinName.${cmd.id}, 
            args: [ ${cmd.serializedArguments} ], 
            token: ${cmd.cancellationToken}, 
            inspectRequest: ${cmd.inspectRequest}, 
            inspectResponse: ${cmd.inspectResponse},
          )$deserialize;
    ''';
  }

  String _generatePoolMethod(SquadronMethodAnnotation cmd) => '''
      @override
      ${cmd.declaration} => ${cmd.poolExecutor}((\$w) => \$w.${cmd.name}(${cmd.arguments}));
    ''';

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

  String _forwardMethod(SquadronMethodAnnotation cmd, String target) {
    return '''
      @override
      ${cmd.declaration} => $target.${cmd.name}(${cmd.arguments});
    ''';
  }

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

  String _forwardOverride(
      String declaration, String target, String implementation) {
    return '''
      @override
      ${declaration.replaceAll(r'$workerClassName', workerClassName)} => $target.$implementation;
    ''';
  }

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
