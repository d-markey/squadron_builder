part of 'managed_type.dart';

class MarshalerLoader extends SimpleElementVisitor {
  MarshalerLoader(this.typeManager);

  final TypeManager typeManager;

  Marshaler? getMarshalerFor(ManagedType type) {
    // make sure type can be visited
    final element = type.dartType?.element?.declaration;
    if (element == null) return null;

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
    final extensions = typeManager.library.accessibleExtensions
        .where((e) => e.extendedType == type.dartType)
        .toList();
    if (extensions.isNotEmpty) {
      for (var ext in extensions) {
        ext.visitChildren(this);
      }
    }

    final typeName = type.getTypeName(NullabilitySuffix.none);
    final isMarshaler = (_marshal != null) && (_unmarshal != null);
    final isJson = !isMarshaler && (_toJson != null) && (_fromJson != null);

    // get loader name if static methods are implemented via extensions
    final loader = isMarshaler
        ? _unmarshal!.enclosingElement!
        : (isJson ? _fromJson!.enclosingElement! : null);
    String? loaderTypeName;
    if (loader is ExtensionElement) {
      final pre = typeManager.getPrefixFor(loader.library);
      loaderTypeName = pre.isEmpty ? loader.name! : '$pre.${loader.name!}';
    }

    // return marshaler
    if (isMarshaler) {
      return Marshaler.self(typeName, loaderTypeName);
    } else if (isJson) {
      return Marshaler.json(typeName, loaderTypeName);
    } else {
      return null;
    }
  }

  Element? _toJson;
  Element? get toJson => _toJson;

  bool _checkImplementsToJson(Element element) {
    final decl = element.declaration ?? element;
    var isImpl = false, accessible = !decl.isPrivate;
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
      isImpl = accessible && !hasParams && _isJson(returnType);
    }
    if (_toJson == null && isImpl) _toJson = decl;
    return isImpl;
  }

  Element? _fromJson;
  Element? get fromJson => _fromJson;

  bool _checkImplementsFromJson(Element element) {
    final decl = element.declaration ?? element;
    var isImpl = false, accessible = !decl.isPrivate;
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
      isImpl = accessible && _isJson(param?.type) && _isSync(returnType);
    }
    if (_fromJson == null && isImpl) _fromJson = decl;
    return isImpl;
  }

  Element? _marshal;
  Element? get marshal => _marshal;

  bool _checkImplementsMarshal(Element element) {
    final decl = element.declaration ?? element;
    var isImpl = false, accessible = !decl.isPrivate;
    if (accessible && decl.name == 'marshal') {
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
      isImpl = accessible && !hasParams && _isSync(returnType);
    }
    if (_marshal == null && isImpl) _marshal = decl;
    return isImpl;
  }

  Element? _unmarshal;
  Element? get unmarshal => _unmarshal;

  bool _checkImplementsUnmarshal(Element element) {
    final decl = element.declaration ?? element;
    var isImpl = false, accessible = !decl.isPrivate;
    if (accessible && decl.name == 'unmarshal') {
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
      isImpl = accessible && _isSync(param?.type) && _isSync(returnType);
    }
    if (_unmarshal == null && isImpl) _unmarshal = decl;
    return isImpl;
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
    element = element.declaration;
    _checkImplementsFromJson(element) || _checkImplementsUnmarshal(element);
  }

  @override
  void visitMethodElement(MethodElement element) {
    element = element.declaration;
    _checkImplementsFromJson(element) ||
        _checkImplementsToJson(element) ||
        _checkImplementsUnmarshal(element) ||
        _checkImplementsMarshal(element);
  }

  @override
  void visitFieldElement(FieldElement element) {
    element = element.declaration;
    _checkImplementsFromJson(element) ||
        _checkImplementsToJson(element) ||
        _checkImplementsUnmarshal(element) ||
        _checkImplementsMarshal(element);
  }

  @override
  void visitPropertyAccessorElement(PropertyAccessorElement element) {
    if (element.isGetter) {
      element = element.declaration;
      _checkImplementsFromJson(element) ||
          _checkImplementsToJson(element) ||
          _checkImplementsUnmarshal(element) ||
          _checkImplementsMarshal(element);
    }
  }
}
