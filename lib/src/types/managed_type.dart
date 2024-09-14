import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:squadron_builder/src/types/type_manager.dart';

import '../marshalers/converters.dart';
import '../marshalers/marshaler.dart';
import 'extensions.dart';

part 'managed_type_iterable.dart';
part 'managed_type_map.dart';
part 'managed_type_record.dart';
part 'managed_type_set.dart';
part 'managed_type_typed_data.dart';

abstract class ManagedType {
  ManagedType._(String? prefix, DartType? dartType, this.attachedMarshaler,
      TypeManager typeManager)
      : prefix = prefix ?? '',
        typeArguments = (dartType is ParameterizedType)
            ? dartType.typeArguments.map(typeManager.handleDartType).toList()
            : const [];

  final Marshaler? attachedMarshaler;

  String getSerializer(Converters converters);
  String getDeserializer(Converters converters);

  factory ManagedType(String? prefix, DartType dartType,
      Marshaler? attachedMarshaler, TypeManager typeManager) {
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
      return _ManagedType._(prefix, dartType, attachedMarshaler, typeManager);
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
  _ManagedType._(String? prefix, this.dartType, Marshaler? attachedMarshaler,
      TypeManager typeManager)
      : super._(prefix, dartType, attachedMarshaler, typeManager);

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
}
