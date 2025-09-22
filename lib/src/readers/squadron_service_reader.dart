import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron.dart' as squadron;

import '../_analyzer_helpers.dart';
import '../types/type_manager.dart';
import '../worker_generator.dart';
import 'annotations_reader.dart';
import 'squadron_parameters.dart';

/// Reader for a Squadron service class
class SquadronServiceReader {
  SquadronServiceReader._(
    ClassElement clazz,
    this._typeManager,
    this.local,
    this.worker,
    this.pool,
    this.vm,
    this.js,
    this.wasm,
    this.baseUrl,
  ) : name = clazz.name ?? '',
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
  final bool local;
  final bool worker;
  final bool pool;
  final bool vm;
  final bool js;
  final bool wasm;
  final String baseUrl;

  bool get web => js | wasm;

  final TypeManager _typeManager;

  void _load(ClassElement clazz) {
    final name = clazz.name ?? '';
    if (name.startsWith('_')) {
      throw InvalidGenerationSourceError('Service classes must be public.');
    }

    if (worker && !clazz.isConstructable) {
      throw InvalidGenerationSourceError(
        'Worker service classes must be constructable.',
      );
    }

    final ctorElement = clazz.unnamedConstructor;

    if (ctorElement == null) {
      if (clazz.constructors.isNotEmpty) {
        log.warning('Missing unnamed constructor for ${clazz.name}');
      }
    } else if (ctorElement.formalParameters.isNotEmpty) {
      for (var n = 0; n < ctorElement.formalParameters.length; n++) {
        final param = ctorElement.formalParameters[n];

        if (param is FieldFormalParameterElement) {
          final fld = param.field;
          if (fld != null) {
            final name = fld.name ?? '';
            if (!name.startsWith('_')) {
              fields[name] = fld;
            }
          }
        }

        final p = parameters.register(
          param,
          _typeManager.getExplicitMarshaler(param),
        );

        if (p.isCancelationToken) {
          throw InvalidGenerationSourceError(
            'Cancelation tokens are not supported during service initialization.',
          );
        }
      }
    }

    methods.addAll(clazz.methods.where((m) => !m.isStatic));
    accessors.addAll(
      clazz.getters.where(
        (a) => !a.isStatic && !fields.containsKey(a.property),
      ),
    );
    accessors.addAll(
      clazz.setters.where(
        (a) => !a.isStatic && !fields.containsKey(a.property),
      ),
    );
  }

  static SquadronServiceReader? load(
    ClassElement clazz,
    GeneratorContext context,
  ) {
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
      clazz,
      context.typeManager,
      local,
      worker,
      pool,
      vm,
      js,
      wasm,
      baseUrl,
    );
  }
}
