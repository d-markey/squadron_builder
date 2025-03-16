import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron.dart' as squadron;
import 'package:squadron_builder/src/worker_generator.dart';

import '../types/type_manager.dart';
import 'annotations_reader.dart';
import 'squadron_parameters.dart';

/// Reader for a Squadron service class
class SquadronServiceReader {
  SquadronServiceReader._(
    ClassElement clazz,
    this._typeManager,
    this.worker,
    this.local,
    this.pool,
    this.vm,
    this.js,
    this.wasm,
    this.baseUrl,
  )   : name = clazz.name,
        isBase = clazz.isBase,
        parameters = SquadronParameters(_typeManager) {
    _load(clazz);
  }

  final bool isBase;
  final SquadronParameters parameters;

  final fields = <String, FieldElement>{};
  final accessors = <PropertyAccessorElement>[];
  final methods = <MethodElement>[];

  final String name;
  final bool worker;
  final bool local;
  final bool pool;
  final bool vm;
  final bool js;
  final bool wasm;
  final String baseUrl;

  bool get web => js | wasm;

  final TypeManager _typeManager;

  void _load(ClassElement clazz) {
    if (clazz.isAbstract ||
        clazz.isInterface ||
        clazz.isSealed ||
        clazz.isFinal ||
        !clazz.isConstructable ||
        clazz.name.startsWith('_')) {
      throw InvalidGenerationSourceError(
          'Service classes must be public, concrete and extendable.');
    }

    final ctorElement = clazz.unnamedConstructor;

    if (ctorElement == null) {
      if (clazz.constructors.isNotEmpty) {
        log.warning('Missing unnamed constructor for ${clazz.name}');
      }
    } else if (ctorElement.parameters.isNotEmpty) {
      for (var n = 0; n < ctorElement.parameters.length; n++) {
        final param = ctorElement.parameters[n];

        if (param is FieldFormalParameterElement && param.field != null) {
          if (!param.field!.name.startsWith('_')) {
            fields[param.name] = param.field!;
          }
        }

        final marshaler = _typeManager.getExplicitMarshaler(param);
        final p = parameters.register(param, marshaler);
        if (p.isCancelationToken) {
          throw InvalidGenerationSourceError(
              'Cancelation tokens are not supported during service initialization.');
        }
      }
    }

    methods.addAll(clazz.methods.where((m) => !m.isStatic));
    accessors.addAll(clazz.accessors.where((a) =>
        !a.isStatic &&
        ((a.isGetter && !fields.containsKey(a.name)) ||
            (a.isSetter && !fields.containsKey(a.name.replaceAll('=', ''))))));
  }

  static SquadronServiceReader? load(
      ClassElement clazz, GeneratorContext context) {
    final reader = AnnotationReader<squadron.SquadronService>(clazz);
    if (reader.isEmpty) return null;

    var local = false;
    var worker = false;
    var pool = false;
    var vm = false;
    var js = false;
    var wasm = false;

    var baseUrl = '';

    for (var annotation in reader.annotations) {
      if (annotation.getBool('local')) {
        local = true;
      } else {
        worker = true;
        final targetPlatform = annotation.getInt('targetPlatform');
        if (targetPlatform.hasVm) vm = true;
        if (targetPlatform.hasJs) js = true;
        if (targetPlatform.hasWasm) wasm = true;
        if (annotation.getBool('pool')) pool = true;
        if (baseUrl.isEmpty) {
          baseUrl = annotation.getString('baseUrl');
        }
      }
    }

    if (baseUrl.isNotEmpty && baseUrl.endsWith('/')) {
      baseUrl = baseUrl.substring(0, baseUrl.length - 1);
    }
    return SquadronServiceReader._(
        clazz, context.typeManager, worker, local, pool, vm, js, wasm, baseUrl);
  }
}
