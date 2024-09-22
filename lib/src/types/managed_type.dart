import 'dart:collection';

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart';

import '../marshalers/converters.dart';
import '../marshalers/marshaler.dart';
import 'extensions.dart';
import 'type_manager.dart';

part 'managed_type_impl.dart';
part 'managed_type_iterable.dart';
part 'managed_type_map.dart';
part 'managed_type_record.dart';
part 'managed_type_set.dart';
part 'managed_type_typed_data.dart';
part 'marshaler_inspector.dart';

typedef MarshalerBuilder = Marshaler Function(ManagedType);

abstract class ManagedType {
  ManagedType._(this.prefix, DartType? dartType, TypeManager typeManager)
      : typeArguments = (dartType is ParameterizedType)
            ? dartType.typeArguments.map(typeManager.handleDartType).toList()
            : const [];

  Marshaler? _attachedMarshaler;
  Marshaler? get attachedMarshaler => _attachedMarshaler;

  void setMarshaler(TypeManager typeManager);

  String getSerializer(Converters converters);
  String getDeserializer(Converters converters);

  factory ManagedType(
      String prefix, DartType dartType, TypeManager typeManager) {
    if (dartType.isDartCoreMap) {
      return _ManagedMapType._(
          prefix, dartType as ParameterizedType, typeManager);
    } else if (dartType.isDartCoreSet) {
      return _ManagedSetType._(
          prefix, dartType as ParameterizedType, typeManager);
    } else if (dartType.isDartCoreIterable || dartType.isDartCoreList) {
      return _ManagedIterableType._(
          prefix, dartType as ParameterizedType, typeManager);
    } else if (dartType.isA(typeManager.TTypedData)) {
      return _ManagedTypedDataType._(prefix, dartType, typeManager);
    } else {
      return _ManagedTypeImpl._(prefix, dartType, typeManager);
    }
  }

  factory ManagedType.record(
    RecordType dartType,
    TypeManager typeManager,
  ) =>
      ManagedRecordType._(dartType, typeManager);

  final String prefix;

  DartType? get dartType;

  final List<ManagedType> typeArguments;

  // String get baseName => dartType?.baseName ?? '';

  NullabilitySuffix get nullabilitySuffix;

  String getTypeName([NullabilitySuffix? forcedNullabilitySuffix]) {
    try {
      if (dartType is VoidType) {
        return prefix.isEmpty ? 'void' : '$prefix.void';
      } else if (dartType is DynamicType) {
        return prefix.isEmpty ? 'dynamic' : '$prefix.dynamic';
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
