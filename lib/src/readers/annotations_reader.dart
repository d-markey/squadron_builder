import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron_builder/src/types/type_manager.dart';

import '../extensions.dart';
import '../marshalers/marshaler.dart';
import '../types/extensions.dart';

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

  bool isSet(String fieldName) {
    for (var a in _annotations) {
      final v = a.getField(fieldName)?.toBoolValue();
      if (v != null && v) return true;
    }
    return false;
  }

  static Marshaler? getExplicitMarshaler(
      Element element, TypeManager typeManager) {
    Marshaler? explicit;
    for (var ann in element.metadata) {
      final value = ann.computeConstantValue();
      final marshaler = value?.getField('marshaler');
      if (marshaler != null) {
        final type = marshaler.toTypeValue() ?? marshaler.type;
        final baseMarshaler =
            type?.implementedTypes(typeManager.squadronMarshalerType);
        if (baseMarshaler == null || baseMarshaler.isEmpty) {
          throw InvalidGenerationSourceError(
              'Invalid marshaler for $element: $marshaler');
        }
        explicit = Marshaler.explicit(
            marshaler, typeManager.handleDartType(baseMarshaler.single));
        break;
      }
    }
    return explicit;
  }
}

extension _AnnotationExt on Element {
  Iterable<DartObject> getAnnotations() => metadata
      .whereType<ElementAnnotation>()
      .map((a) => a.computeConstantValue())
      .whereNotNull();

  Iterable<DartObject> findAnnotations<T>() {
    final targetAnnotationName = T.toString();
    return getAnnotations().where((a) =>
        a.type?.getDisplayString(withNullability: false) ==
        targetAnnotationName);
  }
}
