import 'package:analyzer/dart/element/element.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations_reader.dart';
import 'marshalling_manager.dart';
import 'squadron_parameters.dart';

class SquadronServiceAnnotation {
  SquadronServiceAnnotation._(ClassElement clazz, this.pool, this.vm, this.web,
      this.baseUrl, this.logger)
      : name = clazz.name {
    _load(clazz);
  }

  final fields = <String, FieldElement>{};
  final accessors = <PropertyAccessorElement>[];
  final methods = <MethodElement>[];

  final String name;
  final bool pool;
  final bool vm;
  final bool web;
  final String baseUrl;
  final String? logger;

  final parameters = SquadronParameters();

  static final _inspector = MarshallingManager();

  void _load(ClassElement clazz) {
    final ctorElement = clazz.unnamedConstructor;

    if (ctorElement != null && ctorElement.parameters.isNotEmpty) {
      for (var n = 0; n < ctorElement.parameters.length; n++) {
        final param = ctorElement.parameters[n];

        if (param is FieldFormalParameterElement && param.field != null) {
          if (!param.field!.name.startsWith('_')) {
            fields[param.name] = param.field!;
          }
        }

        final marshaller = _inspector.getMarshallerFor(param);
        final p = parameters.register(param, marshaller);
        if (p.isCancellationToken) {
          throw InvalidGenerationSourceError(
              'Cancellation tokens are not supported during service initialization.');
        }
      }
    }

    methods.addAll(clazz.methods.where((m) => !m.isStatic));
    accessors.addAll(clazz.accessors.where((a) =>
        !a.isStatic &&
        ((a.isGetter && !fields.containsKey(a.name)) ||
            (a.isSetter && !fields.containsKey(a.name.replaceAll('=', ''))))));
  }

  static SquadronServiceAnnotation? load(ClassElement clazz) {
    final reader = AnnotationReader<SquadronService>(clazz);
    if (reader.isEmpty) return null;
    final pool = reader.isSet('pool');
    final vm = reader.isSet('vm');
    final web = reader.isSet('web');
    var baseUrl = reader.getString('baseUrl') ?? '';
    if (baseUrl.isNotEmpty && baseUrl.endsWith('/')) {
      baseUrl = baseUrl.substring(0, baseUrl.length - 1);
    }
    final logger = AnnotationReader.getLogger(clazz);
    return SquadronServiceAnnotation._(clazz, pool, vm, web, baseUrl, logger);
  }
}
