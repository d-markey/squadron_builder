part of 'managed_type.dart';

class MarshalerInspector extends SimpleElementVisitor {
  MarshalerInspector(this.typeManager);

  final TypeManager typeManager;

  bool _inspecting = false;

  Marshaler? getMarshalerFor(ManagedType type) {
    // make sure type can be visited
    final element = type.dartType?.element?.declaration;
    if (element == null) return null;

    if (_inspecting) {
      throw UnsupportedError(
          'MarshalerInspector.getMarshalerFor() is not reentrant!');
    }
    _inspecting = true;
    try {
      // final attached marshaler if provided
      final explicit = typeManager.getExplicitMarshaler(element);
      if (explicit != null) return explicit;

      // reset state
      _toJson = null;
      _fromJson = null;
      _marshal = null;
      _unmarshal = null;

      // check this type
      element.visitChildren(this);

      // also check methods/getters defined in extensions of this type
      final extensions = typeManager
          .library.definingCompilationUnit.accessibleExtensions
          .where((e) => e.extendedType == type.dartType)
          .toList();
      if (extensions.isNotEmpty) {
        for (var ext in extensions) {
          ext.visitChildren(this);
        }
      }

      final typeName = type.nonNullable.getTypeName();
      final isMarshaler = (_marshal != null) && (_unmarshal != null);
      final isJson = !isMarshaler && (_toJson != null) && (_fromJson != null);

      // get loader name if static methods are implemented via extensions
      final loader = isMarshaler
          ? _unmarshal!.enclosingElement3!
          : (isJson ? _fromJson!.enclosingElement3! : null);
      String? loaderTypeName;
      if (loader is ExtensionElement) {
        final prefix = typeManager.getPrefixFor(loader.library);
        loaderTypeName = '${prefix.isEmpty ? '' : '$prefix.'}${loader.name!}';
      }

      // return marshaler
      if (isMarshaler) {
        return Marshaler.self(typeName, loaderTypeName, null,
            _marshalingContext, _unmarshalingContext);
      } else if (isJson) {
        return Marshaler.json(typeName, loaderTypeName, null);
      } else {
        return null;
      }
    } finally {
      _inspecting = false;
    }
  }

  Element? _toJson;
  Element? get toJson => _toJson;

  void _checkImplementsToJson(Element element) {
    final decl = element.declaration ?? element;
    var accessible = !decl.isPrivate;
    if (accessible && decl.name == 'toJson') {
      bool hasParams = true;
      DartType? returnType;
      if (decl is MethodElement) {
        returnType = decl.returnType;
        hasParams = decl.parameters.isNotEmpty;
        accessible = !decl.isAbstract && !decl.isStatic;
      } else if (decl is FieldElement && decl.type is FunctionType) {
        final func = decl.type as FunctionType;
        returnType = func.returnType;
        hasParams = func.parameters.isNotEmpty;
        accessible = !decl.isAbstract && !decl.isStatic;
      } else if (decl is PropertyAccessorElement &&
          decl.isGetter &&
          decl.type.returnType is FunctionType) {
        final func = decl.type.returnType as FunctionType;
        returnType = func.returnType;
        hasParams = func.parameters.isNotEmpty;
        accessible = !decl.isAbstract && !decl.isStatic;
      }
      final isImpl = accessible && !hasParams && _isJson(returnType);
      if (_toJson == null && isImpl) _toJson = decl;
    }
  }

  Element? _fromJson;
  Element? get fromJson => _fromJson;

  void _checkImplementsFromJson(Element element) {
    final decl = element.declaration ?? element;
    var accessible = !decl.isPrivate;
    if (accessible && decl.name == 'fromJson') {
      ParameterElement? param;
      DartType? returnType;
      if (decl is ConstructorElement) {
        param = decl.parameters.singleOrNull?.declaration;
        returnType = decl.returnType;
        accessible = !decl.isAbstract;
      } else if (decl is MethodElement) {
        param = decl.parameters.singleOrNull?.declaration;
        returnType = decl.returnType;
        accessible = !decl.isAbstract && decl.isStatic;
      } else if (decl is FieldElement && decl.type is FunctionType) {
        final func = decl.type as FunctionType;
        param = func.parameters.singleOrNull?.declaration;
        returnType = func.returnType;
        accessible = !decl.isAbstract && decl.isStatic;
      } else if (decl is PropertyAccessorElement &&
          decl.isGetter &&
          decl.type.returnType is FunctionType) {
        final func = decl.type.returnType as FunctionType;
        param = func.parameters.singleOrNull?.declaration;
        returnType = func.returnType;
        accessible = !decl.isAbstract && decl.isStatic;
      }
      final isImpl = accessible && _isJson(param?.type) && _isSync(returnType);
      if (_fromJson == null && isImpl) _fromJson = decl;
    }
  }

