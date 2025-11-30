part of 'managed_type.dart';

class _ManagedRecordType extends ManagedType {
  _ManagedRecordType._(
    this.dartType,
    TypeManager typeManager,
    NullabilitySuffix nullabilitySuffix,
  ) : positional = dartType.positionalFields
          .map((t) => typeManager.handleDartType(t.type))
          .toList(),
      named = Map.fromEntries(
        dartType.namedFields.map(
          (t) => MapEntry(t.name, typeManager.handleDartType(t.type)),
        ),
      ),
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
  DeSer ser(MarshalingContext context, bool? withContext) {
    var needsContext = false, contextAware = false;
    String $serialize(ManagedType type, String field) {
      final serializer = context.ser(type, withContext);
      needsContext |= serializer.needsContext;
      contextAware |= serializer.contextAware;
      return (serializer == null)
          ? '\$.$field'
          : '${serializer.code}(\$.$field)';
    }

    final code =
        '((${getTypeName()} \$) => [${[...positional.indexed.map((f) => $serialize(f.$2, '\$${f.$1 + 1}')), ...named.entries.map((f) => $serialize(f.value, f.key))].join(',')}])';
    return DeSer(code, needsContext, contextAware);
  }

  @override
  DeSer deser(MarshalingContext context) {
    var needsContext = false, contextAware = false;
    String $deserialize(ManagedType type, int idx, [String field = '']) {
      final deserializer = context.deser(type);
      needsContext |= deserializer.needsContext;
      contextAware |= deserializer.contextAware;
      final res = (deserializer == null)
          ? '\$[$idx]'
          : '${deserializer.code}(\$[$idx])';
      return field.isEmpty ? res : '$field: $res';
    }

    var idx = 0;
    final code =
        '((\$) { \$ as List; return (${[...positional.map((f) => $deserialize(f, idx++)), ...named.entries.map((f) => $deserialize(f.value, idx++, f.key))].join(',')}); })';
    return DeSer(code, needsContext, contextAware);
  }

  @override
  String getTypeName({
    bool omitPrefix = false,
    NullabilitySuffix? forcedNullabilitySuffix,
  }) {
    forcedNullabilitySuffix ??= nullabilitySuffix;
    final p = positional
        .map((p) => p.getTypeName(omitPrefix: omitPrefix))
        .join(', ');
    final n = named.entries
        .map((t) => '${t.value.getTypeName(omitPrefix: omitPrefix)} ${t.key}')
        .join(', ');
    if (n.isEmpty) {
      return '($p)${forcedNullabilitySuffix.suffix}';
    } else if (p.isEmpty) {
      return '({$n})${forcedNullabilitySuffix.suffix}';
    } else {
      return '($p, {$n})${forcedNullabilitySuffix.suffix}';
    }
  }
}
