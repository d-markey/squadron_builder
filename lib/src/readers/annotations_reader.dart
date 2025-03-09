import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';

class AnnotationReader<T> {
  AnnotationReader(Element? element)
      : annotations = element?.findAnnotations<T>().toList() ?? const [];

  AnnotationReader.single(Element? element)
      : annotations = element?.findAnnotations<T>().toList() ?? const [] {
    if (annotations.length > 1) {
      throw UnsupportedError('Too many annotations for $element');
    }
  }

  final List<DartObject> annotations;

  bool get isEmpty => annotations.isEmpty;
}

extension AnnotationReaderExt on DartObject? {
  String getString(String fieldName) =>
      this?.getField(fieldName)?.toStringValue()?.trim() ?? '';

  int getInt(String fieldName) => this?.getField(fieldName)?.toIntValue() ?? 0;

  bool getBool(String fieldName) =>
      this?.getField(fieldName)?.toBoolValue() ?? false;

  bool? getNullableBool(String fieldName) =>
      this?.getField(fieldName)?.toBoolValue();
}

extension AnnotationExt on Element {
  Iterable<DartObject> getAnnotations() =>
      metadata.map((a) => a.computeConstantValue()).nonNulls;

  Iterable<DartObject> findAnnotations<T>() {
    final targetAnnotationName = T.toString();
    return getAnnotations()
        .where((v) => v.type?.getDisplayString() == targetAnnotationName);
  }
}