  ParameterElement? _getMarshalingContextParam(
      List<ParameterElement> params, int idx) {
    final param = params.skip(idx).take(1).firstOrNull;

    // missing parameter, accepted because a marshaling context is optional
    if (param == null) return null;

    final type = typeManager.handleDartType(param.type);
    return type.nonNullable.getTypeName() ==
            typeManager.TMarshalingContext.getTypeName()
        ? param
        : null;
  }

  Element? _marshal;
  ParameterElement? _marshalingContext;
  Element? get marshal => _marshal;

  void _checkImplementsMarshal(Element element) {
    final decl = element.declaration ?? element;
    var accessible = !decl.isPrivate;
    if (accessible && decl.name == 'marshal') {
      DartType? returnType;
      if (decl is MethodElement) {
        returnType = decl.returnType;
        _marshalingContext = _getMarshalingContextParam(decl.parameters, 0);
        accessible = !decl.isAbstract && !decl.isStatic;
      } else if (decl is FieldElement && decl.type is FunctionType) {
        final func = decl.type as FunctionType;
        returnType = func.returnType;
        _marshalingContext = _getMarshalingContextParam(func.parameters, 0);
        accessible = !decl.isAbstract && !decl.isStatic;
      } else if (decl is PropertyAccessorElement &&
          decl.isGetter &&
          decl.type.returnType is FunctionType) {
        final func = decl.type.returnType as FunctionType;
        returnType = func.returnType;
        _marshalingContext = _getMarshalingContextParam(func.parameters, 0);
        accessible = !decl.isAbstract && !decl.isStatic;
      }
      final isImpl = accessible && _isSync(returnType);
      if (_marshal == null && isImpl) _marshal = decl;
    }
  }

  Element? _unmarshal;
  ParameterElement? _unmarshalingContext;
  Element? get unmarshal => _unmarshal;

  void _checkImplementsUnmarshal(Element element) {
    final decl = element.declaration ?? element;
    var accessible = !decl.isPrivate;
    if (accessible && decl.name == 'unmarshal') {
      ParameterElement? param;
      DartType? returnType;
      if (decl is ConstructorElement) {
        param = decl.parameters.firstOrNull?.declaration;
        _unmarshalingContext = _getMarshalingContextParam(decl.parameters, 1);
        returnType = decl.returnType;
        accessible = !decl.isAbstract;
      } else if (decl is MethodElement) {
        param = decl.parameters.firstOrNull?.declaration;
        _unmarshalingContext = _getMarshalingContextParam(decl.parameters, 1);
        returnType = decl.returnType;
        accessible = !decl.isAbstract && decl.isStatic;
      } else if (decl is FieldElement && decl.type is FunctionType) {
        final func = decl.type as FunctionType;
        param = func.parameters.firstOrNull?.declaration;
        _unmarshalingContext = _getMarshalingContextParam(func.parameters, 1);
        returnType = func.returnType;
        accessible = !decl.isAbstract && decl.isStatic;
      } else if (decl is PropertyAccessorElement &&
          decl.isGetter &&
          decl.type.returnType is FunctionType) {
        final func = decl.type.returnType as FunctionType;
        param = func.parameters.firstOrNull?.declaration;
        _unmarshalingContext = _getMarshalingContextParam(func.parameters, 1);
        returnType = func.returnType;
        accessible = !decl.isAbstract && decl.isStatic;
      }
      final isImpl = accessible && _isSync(param?.type) && _isSync(returnType);
      if (_unmarshal == null && isImpl) _unmarshal = decl;
    }
  }

  static bool _isSync(DartType? type) =>
      (type != null) &&
      !type.isDartAsyncFuture &&
      !type.isDartAsyncFutureOr &&
      !type.isDartAsyncStream &&
      type is! VoidType;

  static bool _isJson(DartType? type) =>
      (type != null) && (type.isDartCoreMap || type is DynamicType);

  @override
  void visitConstructorElement(ConstructorElement element) {
    _checkImplementsFromJson(element);
    _checkImplementsUnmarshal(element);
  }

  @override
  void visitMethodElement(MethodElement element) {
    _checkImplementsFromJson(element);
    _checkImplementsToJson(element);
    _checkImplementsUnmarshal(element);
    _checkImplementsMarshal(element);
  }

  @override
  void visitFieldElement(FieldElement element) {
    _checkImplementsFromJson(element);
    _checkImplementsToJson(element);
    _checkImplementsUnmarshal(element);
    _checkImplementsMarshal(element);
  }

  @override
  void visitPropertyAccessorElement(PropertyAccessorElement element) {
    if (element.isGetter) {
      _checkImplementsFromJson(element);
      _checkImplementsToJson(element);
      _checkImplementsUnmarshal(element);
      _checkImplementsMarshal(element);
    }
  }
}
