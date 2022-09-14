import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations/squadron_method_annotation.dart';
import 'annotations/squadron_service_annotation.dart';

class SquadronWorkerGenerator extends GeneratorForAnnotation<SquadronService> {
  @override
  Iterable<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final classElt = element;
    if (classElt is! ClassElement) return const [];
    // implementation moved to specific methods to facilitate unit tests
    final service = SquadronServiceAnnotation.load(classElt)!;
    final workerCode = generateMapWorkerAndPool(service);
    generateEntryPoints(buildStep, service);
    return workerCode;
  }

  void generateEntryPoints(
      BuildStep buildStep, SquadronServiceAnnotation service) {
    AssetId? vmOutput;
    AssetId? webOutput;
    AssetId? stubOutput;
    AssetId? activatorOutput;

    for (var output in buildStep.allowedOutputs) {
      final path = output.path.toLowerCase();
      if (service.vm && path.endsWith('.vm.g.dart')) {
        vmOutput = output;
      } else if (service.web && path.endsWith('.web.g.dart')) {
        webOutput = output;
      } else if (path.endsWith('.stub.g.dart')) {
        stubOutput = output;
      } else if (path.endsWith('.activator.g.dart')) {
        activatorOutput = output;
      }
    }

    final serviceImport = buildStep.inputId.pathSegments.last;
    final header = _generatedCodeHeader();

    if (vmOutput != null) {
      final code = _generateVmCode(serviceImport, service, header);
      buildStep.writeAsString(vmOutput, code);
    }

    if (webOutput != null) {
      final workerUrl = service.baseUrl.isEmpty
          ? '${webOutput.path}.js'
          : '${service.baseUrl}/${webOutput.pathSegments.last}.js';
      final code = _generateWebCode(serviceImport, service, workerUrl, header);
      buildStep.writeAsString(webOutput, code);
    }

    if (vmOutput != null && webOutput != null && stubOutput != null) {
      final code = _generateStubCode(service.name, header);
      buildStep.writeAsString(stubOutput, code);
    }

    if (activatorOutput != null) {
      final code = _generateActivatorCode(
          stubOutput, vmOutput, webOutput, service.name, header);
      buildStep.writeAsString(activatorOutput, code);
    }
  }

  String _generatedCodeHeader() => '''
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// $runtimeType
// **************************************************************************
''';

  static String _generateStubCode(String serviceName, String header) =>
      '''$header
dynamic \$get${serviceName}Activator() => throw UnimplementedError();
''';

  static String _generateVmCode(String serviceImport,
          SquadronServiceAnnotation service, String header) =>
      '''$header
import 'package:squadron/squadron_service.dart';
import '$serviceImport';

// VM entry point
void _start(Map command) => run(\$${service.name}Initializer, command);

dynamic \$get${service.name}Activator() => _start;
''';

  static String _generateWebCode(String serviceImport,
          SquadronServiceAnnotation service, String workerUrl, String header) =>
      '''$header
import 'package:squadron/squadron_service.dart';
import '$serviceImport';

// Web entry point
void main() => run(\$${service.name}Initializer);

dynamic \$get${service.name}Activator() => '$workerUrl';
''';

  static String _generateActivatorCode(AssetId? stubOutput, AssetId? vmOutput,
      AssetId? webOutput, String serviceName, String header) {
    if (stubOutput != null && webOutput != null && vmOutput != null) {
      return '''$header
import '${stubOutput.pathSegments.last}'
  if (dart.library.js) '${webOutput.pathSegments.last}'
  if (dart.library.html) '${webOutput.pathSegments.last}'
  if (dart.library.io) '${vmOutput.pathSegments.last}';

final \$${serviceName}Activator = \$get${serviceName}Activator();
''';
    } else if (vmOutput != null) {
      return '''$header
import '${vmOutput.pathSegments.last}';

final \$${serviceName}Activator = \$get${serviceName}Activator();
''';
    } else if (webOutput != null) {
      return '''$header
import '${webOutput.pathSegments.last}';

final \$${serviceName}Activator = \$get${serviceName}Activator();
''';
    } else {
      // should never happen
      return header;
    }
  }

  static Iterable<String> generateMapWorkerAndPool(
      SquadronServiceAnnotation service) sync* {
    final serviceName = service.name;
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

    yield '''// Operations map for $serviceName
mixin \$${serviceName}Operations on WorkerService {
  @override
  late final Map<int, CommandHandler> operations =
      _getOperations(this as $serviceName);

  ${commands.map(_generateCommandIds).join('\n')}

  static Map<int, CommandHandler> _getOperations($serviceName svc) => {
    ${commands.map(_generateCommandHandler).join('\n\n')}
  };
}''';

    yield '''// Service initializer
$serviceName \$${serviceName}Initializer(WorkerRequest startRequest)
    => ${_generateServiceInitializer(service)};
''';

    yield '''// Worker for $serviceName
class ${serviceName}Worker extends Worker
    with \$${serviceName}Operations
    implements $serviceName {
  ${serviceName}Worker(${service.parameters}) : super(\$${serviceName}Activator${service.serializedArguments.isEmpty ? '' : ', args: [${service.serializedArguments}]'});

${commands.map((cmd) => _generateWorkerMethod(serviceName, cmd)).join('\n\n')}

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

${unimplemented.map(_generateUnimplemented).join('\n\n')}

${service.accessors.map(_generateUnimplementedAcc).join('\n\n')}
}
''';

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

      yield '''// Worker pool for ${service.name}
class ${service.name}WorkerPool extends WorkerPool<${service.name}Worker>
    with \$${serviceName}Operations
    implements ${service.name} {
  ${service.name}WorkerPool($poolParameters) : super(
    () => ${service.name}Worker(${service.arguments}),
    concurrencySettings: concurrencySettings
  );
  
${commands.map(_generatePoolMethod).join('\n\n')}

  @override
  Map<int, CommandHandler> get operations => WorkerService.noOperations;

${unimplemented.map(_generateUnimplemented).join('\n\n')}

${service.accessors.map(_generateUnimplementedAcc).join('\n\n')}
}
''';
    }
  }

  static String _generateServiceInitializer(SquadronServiceAnnotation service) {
    if (service.arguments.isEmpty) {
      return '${service.name}()';
    } else {
      return '${service.name}(${service.deserializedArguments})';
    }
  }

  static String _generateCommandIds(SquadronMethodAnnotation cmd) =>
      'static const int ${cmd.id} = ${cmd.num};';

  static String _generateCommandHandler(SquadronMethodAnnotation cmd) {
    if (cmd.isStream) {
      return '''
    ${cmd.id}: (r) => svc.${cmd.name}(${cmd.deserializedArguments})
      ${cmd.needsSerialization ? '.${cmd.continuation}((res) => ${cmd.serializedResult('res')})' : ''},''';
    } else if (cmd.needsSerialization) {
      return '''
    ${cmd.id}: (r) async {
      final res = await svc.${cmd.name}(${cmd.deserializedArguments});
      return ${cmd.serializedResult('res')};
    },''';
    } else {
      return '''
    ${cmd.id}: (r) => svc.${cmd.name}(${cmd.deserializedArguments}),''';
    }
  }

  static String _generateUnimplemented(SquadronMethodAnnotation cmd) => '''
  @override
  ${cmd.returnType} ${cmd.name}(${cmd.parameters})
    => throw UnimplementedError();''';

  static String _generateUnimplementedAcc(PropertyAccessorElement acc) =>
      acc.isGetter
          ? '''
  @override
  ${acc.returnType} get ${acc.name}
    => throw UnimplementedError();'''
          : '''
  @override
  set ${acc.name.replaceAll('=', '')}(${acc.returnType} value)
    => throw UnimplementedError();''';

  static String _generateWorkerMethod(
          String serviceName, SquadronMethodAnnotation cmd) =>
      '''
  @override
  ${cmd.returnType} ${cmd.name}(${cmd.parameters})
    => ${cmd.workerExecutor}(
        \$${serviceName}Operations.${cmd.id}, 
        args: [ ${cmd.serializedArguments} ], 
        token: ${cmd.cancellationToken}, 
        inspectRequest: ${cmd.inspectRequest}, 
        inspectResponse: ${cmd.inspectResponse},
      )${cmd.needsSerialization ? '.${cmd.continuation}((res) => ${cmd.deserializedResult('res')})' : ''};''';

  static String _generatePoolMethod(SquadronMethodAnnotation cmd) => '''
  @override
  ${cmd.returnType} ${cmd.name}(${cmd.parameters})
    => ${cmd.poolExecutor}((w) => w.${cmd.name}(${cmd.arguments}));''';
}
