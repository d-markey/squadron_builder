import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';

class AnnotationReader<T> {
  AnnotationReader(Element? element)
      : _annotations = element?.findAnnotations<T>().toList() ?? const [];

  final List<DartObject> _annotations;

  bool get isEmpty => _annotations.isEmpty;

  String? getString(String fieldName) {
    String? value;
    for (var a in _annotations) {
      final v = a.getField(fieldName)?.toStringValue()?.trim() ?? '';
      if (v.isNotEmpty) {
        value = v;
      }
    }
    return value;
  }

  int getInt(String fieldName) {
    var value = 0;
    for (var a in _annotations) {
      final v = a.getField(fieldName)?.toIntValue();
      if (v != null) {
        value = value | v;
      }
    }
    return value;
  }

  bool getBool(String fieldName) {
    var value = false;
    for (var a in _annotations) {
      final v = a.getField(fieldName)?.toBoolValue();
      if (v != null) {
        value = value || v;
      }
    }
    return value;
  }
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
