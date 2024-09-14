import 'package:analyzer/dart/element/element.dart';

import '../types/managed_type.dart';
import 'marshaler.dart';

class MarshalingInfo {
  MarshalingInfo(this._type, this._marshaler);

  final ManagedType _type;
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

  final Marshaler? _marshaler;
  Marshaler? _defaultMarshaler;

  Marshaler? get marshaler {
    if (_defaultMarshaler == null && _hasMarshal && _hasUnmarshal) {
      _defaultMarshaler = Marshaler.instance(_type);
    }
    if (_defaultMarshaler == null && _hasToJson && _hasFromJson) {
      _defaultMarshaler = Marshaler.json(_type);
    }
    return _marshaler ?? _defaultMarshaler;
  }

  void registerMethod(ExecutableElement method) {
    if (!_methods.contains(method)) {
      _methods.add(method);
    }
  }
}
