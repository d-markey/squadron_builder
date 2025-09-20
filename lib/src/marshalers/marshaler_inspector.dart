import 'dart:collection';

import 'package:source_gen/source_gen.dart';

import '../_analyzer_helpers.dart';
import '../types/managed_type.dart';
import '../types/type_manager.dart';
import 'marshaler.dart';

abstract class MarshalerInspector {
  factory MarshalerInspector(TypeManager typeManager) = _MarshalerInspector;

  Marshaler? getMarshalerFor(ManagedType type);
}

class _MarshalerInspector extends GeneralizingElementVisitor2
    implements MarshalerInspector {
  _MarshalerInspector(this._typeManager);

  final TypeManager _typeManager;

  ManagedType? _inspectedType;

  @override
  Marshaler? getMarshalerFor(ManagedType type) {
    // make sure type can be visited
    final clazz = type.dartType?.element?.baseElement;
    if (clazz == null) return null;

    if (_inspectedType != null) {
      throw InvalidGenerationSourceError(
        'Looking up marshalers for $_inspectedType: cannot handle $type',
      );
    }
    _inspectedType = type;

    if (type.isDynamic) return null;
    final dartType = type.dartType;
    if (dartType == null) return null;
    if (dartType.isDartCoreObject || dartType.isBaseType || !dartType.isSync) {
      return null;
    }

    try {
      // final attached marshaler if provided
      final explicit = _typeManager.getExplicitMarshaler(clazz);
      if (explicit != null) return explicit;

      // reset state
      _toJson = null;
      _fromJson = null;
      _fromJsonType = null;
      _marshal = null;
      _unmarshal = null;
      _unmarshalType = null;

      // check this type
      clazz.visitChildren(this);

      // check inheritance tree
      if (!_hasMarshaler || !_hasJsonifier) {
        final types = <DartType>[], seen = <DartType>{};
        types.registerSuperTypes(dartType);
        while (types.isNotEmpty && (!_hasMarshaler || !_hasJsonifier)) {
          final t = types.removeAt(0);
          if (!seen.add(t)) continue;
          types.registerSuperTypes(t);
          t.element?.baseElement.visitChildren(this);
        }
      }

      // also check methods/getters defined in extensions of this type
      if (!_hasMarshaler) {
        final extensions = _typeManager.library.lookupExtensionsFor(dartType);
        if (extensions.isNotEmpty) {
          for (var ext in extensions) {
            ext.visitChildren(this);
          }
        }
      }

      final typeName = type.nonNullable.getTypeName();
      final isMarshaler = _hasMarshaler;
      final isJson = !isMarshaler && _hasJsonifier;

      // get hydrater name if static methods are implemented via extensions
      final deserElt =
          isMarshaler
              ? _unmarshal!.enclosingElement!.baseElement
              : (isJson ? _fromJson!.enclosingElement!.baseElement : null);
      String? deserExt;
      if (deserElt is ExtensionElement && (deserElt.name ?? '').isNotEmpty) {
        final prefix = _typeManager.getPrefixFor(deserElt);
        deserExt = '${prefix.isEmpty ? '' : '$prefix.'}${deserElt.name}';
      } else if (deserElt is InterfaceElement && deserElt != clazz) {
        final prefix = _typeManager.getPrefixFor(deserElt);
        deserExt = '${prefix.isEmpty ? '' : '$prefix.'}${deserElt.name}';
      }

      // get serializer name if methods are implemented via extensions
      final serElt =
          isMarshaler
              ? _marshal!.enclosingElement!.baseElement
              : (isJson ? _toJson!.enclosingElement!.baseElement : null);
      String? serExt;
      if (serElt is ExtensionElement && (serElt.name ?? '').isNotEmpty) {
        final prefix = _typeManager.getPrefixFor(serElt);
        serExt = '${prefix.isEmpty ? '' : '$prefix.'}${serElt.name}';
      }

      // return marshaler
      if (isMarshaler) {
        return Marshaler.self(
          typeName,
          deserExt,
          serExt,
          _marshalingContext,
          _unmarshalingContext,
          dartType != _unmarshalType,
        );
      } else if (isJson) {
        return Marshaler.json(
          typeName,
          deserExt,
          serExt,
          dartType != _fromJsonType,
        );
      } else {
        return null;
      }
    } finally {
      _inspectedType = null;
    }
  }

  bool get _hasJsonifier => _fromJson != null && _toJson != null;
  bool get _hasMarshaler => _unmarshal != null && _marshal != null;

  // === JSON MARSHALING ===

  Element? _toJson;

  Element? _getToJsonImpl(Element element) {
    // make sure this is the right element
    final decl = element.baseElement;
    if (decl.name != 'toJson' || !decl.isPublic) return null;

    final bool hasParams;
    final DartType returnType;
    switch (decl) {
      case final FieldElement fld
          when fld.isInstanceImpl && (fld.type is FunctionType):
        // Function field
        final func = fld.type as FunctionType;
        returnType = func.returnType;
        hasParams = func.formalParameters.isNotEmpty;
      case final PropertyAccessorElement getter
          when getter.isGetter &&
              getter.isInstanceImpl &&
              (getter.type.returnType is FunctionType):
        // Function getter
        final func = getter.type.returnType as FunctionType;
        returnType = func.returnType;
        hasParams = func.formalParameters.isNotEmpty;
      case final MethodElement callable when callable.isInstanceImpl:
        // method
        returnType = callable.returnType;
        hasParams = callable.formalParameters.isNotEmpty;
      default:
        // unsupported
        return null;
    }

    // check that we have a match
    return (returnType.isJson && !hasParams) ? decl : null;
  }

  void _checkImplementsToJson(Element element) {
    final toJson = _getToJsonImpl(element);
    if (toJson != null) {
      _toJson = _inspectedType!.selectClosestImpl(toJson, _toJson);
    }
  }

  Element? _fromJson;
  DartType? _fromJsonType;

  (Element, DartType)? _getFromJsonImpl(Element element) {
    // make sure this is the right element
    final decl = element.baseElement, dotIdx = decl.name?.indexOf('.') ?? -1;
    final name = (dotIdx >= 0) ? decl.name?.substring(dotIdx + 1) : decl.name;
    if (name != 'fromJson' || !decl.isPublic) return null;

    // get details
    final FormalParameterElement? param;
    final DartType returnType;
    switch (decl) {
      case final FieldElement fld
          when fld.isStaticImpl && (fld.type is FunctionType):
        // Function field
        final func = fld.type as FunctionType;
        param = func.formalParameters.singleOrNull?.baseElement;
        returnType = func.returnType;
      case final PropertyAccessorElement getter
          when getter.isGetter &&
              getter.isStaticImpl &&
              (getter.type.returnType is FunctionType):
        // Function getter
        final func = getter.type.returnType as FunctionType;
        param = func.formalParameters.singleOrNull?.baseElement;
        returnType = func.returnType;
      case final ExecutableElement callable
          when (callable is MethodElement || callable.isStaticImpl) ||
              (callable is ConstructorElement):
        // method or constructor
        param = callable.formalParameters.singleOrNull?.baseElement;
        returnType = callable.returnType;
      default:
        // unsupported
        return null;
    }

    // check that we have a match
    return (returnType.isSync && (param?.type.isJson ?? false))
        ? (decl, returnType)
        : null;
  }

  void _checkImplementsFromJson(Element element) {
    final fromJson = _getFromJsonImpl(element);
    if (fromJson != null) {
      _fromJson = _inspectedType!.selectClosestImpl(fromJson.$1, _fromJson);
      if (_fromJson == fromJson.$1) {
        _fromJsonType = fromJson.$2;
      }
    }
  }

  // === SQUADRON MARSHALING ===

  FormalParameterElement? _getMarshalingContextParam(
    List<FormalParameterElement> params,
    int idx,
  ) {
    final param = params.skip(idx).take(1).firstOrNull;

    // missing parameter, accepted because a marshaling context is optional
    if (param == null) return null;

    final type = _typeManager.handleDartType(param.type);
    return type.nonNullable.getTypeName() ==
            _typeManager.TMarshalingContext.getTypeName()
        ? param
        : null;
  }

  Element? _marshal;
  FormalParameterElement? _marshalingContext;

  Element? _getMarshalImpl(Element element) {
    // make sure this is the right element
    final decl = element.baseElement;
    if (decl.name != 'marshal' || !decl.isPublic) return null;

    // get details
    final DartType returnType;
    switch (decl) {
      case FieldElement fld
          when fld.isInstanceImpl && (fld.type is FunctionType):
        // Function field
        final func = fld.type as FunctionType;
        returnType = func.returnType;
        _marshalingContext = _getMarshalingContextParam(
          func.formalParameters,
          0,
        );
      case PropertyAccessorElement getter
          when getter.isInstanceImpl &&
              getter.isGetter &&
              (getter.type.returnType is FunctionType):
        // Function getter
        final func = getter.type.returnType as FunctionType;
        returnType = func.returnType;
        _marshalingContext = _getMarshalingContextParam(
          func.formalParameters,
          0,
        );
      case MethodElement callable when callable.isInstanceImpl:
        // method
        returnType = decl.returnType;
        _marshalingContext = _getMarshalingContextParam(
          decl.formalParameters,
          0,
        );
      default:
        // unsupported
        return null;
    }

    // check that we have a match
    return returnType.isSync ? decl : null;
  }

  void _checkImplementsMarshal(Element element) {
    final marshal = _getMarshalImpl(element);
    if (marshal != null) {
      _marshal = _inspectedType!.selectClosestImpl(marshal, _marshal);
    }
  }

  Element? _unmarshal;
  FormalParameterElement? _unmarshalingContext;
  DartType? _unmarshalType;

  (Element, DartType)? _getUnmarshalImpl(Element element) {
    // make sure this is the right element
    final decl = element.baseElement;
    final name = decl.name;
    if (name != 'unmarshal' || !decl.isPublic) return null;

    final FormalParameterElement? param;
    final DartType returnType;
    switch (decl) {
      case FieldElement fld when fld.isStaticImpl && (fld.type is FunctionType):
        // Function field
        final func = fld.type as FunctionType;
        param = func.formalParameters.firstOrNull?.baseElement;
        _unmarshalingContext = _getMarshalingContextParam(
          func.formalParameters,
          1,
        );
        returnType = func.returnType;
      case PropertyAccessorElement getter
          when getter.isGetter &&
              getter.isStaticImpl &&
              (getter.type.returnType is FunctionType):
        // Function getter
        final func = getter.type.returnType as FunctionType;
        param = func.formalParameters.firstOrNull?.baseElement;
        _unmarshalingContext = _getMarshalingContextParam(
          func.formalParameters,
          1,
        );
        returnType = func.returnType;
      case ExecutableElement callable
          when (callable is MethodElement || callable.isStaticImpl) ||
              (callable is ConstructorElement):
        // method or constructor
        param = callable.formalParameters.firstOrNull?.baseElement;
        _unmarshalingContext = _getMarshalingContextParam(
          decl.formalParameters,
          1,
        );
        returnType = callable.returnType;
      default:
        // unsupported
        return null;
    }

    // check that we have a match
    return (returnType.isSync && (param?.type.isSync ?? false))
        ? (decl, returnType)
        : null;
  }

  void _checkImplementsUnmarshal(Element element) {
    final unmarshal = _getUnmarshalImpl(element);
    if (unmarshal != null) {
      _unmarshal = _inspectedType!.selectClosestImpl(unmarshal.$1, _unmarshal);
      if (_unmarshal == unmarshal.$1) {
        _unmarshalType = unmarshal.$2;
      }
    }
  }

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

extension on ManagedType {
  Element selectClosestImpl(Element candidate, Element? current) {
    if (current == null) return candidate;
    final type = dartType, target = type?.element?.baseElement;
    if (target == null) return current;
    type as DartType;

    var candidateOwner = candidate.enclosingElement?.baseElement;
    if (candidateOwner is ExtensionElement) {
      candidateOwner = candidateOwner.extendedType.element?.baseElement;
    }
    var currentOwner = current.enclosingElement?.baseElement;
    if (currentOwner is ExtensionElement) {
      currentOwner = currentOwner.extendedType.element?.baseElement;
    }

    // if we have an exact match, return it
    if (currentOwner == target) return current;
    if (candidateOwner == target) return candidate;

    // TODO: inspect inheritance tree to assess candidate vs. current
    // until then, the first encountered implementation is kept (= pre-existing behavior)
    return current;
  }
}

extension on List<DartType> {
  void registerSuperTypes(DartType t) {
    var elt = t.element?.baseElement;
    if (elt is InterfaceElement) {
      if (elt.supertype != null) {
        final superType = elt.supertype!;
        if (!superType.isDartCoreObject) {
          add(superType);
        }
      }
      addAll(elt.interfaces);
      addAll(elt.mixins);
    }
  }
}
