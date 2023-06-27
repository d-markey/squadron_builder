import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';

import '../extensions.dart';
import 'marshalers/marshaler.dart';

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

  static bool _isSquadronMarshaler(InterfaceType clazz) =>
      (clazz.element.location?.components ?? const [])
          .any((c) => c.startsWith('package:squadron/')) &&
      (clazz.baseName.startsWith('SquadronMarshaller') ||
          clazz.baseName.startsWith('SquadronMarshaler'));

  static Marshaler? getExplicitMarshaler(Element element) {
    Marshaler? explicit;
    for (var ann in element.metadata) {
      final value = ann.computeConstantValue();
      final marshaler =
          value?.getField('marshaler') ?? value?.getField('marshaller');
      if (marshaler != null) {
        final type = marshaler.toTypeValue() ?? marshaler.type;
        final typeElt = (type?.element is ClassElement)
            ? (type?.element as ClassElement)
            : null;
        final baseMarshaler =
            typeElt?.allSupertypes.where(_isSquadronMarshaler);
        if (baseMarshaler == null || baseMarshaler.isEmpty) {
          throw InvalidGenerationSourceError(
              'Invalid marshaler for $element: $marshaler');
        }
        explicit = Marshaler.explicit(marshaler, baseMarshaler.first);
        break;
      }
    }
    return explicit;
  }

  static bool _isSquadronLogger(InterfaceType clazz) {
    final locationComponents = clazz.element.location?.components ?? const [];
    return locationComponents.any((c) => c.startsWith('package:squadron/')) &&
        (clazz.baseName.startsWith('SquadronLogger'));
  }

  static String? getLogger(Element element) {
    String? instance;
    for (var ann in element.metadata) {
      final value = ann.computeConstantValue();
      final logger = value?.getField('logger');
      if (logger != null) {
        final type = logger.toTypeValue() ?? logger.type;
        final typeElt = (type?.element is ClassElement)
            ? (type?.element as ClassElement)
            : null;
        final baseLogger = typeElt?.allSupertypes.where(_isSquadronLogger);
        if (baseLogger == null || baseLogger.length != 1) {
          throw InvalidGenerationSourceError(
              'Invalid logger for $element: $logger');
        }
        final variable = logger.variable;
        if (variable != null) {
          if (variable.enclosingElement is ClassElement) {
            instance = '${variable.enclosingElement!.name}.${variable.name}';
          } else {
            instance = variable.name;
          }
        } else {
          var typeName = (logger.toTypeValue() ?? logger.type).toString();
          if (typeName.endsWith('?') || typeName.endsWith('*')) {
            typeName = typeName.substring(0, typeName.length - 1);
          }
          instance = '$typeName()';
        }
        break;
      }
    }
    return instance;
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
