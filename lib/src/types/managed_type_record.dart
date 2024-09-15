part of 'managed_type.dart';

class ManagedRecordType extends ManagedType {
  ManagedRecordType._(this.dartType, TypeManager typeManager)
      : positional = dartType.positionalFields
            .map((t) => typeManager.handleDartType(t.type))
            .toList(),
        named = Map.fromEntries(dartType.namedFields.map(
          (t) => MapEntry(t.name, typeManager.handleDartType(t.type)),
        )),
        super._('', dartType, typeManager);

  @override
  final RecordType dartType;

  final List<ManagedType> positional;
  final Map<String, ManagedType> named;

  @override
  void setMarshaler(TypeManager typeManager) {}

  @override
  String getSerializer(Converters converters) {
    String $serialize(ManagedType type, String field) {
      final value = '\$.$field';
      final serializer = converters.getSerializerOf(type, null);
      return serializer.isEmpty ? value : '$serializer($value)';
    }

    return '((${getTypeName()} \$) => [${[
      ...positional.indexed.map((f) => $serialize(f.$2, '\$${f.$1 + 1}')),
      ...named.entries.map((f) => $serialize(f.value, f.key)),
    ].join(', ')}])';
  }

  @override
  String getDeserializer(Converters converters) {
    String $deserialize(ManagedType type, int idx, [String field = '']) {
      final value = '\$[$idx]';
      final deserializer = converters.getDeserializerOf(type, null);
      final res = deserializer.isEmpty ? value : '$deserializer($value)';
      return field.isEmpty ? res : '$field: $res';
    }

    var idx = 0;
    return '((\$) { \$ as List; return (${[
      ...positional.map((f) => $deserialize(f, idx++)),
      ...named.entries.map((f) => $deserialize(f.value, idx++, f.key)),
    ].join(', ')}); })';
  }

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
  NullabilitySuffix get nullabilitySuffix => dartType.nullabilitySuffix;
}
