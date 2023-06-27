import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

import 'marshaler.dart';

typedef Adapter = String Function(String);

extension IdentityCheckerExt on Adapter {
  bool get isIdentity => (this == identity) || (this('_dummy_') == '_dummy_');
}

// identity is an Adapter
String identity(String expr) => expr;

class MarshalingInfo {
  MarshalingInfo(this._type, this._marshaler);

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

  bool get _hasMarshal => _methods.any((m) =>
      m is MethodElement &&
      !m.isPrivate &&
      !m.isAbstract &&
      m.name == 'marshal' &&
      m.parameters.isEmpty);

  bool get _hasUnmarshal => _methods.any((c) =>
      (c is ConstructorElement &&
          !c.isPrivate &&
          !c.isAbstract &&
          c.name == 'unmarshal' &&
          c.parameters.length == 1) ||
      (c is MethodElement &&
          !c.isPrivate &&
          !c.isAbstract &&
          c.isStatic &&
          c.name == 'unmarshal' &&
          c.parameters.length == 1));

  bool get _hasMarshall => _methods.any((m) =>
      m is MethodElement &&
      !m.isPrivate &&
      !m.isAbstract &&
      m.name == 'marshall' &&
      m.parameters.isEmpty);

  bool get _hasUnmarshall => _methods.any((c) =>
      (c is ConstructorElement &&
          !c.isPrivate &&
          !c.isAbstract &&
          c.name == 'unmarshall' &&
          c.parameters.length == 1) ||
      (c is MethodElement &&
          !c.isPrivate &&
          !c.isAbstract &&
          c.isStatic &&
          c.name == 'unmarshall' &&
          c.parameters.length == 1));

  final Marshaler? _marshaler;
  Marshaler? _defaultMarshaler;

  Marshaler get marshaler {
    if (_defaultMarshaler == null && _hasMarshal && _hasUnmarshal) {
      _defaultMarshaler = Marshaler.instance(_type, 'marshal', 'unmarshal');
    }
    if (_defaultMarshaler == null && _hasMarshall && _hasUnmarshall) {
      _defaultMarshaler = Marshaler.instance(_type, 'marshall', 'unmarshall');
    }
    if (_defaultMarshaler == null && _hasToJson && _hasFromJson) {
      _defaultMarshaler = Marshaler.json(_type);
    }
    return _marshaler ?? _defaultMarshaler ?? Marshaler.identity;
  }

  void registerMethod(ExecutableElement method) {
    if (!_methods.contains(method)) {
      _methods.add(method);
    }
  }
}
