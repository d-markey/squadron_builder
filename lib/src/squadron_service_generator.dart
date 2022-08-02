import 'dart:io';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations/squadron_method_annotation.dart';
import 'annotations/squadron_service_annotation.dart';

class SquadronServiceGenerator extends GeneratorForAnnotation<SquadronService> {
  SquadronServiceGenerator() {
    stdout.write('SquadronServiceGenerator ready');
  }

  @override
  Iterable<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final classElt = element;
    if (classElt is! ClassElement) return const [];
    // implementation moved to specific methods to facilitate unit tests
    final service = SquadronServiceAnnotation.load(classElt)!;
    generateEntryPoints(buildStep, classElt, service);
    return generateOperationsMap(classElt, generatePool: service.pool);
  }

  void generateEntryPoints(BuildStep buildStep, ClassElement classElt,
      SquadronServiceAnnotation service) {
    AssetId? vmOutput;
    AssetId? webOutput;
    AssetId? xplatOutput;
    AssetId? activatorOutput;

    for (var output in buildStep.allowedOutputs) {
      final path = output.path.toLowerCase();
      if (service.vm && path.endsWith('.vm.g.dart')) {
        vmOutput = output;
      } else if (service.web && path.endsWith('.web.g.dart')) {
        webOutput = output;
      } else if (path.endsWith('.xplat.g.dart')) {
        xplatOutput = output;
      } else if (path.endsWith('.activator.g.dart')) {
        activatorOutput = output;
      }
    }

    if (vmOutput != null) {
      final code = <String>[];
      code.add('import \'package:squadron/squadron_service.dart\';');
      code.add('import \'${buildStep.inputId.pathSegments.last}\';');
      code.add('// VM entry point');
      code.add(
          'void _start(Map command) => run((startRequest) => ${classElt.name}(), command);');
      code.add('dynamic get${classElt.name}Activator() => _start;');
      buildStep.writeAsString(vmOutput, code.join('\n'));
    }

    if (webOutput != null) {
      final code = <String>[];
      code.add('import \'package:squadron/squadron_service.dart\';');
      code.add('import \'${buildStep.inputId.pathSegments.last}\';');
      code.add('// Web entry point');
      code.add('void main() => run((startRequest) => ${classElt.name}());');
      final workerUrl = service.baseUrl.isEmpty
          ? '${webOutput.path}.js'
          : '${service.baseUrl}/${webOutput.pathSegments.last}.js';
      code.add('dynamic get${classElt.name}Activator() => \'$workerUrl\';');
      buildStep.writeAsString(webOutput, code.join('\n'));
    }

    if (vmOutput != null && webOutput != null && xplatOutput != null) {
      final code = <String>[];
      code.add('dynamic get${classElt.name}Activator() {');
      code.add('throw UnimplementedError();');
      code.add('}');
      buildStep.writeAsString(xplatOutput, code.join('\n'));
    }

    if (activatorOutput != null) {
      final code = <String>[];
      if (xplatOutput != null && webOutput != null && vmOutput != null) {
        code.add('import \'${xplatOutput.pathSegments.last}\'');
        code.add('if (dart.library.js) \'${webOutput.pathSegments.last}\'');
        code.add('if (dart.library.html) \'${webOutput.pathSegments.last}\'');
        code.add('if (dart.library.io) \'${vmOutput.pathSegments.last}\';');
      } else if (vmOutput != null) {
        code.add('import \'${vmOutput.pathSegments.last}\';');
      } else if (webOutput != null) {
        code.add('import \'${webOutput.pathSegments.last}\';');
      }
      code.add(
          'final \$${classElt.name}Activator = get${classElt.name}Activator();');
      buildStep.writeAsString(activatorOutput, code.join('\n'));
    }
  }

  Iterable<String> generateOperationsMap(ClassElement classElt,
      {required bool generatePool}) sync* {
    final commands = <SquadronMethodAnnotation>[];
    final unimplemented = <SquadronMethodAnnotation>[];

    for (var m in classElt.methods) {
      // load command info
      final command = SquadronMethodAnnotation.load(m);
      if (m.name.startsWith('_') || command == null) {
        // not a Squadron command: override as unimplemented in worker / pool
        unimplemented.add(SquadronMethodAnnotation.unimplemented(m));
      } else {
        // Squadron command: override to use worker / pool
        commands.add(command);
      }
    }

    commands.sort((a, b) => a.method.name.compareTo(b.method.name));

    final code = <String>[];

    code.clear();
    code.add(
        'Map<int, CommandHandler> build${classElt.name}Operations(${classElt.name} instance) => {');

    for (var n = 0; n < commands.length; n++) {
      final cmd = commands[n];
      code.add(
          '    ${n + 1}: (r) => instance.${cmd.method.name}(${cmd.deserializedArguments}),');
    }
    code.add('};');
    yield code.join('\n');

    code.clear();
    code.add(
        'class ${classElt.name}Worker extends Worker implements ${classElt.name} {');
    code.add('${classElt.name}Worker() : super(\$${classElt.name}Activator);');
    for (var n = 0; n < commands.length; n++) {
      final cmd = commands[n];
      code.add('@override');
      code.add(
          '${cmd.method.returnType} ${cmd.method.name}(${cmd.parameters})');
      code.add(
          '=> ${cmd.workerExecutor}(${n + 1}, args: [ ${cmd.serializedArguments} ]);');
    }

    for (var n = 0; n < unimplemented.length; n++) {
      final cmd = unimplemented[n];
      code.add('@override');
      code.add(
          '${cmd.method.returnType} ${cmd.method.name}(${cmd.parameters})');
      code.add('=> throw UnimplementedError();');
    }

    code.add('}');
    yield code.join('\n');

    if (generatePool) {
      code.clear();
      code.add(
          'class ${classElt.name}WorkerPool extends WorkerPool<${classElt.name}Worker> implements ${classElt.name} {');
      code.add(
          '${classElt.name}WorkerPool({ConcurrencySettings? concurrencySettings}) : super(() => ${classElt.name}Worker(), concurrencySettings: concurrencySettings);');
      for (var n = 0; n < commands.length; n++) {
        final cmd = commands[n];
        code.add('@override');
        code.add(
            '${cmd.method.returnType} ${cmd.method.name}(${cmd.parameters})');
        code.add(
            '=> ${cmd.poolExecutor}((w) => w.${cmd.method.name}(${cmd.arguments}));');
      }
      for (var n = 0; n < unimplemented.length; n++) {
        final cmd = unimplemented[n];
        code.add('@override');
        code.add(
            '${cmd.method.returnType} ${cmd.method.name}(${cmd.parameters})');
        code.add('=> throw UnimplementedError();');
      }
      code.add('}');
      yield code.join('\n');
    }
  }
}
