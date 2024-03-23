import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';

import '../marshalers/marshaler.dart';
import 'extensions.dart';

abstract class ManagedType {
  ManagedType._(String? prefix, [Iterable<ManagedType>? typeArguments])
      : prefix = prefix ?? '',
        typeArguments = (typeArguments == null || typeArguments.isEmpty)
            ? const []
            : typeArguments.toList();

  factory ManagedType(String? prefix, DartType dartType,
      [Iterable<ManagedType>? typeArguments]) {
    if (dartType is DynamicType) {
      return ManagedDynamicType._(prefix, dartType);
    } else if (dartType is VoidType) {
      return ManagedVoidType._(prefix, dartType);
    } else if (dartType is FunctionType) {
      throw ArgumentError('ManagedType cannot handle ${dartType.runtimeType}');
    } else if (dartType.element == null) {
      throw ArgumentError(
          'ManagedType cannot handle ${dartType.runtimeType} when element is null');
    } else {
      return _ManagedType._(prefix, dartType, typeArguments);
    }
  }

  factory ManagedType.knownType(
          String? prefix, String packageName, String baseName,
          [Iterable<ManagedType>? typeArguments]) =>
      KnownType._(prefix, packageName, baseName, typeArguments);

  factory ManagedType.function(String? prefix, DartType functionType,
          ManagedType returnType, Iterable<ManagedParameter>? parameters) =>
      ManagedFunctionType._(prefix, functionType, returnType, parameters);

  final String prefix;
  final List<ManagedType> typeArguments;

  DartType? get dartType;

  NullabilitySuffix get nullabilitySuffix;

  String getTypeName([NullabilitySuffix? forcedNullabilitySuffix]);

  @override
  String toString() => getTypeName();
}

class _ManagedType extends ManagedType {
  _ManagedType._(String? prefix, this.dartType,
      [Iterable<ManagedType>? typeArguments])
      : super._(prefix, typeArguments);

  @override
  final DartType dartType;

  @override
  NullabilitySuffix get nullabilitySuffix => dartType.nullabilitySuffix;

  @override
  String getTypeName([NullabilitySuffix? forcedNullabilitySuffix]) {
    try {
      final s = (forcedNullabilitySuffix ?? dartType.nullabilitySuffix).suffix;
      final a = typeArguments.isNotEmpty ? '<${typeArguments.join(', ')}>' : '';
      return prefix.isEmpty
          ? '${dartType.element!.name}$a$s'
          : '$prefix.${dartType.element!.name}$a$s';
    } catch (ex) {
      throw Exception(
          'Error for dartType = $dartType / element = ${dartType.element}');
    }
  }

  @override
  String toString() => getTypeName();
}

class KnownType extends ManagedType {
  KnownType._(String? prefix, this.packageName, this.baseName,
      [Iterable<ManagedType>? typeArguments])
      : super._(prefix, typeArguments);

  final String packageName;
  final String baseName;

  @override
  DartType? get dartType => null;

  @override
  NullabilitySuffix get nullabilitySuffix => NullabilitySuffix.none;

  @override
  String getTypeName([NullabilitySuffix? forcedNullabilitySuffix]) {
    final s = (forcedNullabilitySuffix ?? NullabilitySuffix.none).suffix;
    final a = typeArguments.isNotEmpty ? '<${typeArguments.join(', ')}>' : '';
    return prefix.isEmpty ? '$baseName$a$s' : '$prefix.$baseName$a$s';
  }
}

class ManagedDynamicType extends _ManagedType {
  ManagedDynamicType._(super.prefix, super.dartType) : super._();

  @override
  String getTypeName([NullabilitySuffix? forcedNullabilitySuffix]) {
    final s = (forcedNullabilitySuffix ?? dartType.nullabilitySuffix).suffix;
    return prefix.isEmpty ? 'dynamic$s' : '$prefix.dynamic$s';
  }
}

class ManagedVoidType extends _ManagedType {
  ManagedVoidType._(super.prefix, super.dartType) : super._();

  @override
  String getTypeName([NullabilitySuffix? forcedNullabilitySuffix]) {
    final s = (forcedNullabilitySuffix ?? dartType.nullabilitySuffix).suffix;
    return prefix.isEmpty ? 'void$s' : '$prefix.void$s';
  }
}

class ManagedFunctionType extends _ManagedType {
  ManagedFunctionType._(super.prefix, super.dartType, this.returnType,
      [Iterable<ManagedParameter>? parameters])
      : parameters =
            (parameters?.isEmpty ?? true) ? null : parameters?.toList(),
        super._();

  final ManagedType returnType;
  final List<ManagedParameter>? parameters;

  @override
  String getTypeName([NullabilitySuffix? forcedNullabilitySuffix]) {
    final n = super.getTypeName(NullabilitySuffix.none);
    final s = (forcedNullabilitySuffix ?? dartType.nullabilitySuffix).suffix;
    return '$returnType $n(${parameters?.join(', ') ?? ''})$s';
  }
}

class ManagedParameter {
  ManagedParameter(
    this.type,
    this.name, {
    this.defaultValueCode,
    this.isOptionalPositional = false,
    bool isRequired = false,
    this.isOptionalNamed = false,
    this.forcedNullabilitySuffix,
  }) : required = isRequired ? 'required ' : '';

  final ManagedType type;
  final String name;
  final String? defaultValueCode;
  final bool isOptionalPositional;
  final bool isOptionalNamed;
  final String required;
  final NullabilitySuffix? forcedNullabilitySuffix;

  @override
  String toString() {
    return (defaultValueCode?.isEmpty ?? true)
        ? '$required${type.getTypeName(forcedNullabilitySuffix)} $name'
        : '$required${type.getTypeName(forcedNullabilitySuffix)} $name = $defaultValueCode';
  }
}

class MarshaledManagedType extends ManagedType {
  MarshaledManagedType._(this.managedType, this.marshaler) : super._('');

  final ManagedType managedType;
  final Marshaler marshaler;

  @override
  DartType? get dartType => managedType.dartType;

  @override
  String getTypeName([NullabilitySuffix? forcedNullabilitySuffix]) =>
      managedType.getTypeName(forcedNullabilitySuffix);

  @override
  NullabilitySuffix get nullabilitySuffix => managedType.nullabilitySuffix;
}

class ManagedRecordType extends ManagedType {
  ManagedRecordType(this.dartType, this.positional, this.named) : super._('');

  @override
  final DartType? dartType;

  final List<ManagedType> positional;
  final Map<String, ManagedType> named;

  @override
  String getTypeName([NullabilitySuffix? forcedNullabilitySuffix]) {
    final suffix = (forcedNullabilitySuffix ?? nullabilitySuffix).suffix;
    final p = positional.map((t) => t.getTypeName()).join(', ');
    final n = named.entries
        .map((t) => '${t.value.getTypeName()} ${t.key}')
        .join(', ');
    if (p.isEmpty) {
      return '({$n})$suffix';
    } else if (n.isEmpty) {
      return '($p)$suffix';
    } else {
      return '($p, {$n})$suffix';
    }
  }

  @override
  NullabilitySuffix get nullabilitySuffix =>
      dartType?.nullabilitySuffix ?? NullabilitySuffix.none;
}
