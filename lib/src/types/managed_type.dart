import 'dart:collection';

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart';

import '../marshalers/marshaler.dart';
import 'extensions.dart';
import 'type_manager.dart';

part 'imported_type.dart';
part 'managed_type_impl.dart';
part 'managed_type_iterable.dart';
part 'managed_type_map.dart';
part 'managed_type_record.dart';
part 'managed_type_set.dart';
part 'marshaler_inspector.dart';

typedef MarshalerBuilder = Marshaler Function(ManagedType);

abstract class ManagedType {
  ManagedType._(
    this.prefix,
    DartType? dartType,
    this.typeManager,
    this.nullabilitySuffix,
  ) : typeArguments = (dartType is ParameterizedType)
            ? dartType.typeArguments.map(typeManager.handleDartType).toList()
            : const [];

  final String prefix;
  DartType? get dartType;
  final List<ManagedType> typeArguments;
  final TypeManager typeManager;
  final NullabilitySuffix nullabilitySuffix;

  Marshaler? _attachedMarshaler;
  Marshaler? get attachedMarshaler => _attachedMarshaler;

  void setMarshaler(Marshaler marshaler) => throw UnimplementedError();

  ManagedType? _nullable;
  ManagedType get nullable =>
      isNullable ? this : (_nullable ??= _forceNullability(true));

  ManagedType? _nonNullable;
  ManagedType get nonNullable =>
      isNullable ? (_nonNullable ??= _forceNullability(false)) : this;

  ManagedType _forceNullability(bool nullable);

  String getSerializer();
  String getDeserializer();

  String serialize(String expr) {
    final serialize = getSerializer();
    return serialize.isEmpty ? expr : '$serialize($expr)';
  }

  String deserialize(String expr) {
    final deserialize = getDeserializer();
    return deserialize.isEmpty ? expr : '$deserialize($expr)';
  }

  factory ManagedType(
      String alias, DartType dartType, TypeManager typeManager) {
    if (dartType.isDartCoreMap) {
      return _ManagedMapType._(
        alias.isEmpty ? '' : '$alias.',
        dartType as ParameterizedType,
        typeManager,
        dartType.nullabilitySuffix,
      );
    } else if (dartType.isDartCoreSet) {
      return _ManagedSetType._(
        alias.isEmpty ? '' : '$alias.',
        dartType as ParameterizedType,
        typeManager,
        dartType.nullabilitySuffix,
      );
    } else if (dartType.isDartCoreIterable || dartType.isDartCoreList) {
      return _ManagedIterableType._(
        alias.isEmpty ? '' : '$alias.',
        dartType as ParameterizedType,
        typeManager,
        dartType.nullabilitySuffix,
      );
    } else {
      return _ManagedTypeImpl._(
        alias.isEmpty ? '' : '$alias.',
        dartType,
        typeManager,
        dartType.nullabilitySuffix,
      );
    }
  }

  factory ManagedType.record(RecordType dartType, TypeManager typeManager) =>
      _ManagedRecordType._(
        dartType,
        typeManager,
        dartType.nullabilitySuffix,
      );

  String getTypeName() {
    try {
      if (dartType is VoidType) {
        return '${prefix}void';
      } else if (dartType is DynamicType) {
        return (nullabilitySuffix == NullabilitySuffix.none)
            ? '${prefix}Object'
            : '${prefix}dynamic';
      }
      final a = typeArguments.isEmpty ? '' : '<${typeArguments.join(', ')}>';
      return '$prefix${dartType!.element!.name}$a${nullabilitySuffix.suffix}';
    } catch (ex) {
      throw Exception(
          'Error for dartType = $dartType / element = ${dartType?.element}');
    }
  }

  @override
  String toString() => getTypeName();
}

extension ManagedTypeExt on ManagedType {
  bool get isNullable => nullabilitySuffix != NullabilitySuffix.none;
}
