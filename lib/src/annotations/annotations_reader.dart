import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';

import '../extensions.dart';
import 'marshallers/marshaller.dart';

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

  bool? getBoolean(String fieldName) {
    bool? value;
    for (var a in _annotations) {
      final v = a.getField(fieldName)?.toBoolValue();
      if (v != null) {
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

  DartType? getType(String fieldName) {
    DartType? value;
    for (var a in _annotations) {
      final v = a.getField(fieldName)?.toTypeValue();
      if (v != null) {
        value = v;
      }
    }
    return value;
  }

  List<DartObject>? getList(String fieldName) {
    List<DartObject>? list;
    for (var a in _annotations) {
      var v = a.getField(fieldName);
      if (v != null) {
        list ??= <DartObject>[];
        list.addAll(v.toListValue()?.whereNotEmpty() ?? [v]);
      }
    }
    return list;
  }

  static bool _isSquadronMarshaller(InterfaceType clazz) {
    final locationComponents = clazz.element.location?.components ?? const [];
    return locationComponents.any((c) => c.startsWith('package:squadron/')) &&
        (clazz.baseName.startsWith('SquadronMarshaller'));
  }

  static Marshaller? getExplicitMarshaller(Element element) {
    Marshaller? explicit;
    for (var ann in element.metadata) {
      final value = ann.computeConstantValue();
      final marshaller = value?.getField('marshaller');
      if (marshaller != null) {
        final type = marshaller.toTypeValue() ?? marshaller.type;
        final typeElt = (type?.element is ClassElement)
            ? (type?.element as ClassElement)
            : null;
        final baseMarshaller =
            typeElt?.allSupertypes.where(_isSquadronMarshaller);
        if (baseMarshaller == null || baseMarshaller.length != 1) {
          throw InvalidGenerationSourceError(
              'Invalid marshaller for $element: $marshaller');
        }
        explicit = Marshaller.explicit(marshaller, baseMarshaller.first);
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
