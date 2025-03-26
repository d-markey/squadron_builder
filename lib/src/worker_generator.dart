import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron.dart' as squadron;
import 'package:squadron/version.dart' as squadron;
import 'package:squadron_builder/src/marshalers/marshaling_context.dart';

import '../version.dart';
import 'assets/worker_assets.dart';
import 'build_step_events.dart';
import 'readers/squadron_service_reader.dart';
import 'types/type_manager.dart';

/// Alias for a code formatting function.
typedef Formatter = String Function(String source, Version languageVersion);

typedef GeneratorContext = ({
  TypeManager typeManager,
  MarshalingContext marshalingContext
});

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
  final _contexts = <BuildStep, GeneratorContext>{};

  @override
  Future<String> generate(LibraryReader library, BuildStep buildStep) async {
    // initialize build step
    final context = _contexts.putIfAbsent(
        buildStep,
        () => (
              typeManager: TypeManager(library.element),
              marshalingContext: MarshalingContext()
            ));

    // generate code
    final code = StringBuffer();
    code.writeln(await super.generate(library, buildStep));
    code.writeln(context.marshalingContext.code);

    // done, trigger code generation for additional assets if any
    _buildStepEventStream.add(BuildStepDoneEvent(buildStep, library.element));

    return code.toString();
  }

  @override
  Stream<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async* {
    final classElt = element;
    if (classElt is! ClassElement) return;

    final context = _contexts[buildStep];
    if (context == null) {
      throw StateError('Missing GeneratorContext for $buildStep');
    }
    context.typeManager.ensureInitialized();
    context.marshalingContext.ensureInitialized(context.typeManager);

    final service = SquadronServiceReader.load(classElt, context);
    if (service == null) return;

    if (_withFinalizers && service.worker) {
      final missingImports = context.typeManager.checkRequiredImports([
        context.typeManager.TReleasable,
        context.typeManager.TCancelationToken,
        context.typeManager.TLogger,
        context.typeManager.TFutureOr
      ]);
      if (missingImports.isNotEmpty) {
        log.warning(
          'To generate finalizable workers, your library is missing the following imports: ${missingImports.join(', ')}',
        );
      }
    }

    final assets = WorkerAssets(buildStep, service, context);

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
      result.mergeWith(newResult);
    }
  }

  void _writeAssetCode(BuildStepDoneEvent done) {
    final result = _results[done.buildStep];
    _contexts.remove(done.buildStep);
    if (result != null) {
      _results.remove(done.buildStep);
      final insertHeader = [_header].followedBy;
      for (var asset in result.assets) {
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
  String toString() => '$runtimeType $version (Squadron ${squadron.version})';
}

String _noFormatting(String source, Version languageVersion) => source;
