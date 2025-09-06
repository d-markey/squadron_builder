import 'dart:collection';

import 'package:source_gen/source_gen.dart';

import '../_analyzer_helpers.dart';
import '../_helpers.dart';
import '../marshalers/deser.dart';
import '../marshalers/marshaler.dart';
import '../marshalers/marshaling_context.dart';
import 'type_manager.dart';

part 'imported_type.dart';
part 'managed_type_impl.dart';
part 'managed_type_iterable.dart';
part 'managed_type_map.dart';
part 'managed_type_record.dart';
part 'managed_type_set.dart';

typedef MarshalerBuilder = Marshaler Function(ManagedType);

abstract class ManagedType with ManagedTypeMixin {
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

  @override
  final NullabilitySuffix nullabilitySuffix;

  @override
  bool get isDynamic => dartType is DynamicType;

  ManagedType? _nullable;
  ManagedType get nullable =>
      isNullable ? this : (_nullable ??= _forceNullability(true));

  ManagedType? _nonNullable;
  ManagedType get nonNullable =>
      isNullable ? (_nonNullable ??= _forceNullability(false)) : this;

  ManagedType _forceNullability(bool nullable);

  DeSer? ser(MarshalingContext context, bool? withContext);
  DeSer? deser(MarshalingContext context);

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

  String getTypeName({bool omitPrefix = false}) {
    final px = omitPrefix ? '' : prefix;
    try {
      if (dartType is VoidType) {
        return '${px}void';
      } else if (dartType is DynamicType) {
        return '${px}dynamic';
      }
      final a = typeArguments.isEmpty ? '' : '<${typeArguments.join(', ')}>';
      return '$px${dartType!.elt!.name}$a${nullabilitySuffix.suffix}';
    } catch (ex) {
      throw InvalidGenerationSourceError(
          'Error for dartType = $dartType / element = ${dartType?.elt}');
    }
  }

  @override
  String toString() => getTypeName();
}

mixin ManagedTypeMixin {
  Marshaler? _attachedMarshaler;

  Marshaler? get attachedMarshaler => _attachedMarshaler;

  void attachMarshaler(Marshaler marshaler) => throw UnimplementedError();

  NullabilitySuffix get nullabilitySuffix;

  bool get isDynamic;

  bool get isPrimaryType => false;
  bool get isNumericType => false;

  bool get isNullable =>
      isDynamic || (nullabilitySuffix != NullabilitySuffix.none);

  void throwIfNullable() {
    if (isNullable) throw InvalidGenerationSourceError('Unexpected nullable');
  }
}
