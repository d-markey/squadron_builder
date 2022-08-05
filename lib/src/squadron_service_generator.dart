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

  void appendComments(List<String> code) {
    code.add('// GENERATED CODE - DO NOT MODIFY BY HAND');
    code.add('');
    code.add(
        '// **************************************************************************');
    code.add('// $runtimeType');
    code.add(
        '// **************************************************************************');
    code.add('');
  }

  void generateEntryPoints(
      BuildStep buildStep, SquadronServiceAnnotation service) {
    final code = <String>[];
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

    code.clear();
    if (vmOutput != null) {
      appendComments(code);
      code.add('import \'package:squadron/squadron_service.dart\';');
      code.add('import \'${buildStep.inputId.pathSegments.last}\';');
      code.add('');
      code.add('// VM entry point');
      code.add(
          'void _start(Map command) => run((startRequest) => ${service.name}(), command);');
      code.add('');
      code.add('dynamic get${service.name}Activator() => _start;');
      buildStep.writeAsString(vmOutput, code.join('\n'));
    }

    code.clear();
    if (webOutput != null) {
      appendComments(code);
      code.add('import \'package:squadron/squadron_service.dart\';');
      code.add('import \'${buildStep.inputId.pathSegments.last}\';');
      code.add('');
      code.add('// Web entry point');
      code.add('void main() => run((startRequest) => ${service.name}());');
      final workerUrl = service.baseUrl.isEmpty
          ? '${webOutput.path}.js'
          : '${service.baseUrl}/${webOutput.pathSegments.last}.js';
      code.add('');
      code.add('dynamic get${service.name}Activator() => \'$workerUrl\';');
      buildStep.writeAsString(webOutput, code.join('\n'));
    }

    code.clear();
    if (vmOutput != null && webOutput != null && stubOutput != null) {
      appendComments(code);
      code.add(
          'dynamic get${service.name}Activator() => throw UnimplementedError();');
      buildStep.writeAsString(stubOutput, code.join('\n'));
    }

    code.clear();
    if (activatorOutput != null) {
      if (stubOutput != null && webOutput != null && vmOutput != null) {
        appendComments(code);
        code.add('import \'${stubOutput.pathSegments.last}\'');
        code.add('if (dart.library.js) \'${webOutput.pathSegments.last}\'');
        code.add('if (dart.library.html) \'${webOutput.pathSegments.last}\'');
        code.add('if (dart.library.io) \'${vmOutput.pathSegments.last}\';');
      } else if (vmOutput != null) {
        appendComments(code);
        code.add('import \'${vmOutput.pathSegments.last}\';');
      } else if (webOutput != null) {
        appendComments(code);
        code.add('import \'${webOutput.pathSegments.last}\';');
      }
      code.add('');
      code.add(
          'final \$${service.name}Activator = get${service.name}Activator();');
      buildStep.writeAsString(activatorOutput, code.join('\n'));
    }

    code.clear();
  }

  Iterable<String> generateOperationsMap(
      SquadronServiceAnnotation service) sync* {
    final commands = <SquadronMethodAnnotation>[];
    final unimplemented = <SquadronMethodAnnotation>[];

    for (var method in service.methods.where((m) => !m.isStatic)) {
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

    final code = <String>[];

    code.clear();
    code.add(
        'Map<int, CommandHandler> build${service.name}Operations(${service.name} instance) => {');

    for (var n = 0; n < commands.length; n++) {
      final cmd = commands[n];
      code.add(
          '    ${n + 1}: (r) => instance.${cmd.name}(${cmd.deserializedArguments}),');
    }
    code.add('};');
    yield code.join('\n');

    code.clear();
    code.add('// Worker for ${service.name}');
    code.add(
        'class ${service.name}Worker extends Worker implements ${service.name} {');
    code.add('${service.name}Worker() : super(\$${service.name}Activator);');
    for (var n = 0; n < commands.length; n++) {
      final cmd = commands[n];
      code.add('');
      code.add('@override');
      code.add('${cmd.returnType} ${cmd.name}(${cmd.parameters})');
      code.add(
          '=> ${cmd.workerExecutor}(${n + 1}, args: [ ${cmd.serializedArguments} ], token: ${cmd.cancellationToken ?? 'null'}, inspectRequest: ${cmd.inspectRequest}, inspectResponse: ${cmd.inspectResponse});');
    }

    for (var n = 0; n < unimplemented.length; n++) {
      final cmd = unimplemented[n];
      code.add('');
      code.add('@override');
      code.add('${cmd.returnType} ${cmd.name}(${cmd.parameters})');
      code.add('=> throw UnimplementedError();');
    }

    code.add('}');
    yield code.join('\n');

    if (service.pool) {
      code.clear();
      code.add('// Worker pool for ${service.name}');
      code.add(
          'class ${service.name}WorkerPool extends WorkerPool<${service.name}Worker> implements ${service.name} {');
      code.add(
          '${service.name}WorkerPool({ConcurrencySettings? concurrencySettings}) : super(() => ${service.name}Worker(), concurrencySettings: concurrencySettings);');
      for (var n = 0; n < commands.length; n++) {
        final cmd = commands[n];
        code.add('@override');
        code.add('${cmd.returnType} ${cmd.name}(${cmd.parameters})');
        code.add(
            '=> ${cmd.poolExecutor}((w) => w.${cmd.name}(${cmd.arguments}));');
      }
      for (var n = 0; n < unimplemented.length; n++) {
        final cmd = unimplemented[n];
        code.add('@override');
        code.add('${cmd.returnType} ${cmd.name}(${cmd.parameters})');
        code.add('=> throw UnimplementedError();');
      }
      code.add('}');
      yield code.join('\n');
    }
  }
}
