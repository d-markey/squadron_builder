import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:squadron_builder/src/types/type_manager.dart';

import '../marshalers/converters.dart';
import '../marshalers/marshaler.dart';
import 'extensions.dart';

part 'managed_type_iterable.dart';
part 'managed_type_map.dart';
part 'managed_type_record.dart';
part 'managed_type_set.dart';
part 'managed_type_typed_data.dart';

typedef MarshalerBuilder = Marshaler Function(ManagedType);

abstract class ManagedType {
  ManagedType._(String? prefix, DartType? dartType, TypeManager typeManager)
      : prefix = prefix ?? '',
        typeArguments = (dartType is ParameterizedType)
            ? dartType.typeArguments.map(typeManager.handleDartType).toList()
            : const [];

  Marshaler? _attachedMarshaler;
  Marshaler? get attachedMarshaler => _attachedMarshaler;

  void setMarshaler(TypeManager typeManager);

  String getSerializer(Converters converters);
  String getDeserializer(Converters converters);

  factory ManagedType(
      String? prefix, DartType dartType, TypeManager typeManager) {
    if (dartType.isDartCoreMap) {
      return _ManagedMapType._(
          prefix, dartType as ParameterizedType, typeManager);
    } else if (dartType.isDartCoreSet) {
      return _ManagedSetType._(
          prefix, dartType as ParameterizedType, typeManager);
    } else if (dartType.isDartCoreIterable || dartType.isDartCoreList) {
      return _ManagedIterableType._(
          prefix, dartType as ParameterizedType, typeManager);
    } else if (dartType.isA(typeManager.typedDataType)) {
      return _ManagedTypedDataType._(prefix, dartType, typeManager);
    } else {
      return _ManagedType._(prefix, dartType, typeManager);
    }
  }

  factory ManagedType.record(
    RecordType dartType,
    TypeManager typeManager,
  ) =>
      ManagedRecordType._(dartType, typeManager);

  final String prefix;
  final List<ManagedType> typeArguments;
  DartType? get dartType;

  NullabilitySuffix get nullabilitySuffix;

  String getTypeName([NullabilitySuffix? forcedNullabilitySuffix]) {
    try {
      if (dartType is VoidType) {
        return prefix.isEmpty ? 'void' : '$prefix.void';
      } else if (dartType is DynamicType) {
        return prefix.isEmpty ? 'void' : '$prefix.void';
      }

      final s = (forcedNullabilitySuffix ?? dartType!.nullabilitySuffix).suffix;
      final a = typeArguments.isEmpty ? '' : '<${typeArguments.join(', ')}>';
      return prefix.isEmpty
          ? '${dartType!.element!.name}$a$s'
          : '$prefix.${dartType!.element!.name}$a$s';
    } catch (ex) {
      throw Exception(
          'Error for dartType = $dartType / element = ${dartType?.element}');
    }
  }

  @override
  String toString() => getTypeName();
}

class _ManagedType extends ManagedType {
  _ManagedType._(String? prefix, this.dartType, TypeManager typeManager)
      : super._(prefix, dartType, typeManager);

  @override
  final DartType dartType;

  @override
  NullabilitySuffix get nullabilitySuffix => dartType.nullabilitySuffix;

  @override
  String getSerializer(Converters converters) =>
      attachedMarshaler?.serializerOf(this, converters) ?? '';

  @override
  String getDeserializer(Converters converters) =>
      attachedMarshaler?.deserializerOf(this, converters) ??
      '${converters.instance}.value<${getTypeName(NullabilitySuffix.none)}>()';

  @override
  void setMarshaler(TypeManager typeManager) {
    final element = dartType.element;
    if (element == null) return;
    _attachedMarshaler =
        typeManager.getExplicitMarshaler(element) ?? _getSelfMarshalerBuilder();
  }

  Marshaler? _getSelfMarshalerBuilder() {
    final checker = _MarshalerChecker();
    dartType.element?.visitChildren(checker);
    if (checker.hasMarshal && checker.hasUnmarshal) {
      return Marshaler.instance(this);
    } else if (checker.hasFromJson && checker.hasToJson) {
      return Marshaler.json(this);
    } else {
      return null;
    }
  }
}

class _MarshalerChecker extends SimpleElementVisitor {
  _MarshalerChecker();

  final _methods = <ExecutableElement>[];

  bool get hasToJson => _methods.any((m) =>
      m is MethodElement &&
      !m.isPrivate &&
      !m.isAbstract &&
      m.returnType.isDartCoreMap &&
      m.name == 'toJson' &&
      m.parameters.isEmpty);

  bool get hasFromJson => _methods.any((c) =>
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

  bool get hasMarshal => _methods.any((m) =>
      m is MethodElement &&
      !m.isPrivate &&
      !m.isAbstract &&
      m.name == 'marshal' &&
      m.parameters.isEmpty);

  bool get hasUnmarshal => _methods.any((c) =>
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

  @override
  void visitConstructorElement(ConstructorElement element) {
    element = element.declaration;
    if (element.name == 'fromJson' || element.name == 'unmarshal') {
      // only interested in constructor 'fromJson()' or 'unmarshal()'
      _methods.add(element);
    }
  }

  @override
  void visitMethodElement(MethodElement element) {
    element = element.declaration;
    if ((!element.isStatic && element.name == 'toJson') ||
        (element.isStatic && element.name == 'fromJson') ||
        (!element.isStatic && element.name == 'marshal') ||
        (element.isStatic && element.name == 'unmarshal')) {
      // only interested in instance methods 'toJson()' / 'marshal()' or static methods 'fromJson()' / 'unmarshal()'
      _methods.add(element);
    }
  }
}
