import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron.dart' as squadron;
import 'package:squadron_builder/src/marshalers/serialization_context.dart';

import '../version.dart';
import 'assets/worker_assets.dart';
import 'build_step_events.dart';
import 'readers/squadron_service_reader.dart';
import 'types/type_manager.dart';

/// Alias for a code formatting function.
typedef Formatter = String Function(String source, Version languageVersion);

/// Code generator for Squadron workers.
class WorkerGenerator extends GeneratorForAnnotation<squadron.SquadronService> {
  WorkerGenerator({Formatter? formatOutput, bool withFinalizers = false})
      : _formatOutput = formatOutput ?? _noFormatting,
        _withFinalizers = withFinalizers {
    _buildStepEventStream.stream.listen(_process);
  }

  late final String _header = '''
      // GENERATED CODE - DO NOT MODIFY BY HAND
      
      // **************************************************************************
      // Generator: $this
      // **************************************************************************
      ''';

  final bool _withFinalizers;
  final Formatter _formatOutput;

  final _buildStepEventStream = StreamController<BuildStepEvent>();

  final _results = <BuildStep, BuildStepCodeEvent>{};

  final _typeManagers = <BuildStep, TypeManager>{};
  final _contexts = <BuildStep, SerializationContext>{};

  @override
  Future<String> generate(LibraryReader library, BuildStep buildStep) async {
    log.info(
        'BuildStep ${buildStep.hashCode.hex} for ${buildStep.inputId.path}');
    // get a typemanager for the library
    final typeManager = _typeManagers.putIfAbsent(
        buildStep, () => TypeManager(library.element));

    final context = _contexts.putIfAbsent(
        buildStep, () => SerializationContext('_\$X', typeManager));

    // generate code
    log.fine('   Generating code...');
    var code = (await super.generate(library, buildStep)).trim();

    if (code.isNotEmpty) {
      final n = context.count;
      log.fine('   Adding $n converter${(n == 1) ? '' : 's'}...');
      code += '\n\n${context.code}';
    }

    // done, trigger code generation for additional assets if any
    _buildStepEventStream.add(BuildStepDoneEvent(buildStep, library.element));

    return code;
  }

  @override
  Stream<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) async* {
    final classElt = element;
    if (classElt is! ClassElement) return;

    final typeManager = _typeManagers[buildStep];
    if (typeManager == null) {
      throw StateError('TypeManager not found for build step $buildStep');
    }

    final context = _contexts[buildStep];
    if (context == null) {
      throw StateError(
          'SerializationContext not found for build step $buildStep');
    }

    final service = SquadronServiceReader.load(classElt, typeManager, context);
    if (service == null) return;

    log.fine('   Worker/WorkerPool generation started for ${classElt.name}...');

    typeManager.initialize();

    if (_withFinalizers) {
      final missingImports = typeManager.checkRequiredImports([
        typeManager.TReleasable,
        typeManager.TCancelationToken,
        typeManager.TLogger,
        typeManager.TFutureOr
      ]);
      if (missingImports.isNotEmpty) {
        log.warning(
          'To generate finalizable workers, your library is missing the following imports: ${missingImports.join(', ')}',
        );
      }
    }

    final assets = WorkerAssets(buildStep, service);

    final codeEvent = BuildStepCodeEvent(buildStep, classElt);
    assets.generateVmCode(codeEvent);
    assets.generateWebCode(codeEvent);
    assets.generateCrossPlatformCode(codeEvent);
    assets.generateActivatorCode(codeEvent);
    _buildStepEventStream.add(codeEvent);

    yield* assets.generateWorkerAndPool(_withFinalizers);
  }

  void _process(BuildStepEvent event) {
    if (event is BuildStepCodeEvent) {
      _registerAssetCode(event);
    } else if (event is BuildStepDoneEvent) {
      _writeAssetCode(event);
    } else {
      log.warning('Discarding unknown build step event ${event.runtimeType}');
    }
  }

  void _registerAssetCode(BuildStepCodeEvent newResult) {
    final result = _results[newResult.buildStep];
    if (result == null) {
      // first result: register
      _results[newResult.buildStep] = newResult;
    } else {
      // merge additional results as they come through
      log.info(
          'new result for ${newResult.buildStep} ${newResult.buildStep.hashCode.hex}');
      result.mergeWith(newResult);
    }
  }

  void _writeAssetCode(BuildStepDoneEvent done) {
    final result = _results[done.buildStep];
    _typeManagers.remove(done.buildStep);
    if (result != null) {
      log.fine(
          '   Worker/WorkerPool generation completed for ${done.buildStep.inputId.path}');
      _results.remove(done.buildStep);
      final insertHeader = [_header].followedBy;
      for (var asset in result.assets) {
        log.fine('      Generating code for additional asset ${asset.path}...');
        var code = insertHeader(result.getCode(asset)).join('\n\n');
        try {
          code = _formatOutput(code, done.languageVersion);
        } catch (ex) {
          log.severe(
              'An exception occurred while formatting code for ${asset.path}: $ex');
        }
        result.buildStep.writeAsString(asset, code);
      }
    }
  }

  @override
  String toString() => '$runtimeType $version';
}

String _noFormatting(String source, Version languageVersion) => source;
