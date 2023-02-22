import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

import 'marshaller.dart';

typedef Generator = String Function(String);

extension IdentityCheckerExt on Generator {
  bool get isIdentity => (this == identity) || (this('\$x') == '\$x');
}

String identity(String expr) => expr;

class MarshallingInfo {
  MarshallingInfo(this._type, this._marshaller);

  final DartType _type;
  final Set<ExecutableElement> _methods = {};

  bool get _hasToJson => _methods.any((m) =>
      m is MethodElement &&
      !m.isPrivate &&
      !m.isAbstract &&
      m.returnType.isDartCoreMap &&
      m.name == 'toJson' &&
      m.parameters.isEmpty);

  bool get _hasFromJson => _methods.any((c) =>
      (c is ConstructorElement &&
          !c.isPrivate &&
          !c.isAbstract &&
          c.name == 'fromJson' &&
          c.parameters.length == 1 &&
          c.parameters[0].declaration.type.isDartCoreMap) ||
      (c is MethodElement &&
          !c.isPrivate &&
          !c.isAbstract &&
          c.isStatic &&
          c.name == 'fromJson' &&
          c.parameters.length == 1 &&
          c.parameters[0].declaration.type.isDartCoreMap));

  final Marshaller? _marshaller;
  Marshaller? _jsonMarshaller;

  Marshaller get marshaller {
    if (_jsonMarshaller == null && _hasToJson && _hasFromJson) {
      _jsonMarshaller = Marshaller.implicit(_type);
    }
    return _marshaller ?? _jsonMarshaller ?? Marshaller.identity;
  }

  void registerMethod(ExecutableElement method) {
    if (!_methods.contains(method)) {
      _methods.add(method);
    }
  }
}
