import 'package:analyzer/dart/element/element.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations_reader.dart';

class SquadronServiceAnnotation {
  SquadronServiceAnnotation._(
      ClassElement classElement, this.pool, this.vm, this.web, this.baseUrl)
      : name = classElement.name,
        methods =
            List.unmodifiable(classElement.methods.where((m) => !m.isStatic));

  final List<MethodElement> methods;

  final String name;
  final bool pool;
  final bool vm;
  final bool web;
  final String baseUrl;

  static SquadronServiceAnnotation? load(ClassElement classElement) {
    final reader = AnnotationReader<SquadronService>(classElement);
    if (reader.isEmpty) return null;
    final pool = reader.isSet('pool');
    final vm = reader.isSet('vm');
    final web = reader.isSet('web');
    var baseUrl = reader.getString('baseUrl') ?? '';
    if (baseUrl.isNotEmpty && baseUrl.endsWith('/')) {
      baseUrl = baseUrl.substring(0, baseUrl.length - 1);
    }
    return SquadronServiceAnnotation._(classElement, pool, vm, web, baseUrl);
  }
}
