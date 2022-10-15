import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

class SerializationGenerators {
  static final SerializationGenerators asIs = SerializationGenerators();

  String Function(String) serializer = SerializationInfo.asIs;
  String Function(String) deserializer = SerializationInfo.asIs;
}

class SerializationInfo {
  SerializationInfo(this.type, this.serializer);

  final DartType type;
  final Set<ExecutableElement> _methods = {};
  final DartObject? serializer;

  static bool _isBaseType(DartType type) =>
      type.isDynamic || // assume dynamic types are base types...
      type.isDartCoreBool ||
      type.isDartCoreNum ||
      type.isDartCoreNull ||
      type.isDartCoreString;

  static bool _isBaseOrListOrMap(DartType type) =>
      _isBaseType(type) ||
      (type.isDartCoreList &&
          (type is! ParameterizedType ||
              _isBaseOrListOrMap(type.typeArguments.first))) ||
      (type.isDartCoreMap &&
          (type is! ParameterizedType ||
              (_isBaseType(type.typeArguments.first) &&
                  _isBaseOrListOrMap(type.typeArguments.last))));

  static bool needsSerialization(DartType type) => !_isBaseOrListOrMap(type);

  static DartObject? getExplicitSerializer(Element element) {
    DartObject? serializer;
    for (var ann in element.metadata) {
      final value = ann.computeConstantValue();
      final ser = value?.getField('serializer');
      if (ser != null) {
        serializer = ser;
      }
    }
    return serializer;
  }

  void registerMethod(ExecutableElement method) {
    if (!_methods.contains(method)) {
      _methods.add(method);
    }
  }

  bool get hasToJson => _methods.any((m) =>
      m is MethodElement &&
      !m.isPrivate &&
      !m.isAbstract &&
      m.returnType.isDartCoreMap &&
      m.name == 'toJson' &&
      m.parameters.isEmpty);

  bool get hasFromJson => _methods.any((c) =>
      c is ConstructorElement &&
      !c.isPrivate &&
      !c.isAbstract &&
      c.isFactory &&
      c.name == 'fromJson' &&
      c.parameters.length == 1 &&
      c.parameters[0].declaration.type.isDartCoreMap);

  bool get isSerializable => (serializer != null) || (hasToJson && hasFromJson);

  static String asIs(String value) => value;

  String Function(String) getDeserializer(DartType itemType,
      {required bool nullableItem,
      required bool isIterable,
      required bool isList,
      required bool nullable,
      DartObject? explicitSerializer}) {
    final useSerializer = explicitSerializer ?? serializer;
    if (useSerializer != null) {
      var serName = useSerializer.toTypeValue().toString();
      if (serName.endsWith('*')) {
        serName = serName.substring(0, serName.length - 1);
      }
      return (res) => 'const $serName().unmarshall($res)';
    }

    if (!_isBaseOrListOrMap(itemType) && isSerializable) {
      final fromJson = '$itemType.fromJson';
      if (isIterable) {
        final map = nullable ? '?.map<$itemType>' : '.map<$itemType>';
        final asList = isList ? '.toList()' : '';
        final nullCheck = nullableItem ? '(v == null) ? null : ' : '';
        return (String res) => '$res$map((v) => $nullCheck$fromJson(v))$asList';
      } else {
        return nullableItem
            ? (String res) => '($res == null) ? null : $fromJson($res)'
            : (String res) => '$fromJson($res)';
      }
    } else if (isIterable) {
      final cast = nullable ? '?.cast<$itemType>' : '.cast<$itemType>';
      final asList = isList ? '.toList()' : '';
      return (String res) => '$res$cast()$asList';
    } else {
      return asIs;
    }
  }

  String Function(String) getSerializer(DartType itemType,
      {required bool nullableItem,
      required bool isIterable,
      required bool isList,
      required bool nullable,
      DartObject? explicitSerializer}) {
    final useSerializer = explicitSerializer ?? serializer;

    if (useSerializer != null) {
      var serName = useSerializer.toTypeValue().toString();
      if (serName.endsWith('*')) {
        serName = serName.substring(0, serName.length - 1);
      }
      return (res) => 'const $serName().marshall($res)';
    }

    if (!_isBaseOrListOrMap(itemType) && isSerializable) {
      final toJson = nullableItem ? '?.toJson' : '.toJson';
      if (isIterable) {
        final map = nullable ? '?.map' : '.map';
        return (String res) => '$res$map((v) => v$toJson()).toList()';
      } else {
        return (String res) => '$res$toJson()';
      }
    } else if (isIterable && !isList) {
      final asList = nullable ? '?.toList()' : '.toList()';
      return (String res) => '$res$asList';
    } else {
      return asIs;
    }
  }
}
