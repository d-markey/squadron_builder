import 'package:analyzer/dart/element/element.dart';
import 'package:squadron/squadron_annotations.dart';

import 'annotations_reader.dart';

class SquadronServiceAnnotation {
  SquadronServiceAnnotation._(this.pool, this.vm, this.web, this.baseUrl);

  final bool pool;
  final bool vm;
  final bool web;
  final String baseUrl;

  static SquadronServiceAnnotation? load(ClassElement element) {
    final reader = AnnotationReader<SquadronService>(element);
    if (reader.isEmpty) return null;
    var baseUrl = reader.getString('baseUrl') ?? '';
    if (baseUrl.isNotEmpty && baseUrl.endsWith('/')) {
      baseUrl = baseUrl.substring(0, baseUrl.length - 1);
    }
    return SquadronServiceAnnotation._(
        reader.isSet('pool'), reader.isSet('vm'), reader.isSet('web'), baseUrl);
  }
}
