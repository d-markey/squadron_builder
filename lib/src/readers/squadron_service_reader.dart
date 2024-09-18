import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron.dart';

import '../types/type_manager.dart';
import 'annotations_reader.dart';
import 'squadron_parameters.dart';

/// Reader for a Squadron service class
class SquadronServiceReader {
  SquadronServiceReader._(ClassElement clazz, this.typeManager, this.pool,
      this.vm, this.web, this.wasm, this.baseUrl)
      : name = clazz.name,
        parameters = SquadronParameters(typeManager) {
    _load(clazz);
  }

  final TypeManager typeManager;
  final SquadronParameters parameters;

  final fields = <String, FieldElement>{};
  final accessors = <PropertyAccessorElement>[];
  final methods = <MethodElement>[];

  final String name;
  final bool pool;
  final bool vm;
  final bool web;
  final bool wasm;
  final String baseUrl;

  void _load(ClassElement clazz) {
    if (clazz.isAbstract ||
        clazz.isInterface ||
        clazz.isSealed ||
        clazz.isFinal ||
        clazz.isBase ||
        !clazz.isConstructable ||
        clazz.name.startsWith('_')) {
      throw InvalidGenerationSourceError(
          'Service classes must be public and concrete.');
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

        final marshaler = typeManager.getExplicitMarshaler(param);
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
      ClassElement clazz, TypeManager typeManager) {
    final reader = AnnotationReader<SquadronService>(clazz);
    if (reader.isEmpty) return null;
    final pool = reader.isSet('pool');
    final vm = reader.isSet('vm');
    final web = reader.isSet('web');
    final wasm = reader.isSet('wasm');
    var baseUrl = reader.getString('baseUrl') ?? '';
    if (baseUrl.isNotEmpty && baseUrl.endsWith('/')) {
      baseUrl = baseUrl.substring(0, baseUrl.length - 1);
    }
    return SquadronServiceReader._(
        clazz, typeManager, pool, vm, web, wasm, baseUrl);
  }
}
