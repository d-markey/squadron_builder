import 'package:analyzer/dart/element/element.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations_reader.dart';

class SquadronServiceAnnotation {
  SquadronServiceAnnotation._(
      this.name, this._methods, this.pool, this.vm, this.web, this.baseUrl);

  final List<MethodElement> _methods;
  Iterable<MethodElement> get methods => _methods;

  final String name;
  final bool pool;
  final bool vm;
  final bool web;
  final String baseUrl;

  static SquadronServiceAnnotation? load(ClassElement classElement) {
    final reader = AnnotationReader<SquadronService>(classElement);
    if (reader.isEmpty) return null;
    final pool = reader.isSet('pool');
    final vm = reader.isSet('pool');
    final web = reader.isSet('pool');
    var baseUrl = reader.getString('baseUrl') ?? '';
    if (baseUrl.isNotEmpty && baseUrl.endsWith('/')) {
      baseUrl = baseUrl.substring(0, baseUrl.length - 1);
    }
    return SquadronServiceAnnotation._(
        classElement.name, classElement.methods, pool, vm, web, baseUrl);
  }
}
