import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations/squadron_library.dart';
import 'annotations/squadron_service_annotation.dart';
import 'worker_assets.dart';

typedef Formatter = String Function(String source);

class WorkerGenerator extends GeneratorForAnnotation<SquadronService> {
  const WorkerGenerator(
      {this.formatOutput = _noFormatting, this.withFinalizers = false});

  static const version = '2.2.1';

  final bool withFinalizers;
  final Formatter formatOutput;

  @override
  Stream<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) async* {
    final classElt = element;
    if (classElt is! ClassElement) return;

    // implementation moved to specific methods to facilitate unit tests
    final service = SquadronServiceAnnotation.load(classElt)!;

    // load Squadron main library
    final squadron = (await SquadronLibrary.load(element.session))!;

    final assets = WorkerAssets(buildStep, squadron, service, formatOutput, '''
      // GENERATED CODE - DO NOT MODIFY BY HAND
      
      // **************************************************************************
      // Generator: $this
      // **************************************************************************
      ''');

    assets.generateVmCode(service.logger);
    assets.generateWebCode(service.logger);
    assets.generateCrossPlatformCode();
    assets.generateActivatorCode();

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
