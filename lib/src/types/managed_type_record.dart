part of 'managed_type.dart';

class _ManagedRecordType extends ManagedType {
  _ManagedRecordType._(
    this.dartType,
    TypeManager typeManager,
    NullabilitySuffix nullabilitySuffix,
  )   : positional = dartType.positionalFields
            .map((t) => typeManager.handleDartType(t.type))
            .toList(),
        named = Map.fromEntries(dartType.namedFields.map(
          (t) => MapEntry(t.name, typeManager.handleDartType(t.type)),
        )),
        super._('', dartType, typeManager, nullabilitySuffix);

  @override
  _ManagedRecordType _forceNullability(bool nullable) => _ManagedRecordType._(
        dartType,
        typeManager,
        nullable ? NullabilitySuffix.question : NullabilitySuffix.none,
      );

  @override
  final RecordType dartType;

  final List<ManagedType> positional;
  final Map<String, ManagedType> named;

  @override
  String getSerializer() {
    String $serialize(ManagedType type, String field) =>
        '${type.getSerializer()}(\$.$field),';

    return '((${getTypeName()} \$) => [${[
      ...positional.indexed.map((f) => $serialize(f.$2, '\$${f.$1 + 1}')),
      ...named.entries.map((f) => $serialize(f.value, f.key)),
    ].join()}])';
  }

  @override
  String getDeserializer() {
    String $deserialize(ManagedType type, int idx, [String field = '']) {
      final res = '${type.getDeserializer()}(\$[$idx]),';
      return field.isEmpty ? res : '$field: $res';
    }

    var idx = 0;
    return '((\$) { \$ as List; return (${[
      ...positional.map((f) => $deserialize(f, idx++)),
      ...named.entries.map((f) => $deserialize(f.value, idx++, f.key)),
    ].join()}); })';
  }

  @override
  String getTypeName() {
    final p = positional.join(', ');
    final n = named.entries.map((t) => '${t.value} ${t.key}').join(', ');
    if (n.isEmpty) {
      return '($p)${nullabilitySuffix.suffix}';
    } else if (p.isEmpty) {
      return '({$n})${nullabilitySuffix.suffix}';
    } else {
      return '($p, {$n})${nullabilitySuffix.suffix}';
    }
  }
}
