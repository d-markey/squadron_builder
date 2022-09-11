import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations/squadron_method_annotation.dart';
import 'annotations/squadron_service_annotation.dart';

class SquadronServiceGenerator extends GeneratorForAnnotation<SquadronService> {
  @override
  Iterable<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final classElt = element;
    if (classElt is! ClassElement) return const [];
    // implementation moved to specific methods to facilitate unit tests
    final service = SquadronServiceAnnotation.load(classElt)!;
    generateEntryPoints(buildStep, service);
    return generateOperationsMap(service);
  }

  String get _generatedCodeHeader => '''
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// $runtimeType
// **************************************************************************
''';

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

    if (vmOutput != null) {
      final code = _generateVmCode(serviceImport, service.name);
      buildStep.writeAsString(vmOutput, code);
    }

    if (webOutput != null) {
      final workerUrl = service.baseUrl.isEmpty
          ? '${webOutput.path}.js'
          : '${service.baseUrl}/${webOutput.pathSegments.last}.js';
      final code = _generateWebCode(serviceImport, service.name, workerUrl);
      buildStep.writeAsString(webOutput, code);
    }

    if (vmOutput != null && webOutput != null && stubOutput != null) {
      final code = _generateStubCode(service.name);
      buildStep.writeAsString(stubOutput, code);
    }

    if (activatorOutput != null) {
      final code =
          _generateActivatorCode(stubOutput, vmOutput, webOutput, service.name);
      buildStep.writeAsString(activatorOutput, code);
    }
  }

  String _generateVmCode(String serviceImport, String serviceName) =>
      '''$_generatedCodeHeader
import 'package:squadron/squadron_service.dart';
import '$serviceImport';

// VM entry point
void _start(Map command) {
  run((startRequest) => $serviceName(), command);
}

dynamic get${serviceName}Activator() => _start;
''';

  String _generateWebCode(
          String serviceImport, String serviceName, String workerUrl) =>
      '''$_generatedCodeHeader
import 'package:squadron/squadron_service.dart';
import '$serviceImport';

// Web entry point
void main() {
  run((startRequest) => $serviceName());
}

dynamic get${serviceName}Activator() => '$workerUrl';
''';

  String _generateStubCode(String serviceName) => '''$_generatedCodeHeader
dynamic get${serviceName}Activator() => throw UnimplementedError();
''';

  String _generateActivatorCode(AssetId? stubOutput, AssetId? vmOutput,
      AssetId? webOutput, String serviceName) {
    if (stubOutput != null && webOutput != null && vmOutput != null) {
      return '''$_generatedCodeHeader
import '${stubOutput.pathSegments.last}'
  if (dart.library.js) '${webOutput.pathSegments.last}'
  if (dart.library.html) '${webOutput.pathSegments.last}'
  if (dart.library.io) '${vmOutput.pathSegments.last}';

final \$${serviceName}Activator = get${serviceName}Activator();
''';
    } else if (vmOutput != null) {
      return '''$_generatedCodeHeader
import '${vmOutput.pathSegments.last}';

final \$${serviceName}Activator = get${serviceName}Activator();
''';
    } else if (webOutput != null) {
      return '''$_generatedCodeHeader
import '${webOutput.pathSegments.last}';

final \$${serviceName}Activator = get${serviceName}Activator();
''';
    } else {
      // should never happen
      return _generatedCodeHeader;
    }
  }

  Iterable<String> generateOperationsMap(
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
      commands[i].setId(i + 1);
    }

    yield '''// Operations map for $serviceName
Map<int, CommandHandler> build${serviceName}Operations($serviceName instance) => {
  ${commands.map((cmd) => '''
    ${cmd.id}: (r) => instance.${cmd.name}(${cmd.deserializedArguments}),''').join()}
};

// Worker for $serviceName
class ${serviceName}Worker extends Worker implements $serviceName {
  ${serviceName}Worker() : super(\$${serviceName}Activator);

  ${commands.map((cmd) => '''
  @override
  ${cmd.returnType} ${cmd.name}(${cmd.parameters})
    => ${cmd.workerExecutor}(
        ${cmd.id}, 
        args: [ ${cmd.serializedArguments} ], 
        token: ${cmd.cancellationToken}, 
        inspectRequest: ${cmd.inspectRequest}, 
        inspectResponse: ${cmd.inspectResponse},
      )${cmd.needsSerialization ? '.then((res) => res.toJson())' : ''};''').join('\n')}

  ${unimplemented.map((cmd) => '''
  @override
  ${cmd.returnType} ${cmd.name}(${cmd.parameters})
    => throw UnimplementedError();''').join('\n')}
}
''';

    if (service.pool) {
      yield '''// Worker pool for ${service.name}
class ${service.name}WorkerPool extends WorkerPool<${service.name}Worker> implements ${service.name} {
  ${service.name}WorkerPool({ConcurrencySettings? concurrencySettings}) : super(
    () => ${service.name}Worker(),
    concurrencySettings: concurrencySettings
  );
  
  ${commands.map((cmd) => '''
  @override
  ${cmd.returnType} ${cmd.name}(${cmd.parameters})
    => ${cmd.poolExecutor}((w) => w.${cmd.name}(${cmd.arguments}));''').join('\n')}

  ${unimplemented.map((cmd) => '''
  @override
  ${cmd.returnType} ${cmd.name}(${cmd.parameters})
    => throw UnimplementedError();''').join('\n')}
}
''';
    }
  }
}
