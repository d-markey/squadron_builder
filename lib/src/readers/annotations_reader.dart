import 'package:source_gen/source_gen.dart';

import '../_analyzer_helpers.dart';

class AnnotationReader<T> {
  AnnotationReader(Element? element)
      : annotations = element?.findAnnotations<T>().toList() ?? const [];

  AnnotationReader.single(Element? element)
      : annotations = element?.findAnnotations<T>().toList() ?? const [] {
    if (annotations.length > 1) {
      throw InvalidGenerationSourceError('Too many annotations for $element');
    }
  }

  final List<DartObject> annotations;

  bool get isEmpty => annotations.isEmpty;
  bool get isNotEmpty => annotations.isNotEmpty;
}
