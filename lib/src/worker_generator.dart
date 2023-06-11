import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations/squadron_library.dart';
import 'annotations/squadron_service_annotation.dart';
import 'build_step_events.dart';
import 'worker_assets.dart';

typedef Formatter = String Function(String source);

class WorkerGenerator extends GeneratorForAnnotation<SquadronService> {
  WorkerGenerator(
      {this.formatOutput = _noFormatting, this.withFinalizers = false}) {
    _buildStepEventStream.stream.listen(_process);
  }

  static const version = '2.3.0';

  late final String header = '''
      // GENERATED CODE - DO NOT MODIFY BY HAND
      
      // **************************************************************************
      // Generator: $this
      // **************************************************************************
      ''';

  final bool withFinalizers;
  final Formatter formatOutput;

  final _buildStepEventStream = StreamController<BuildStepEvent>();

  final _results = <BuildStep, BuildStepCodeEvent>{};

  FutureOr<void> _process(BuildStepEvent event) {
    if (event is BuildStepCodeEvent) {
      _registerAssetCode(event);
    } else if (event is BuildStepDoneEvent) {
      return _writeAssetCode(event);
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
    if (result != null) {
      _results.remove(done.buildStep);
      final insertHeader = [header].followedBy;
      for (var asset in result.assets) {
        try {
          await result.buildStep.writeAsString(asset,
              formatOutput(insertHeader(result.getCode(asset)).join('\n\n')));
        } catch (ex) {
          log.severe(
              'An exception occurred while generating ${asset.uri}: $ex');
        }
      }
    }
    done.finished();
  }

  SquadronLibrary? _squadron;

  @override
  Future<String> generate(LibraryReader library, BuildStep buildStep) async {
    // load Squadron main library
    _squadron = await SquadronLibrary.load(library.element.session);

    // generate code
    final result = await super.generate(library, buildStep);

    // success, trigger code generation for additional assets associated to this libreay
    final event = BuildStepDoneEvent(buildStep);
    _buildStepEventStream.add(event);
    await event.complete;

    // return result
    return result;
  }

  @override
  Stream<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) async* {
    final classElt = element;
    if (classElt is! ClassElement) return;

    // implementation moved to specific methods to facilitate unit tests
    final service = SquadronServiceAnnotation.load(classElt)!;

    final assets = WorkerAssets(buildStep, _squadron!, service);

    final codeEvent = BuildStepCodeEvent(buildStep);
    assets.generateVmCode(codeEvent, service.logger);
    assets.generateWebCode(codeEvent, service.logger);
    assets.generateCrossPlatformCode(codeEvent);
    assets.generateActivatorCode(codeEvent);
    _buildStepEventStream.add(codeEvent);

    try {
      yield* assets.generateMapWorkerAndPool(withFinalizers);
    } catch (ex, st) {
      print('CAUGHT $ex');
      print(st);
      rethrow;
    }
  }

  @override
  String toString() => '$runtimeType $version';
}

String _noFormatting(String source) => source;
