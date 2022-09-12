import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart';

class SerializationInspector extends SimpleElementVisitor {
  final cache = <Element, List<Element>>{};

  List<Element>? _getFromCache(DartType type) {
    final element = type.element2?.declaration;
    if (element == null) return null;
    return cache[element];
  }

  bool hasToJson(DartType type) {
    final info = _getFromCache(type);
    return info?.any((m) =>
            m is MethodElement &&
            !m.isPrivate &&
            !m.isAbstract &&
            m.returnType.isDartCoreMap &&
            m.name == 'toJson' &&
            m.parameters.isEmpty) ??
        false;
  }

  bool hasFromJson(DartType type) {
    final info = _getFromCache(type);
    return info?.any((c) =>
            c is ConstructorElement &&
            !c.isPrivate &&
            !c.isAbstract &&
            c.isFactory &&
            c.name == 'fromJson' &&
            c.parameters.length == 1 &&
            c.parameters[0].declaration.type.isDartCoreMap) ??
        false;
  }

  bool isSerializable(DartType type) => hasToJson(type) && hasFromJson(type);

  @override
  void visitConstructorElement(ConstructorElement element) {
    element = element.declaration;
    final clazz = element.enclosingElement3;
    var info = cache[clazz];
    if (info == null) {
      info = [];
      cache[clazz] = info;
    }
    if (!info.contains(element)) {
      info.add(element);
    }
  }

  @override
  void visitMethodElement(MethodElement element) {
    element = element.declaration;
    final clazz = element.enclosingElement3;
    var info = cache[clazz];
    if (info == null) {
      info = [];
      cache[clazz] = info;
    }
    if (!info.contains(element)) {
      info.add(element);
    }
  }
}
