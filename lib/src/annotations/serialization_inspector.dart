import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart';

import 'serialization_info.dart';

class _Cache {
  _Cache(this._inspector);

  final SerializationInspector _inspector;
  final _cache = <Element, SerializationInfo>{};

  SerializationInfo _getOrAddSerializationInfo(DartType type, Element clazz) {
    var entry = _cache[clazz];
    if (entry == null) {
      final serializer = SerializationInfo.getExplicitSerializer(clazz);
      entry = SerializationInfo(type, serializer);
      _cache[clazz] = entry;
    }
    return entry;
  }

  SerializationInfo? getSerializationInfo(DartType? type) {
    if (type == null) return null;
    final element = type.element2?.declaration;
    if (element == null) return null;
    return _getOrAddSerializationInfo(type, element);
  }

  SerializationGenerators getSerializationGenerators(DartType type,
      {DartObject? serializer}) {
    if (!SerializationInfo.needsSerialization(type)) {
      return SerializationGenerators.asIs;
    }

    var itemType = type;
    itemType.element2!.visitChildren(_inspector);

    var isIterable = false;
    var isList = false;

    final nullable =
        type.isDynamic || (type.nullabilitySuffix != NullabilitySuffix.none);
    if ((type.isDartCoreList || type.isDartCoreIterable) &&
        type is ParameterizedType) {
      isIterable = true;
      isList = type.isDartCoreList;
      itemType = type.typeArguments.first;
      itemType.element2!.visitChildren(_inspector);
    }

    final nullableItem = itemType.isDynamic ||
        (itemType.nullabilitySuffix != NullabilitySuffix.none);

    final serializationInfo = getSerializationInfo(itemType);

    final generators = SerializationGenerators();
    generators.deserializer = serializationInfo?.getDeserializer(itemType,
            nullableItem: nullableItem,
            isIterable: isIterable,
            isList: isList,
            nullable: nullable,
            explicitSerializer: serializer) ??
        SerializationInfo.asIs;

    generators.serializer = serializationInfo?.getSerializer(itemType,
            nullableItem: nullableItem,
            isIterable: isIterable,
            isList: isList,
            nullable: nullable,
            explicitSerializer: serializer) ??
        SerializationInfo.asIs;

    return generators;
  }
}

class SerializationInspector extends SimpleElementVisitor {
  SerializationInspector();

  late final _Cache _cache = _Cache(this);

  @override
  void visitConstructorElement(ConstructorElement element) {
    element = element.declaration;
    final clazz = element.enclosingElement3;
    final info = _cache._getOrAddSerializationInfo(clazz.thisType, clazz);
    if (element.isFactory && element.name == 'fromJson') {
      // only interested in factory constructor 'fromJson()'
      info.registerMethod(element);
    }
  }

  @override
  void visitMethodElement(MethodElement element) {
    element = element.declaration;
    final clazz = element.enclosingElement3;
    if (clazz is! InterfaceElement) {
      return;
    }
    final info = _cache._getOrAddSerializationInfo(clazz.thisType, clazz);
    if (!element.isStatic && element.name == 'toJson') {
      info.registerMethod(element);
    }
  }

  SerializationGenerators getSerializationGenerators(DartType type,
          {DartObject? explicitSerializer}) =>
      _cache.getSerializationGenerators(type, serializer: explicitSerializer);
}
