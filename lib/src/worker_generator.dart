import 'dart:async';

import 'package:build/build.dart';
import 'package:meta/meta.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron.dart' as squadron;
import 'package:squadron/version.dart' as squadron;

import '../version.dart';
import '_analyzer_helpers.dart';
import '_helpers.dart';
import 'assets/worker_assets.dart';
import 'build_step_events.dart';
import 'marshalers/marshaling_context.dart';
import 'readers/squadron_service_reader.dart';
import 'types/type_manager.dart';

/// Alias for a code formatting function.
typedef Formatter = String Function(String source, Version languageVersion);

class GeneratorContext {
  GeneratorContext({
    required this.typeManager,
    required this.marshalingContext,
  });

  final TypeManager typeManager;
  final MarshalingContext marshalingContext;
}

/// Code generator for Squadron workers.
class WorkerGenerator extends GeneratorForAnnotation<squadron.SquadronService> {
  WorkerGenerator({Formatter? formatOutput, bool withFinalizers = false})
    : _testing = false,
      _formatOutput = formatOutput ?? _noFormatting,
      _withFinalizers = withFinalizers {
    _buildStepEventStream.stream.listen(_process);
  }

  WorkerGenerator._test({Formatter? formatOutput, bool withFinalizers = false})
    : _testing = true,
      _formatOutput = formatOutput ?? _noFormatting,
      _withFinalizers = withFinalizers {
    _buildStepEventStream.stream.listen(_process);
  }

  String get _generatedCode => '// GENERATED CODE - DO NOT MODIFY BY HAND';

  String _getHeader() => '''
      // **************************************************************************
      // Generator: $this
      // Generated: ${DateTime.now().toUtc()}
      // **************************************************************************
      ''';

  final bool _testing;

  final bool _withFinalizers;
  final Formatter _formatOutput;

  final _buildStepEventStream = StreamController<BuildStepEvent>();

  final _results = <BuildStep, BuildStepCodeEvent>{};
  final _contexts = <BuildStep, GeneratorContext>{};

  GeneratorContext _initializeContext(
    BuildStep buildStep,
    LibraryElement lib,
  ) => _contexts.putIfAbsent(
    buildStep,
    () => GeneratorContext(
      typeManager: TypeManager(lib),
      marshalingContext: MarshalingContext(),
    ),
  );

  @override
  Future<String> generate(LibraryReader library, BuildStep buildStep) async {
    // initialize context for this build step
    final context = _initializeContext(buildStep, library.element);
    final languageVersion = library.element.languageVersion.package;

    // generate code
    final code = StringBuffer();
    if (_testing) {
      final x = buildStep.allowedOutputs.first.relativePathTo(
        buildStep.inputId,
      );
      code.writeln('$_generatedCode\n\n');
      code.writeln('part of \'$x\';\n\n');
      code.writeln('${_getHeader()}\n\n');
    }
    code.writeln(await super.generate(library, buildStep));
    code.writeln(context.marshalingContext.code);

    // done, trigger code generation for additional assets if any
    final finalCode = _formatOutput(code.toString(), languageVersion);
    final done = BuildStepDoneEvent(buildStep, languageVersion);
    _buildStepEventStream.add(done);

    // wait for complete generation of additional assets...
    await done.future;

    // return the generated code!
    return finalCode;
  }

  @override
  Stream<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async* {
    final classElt = element;
    if (classElt is! ClassElement) return;

    final library = classElt.library;

    var context = _contexts[buildStep];
    if (context == null && _testing) {
      context = _initializeContext(buildStep, library);
    }
    if (context == null) {
      throw InvalidGenerationSourceError(
        'Missing GeneratorContext for $buildStep (${library.path})',
      );
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
        context.typeManager.TFutureOr,
      ]);
      if (missingImports.isNotEmpty) {
        log.warning(
          'Generation of finalizable workers in library "${library.path}" requires the following imports: ${missingImports.join(', ')}',
        );
      }
    }

    final assets = WorkerAssets(buildStep, service, context);

    final codeEvent = BuildStepCodeEvent(buildStep, library.path);
    assets.generateVmCode(codeEvent);
    assets.generateWebCode(codeEvent);
    assets.generateCrossPlatformCode(codeEvent);
    assets.generateActivatorCode(codeEvent);
    _buildStepEventStream.add(codeEvent);

    yield* assets.generateWorkerAndPool(_withFinalizers);
  }

  Future<void> _process(BuildStepEvent event) async {
    if (event is BuildStepCodeEvent) {
      _registerAssetCode(event);
    } else if (event is BuildStepDoneEvent) {
      try {
        await _writeAssetCode(event);
        event.success();
      } catch (ex, st) {
        event.failure(ex, st);
      }
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

  Future<void> _writeAssetCode(BuildStepDoneEvent done) async {
    final result = _results[done.buildStep];
    _contexts.remove(done.buildStep);
    if (result != null) {
      _results.remove(done.buildStep);
      final insertHeader = [_generatedCode, _getHeader()].followedBy;
      for (var asset in result.assets) {
        var code = insertHeader(result.getCode(asset)).join('\n\n');
        try {
          code = _formatOutput(code, done.languageVersion);
        } catch (ex) {
          log.severe(
            'An exception occurred while formatting code for ${asset.path}: $ex',
          );
        }
        await result.buildStep.writeAsString(asset, code);
      }
    }
  }

  @override
  String toString() => '$runtimeType $version (Squadron ${squadron.version})';
}

String _noFormatting(String source, Version languageVersion) => source;

@internal
WorkerGenerator getTestWorkerGenerator({
  Formatter? formatOutput,
  bool withFinalizers = false,
}) => WorkerGenerator._test(
  formatOutput: formatOutput,
  withFinalizers: withFinalizers,
);
