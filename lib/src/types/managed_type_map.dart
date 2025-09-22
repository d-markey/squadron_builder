part of 'managed_type.dart';

class _ManagedMapType extends ManagedType {
  _ManagedMapType._(
    String prefix,
    this.dartType,
    TypeManager typeManager,
    NullabilitySuffix nullabilitySuffix,
  ) : super._(prefix, dartType, typeManager, nullabilitySuffix);

  @override
  _ManagedMapType _forceNullability(bool nullable) => _ManagedMapType._(
    prefix,
    dartType,
    typeManager,
    nullable ? NullabilitySuffix.question : NullabilitySuffix.none,
  );

  @override
  final ParameterizedType dartType;

  @override
  DeSer? ser(MarshalingContext context, bool? withContext) {
    throwIfNullable();

    final args = StringBuffer();

    final key = typeArguments.first;
    final kcast = context.ser(key.nonNullable, withContext);
    if (kcast != null) args.csv('kcast: ${kcast.code}');

    final value = typeArguments.last;
    final vcast = context.ser(value.nonNullable, withContext);
    if (vcast != null) args.csv('vcast: ${vcast.code}');

    if (args.isEmpty) return null;

    final map = value.isNullable ? 'nmap' : 'map';
    final code = '$map($args)';
    return DeSer(code, true, kcast.contextAware || vcast.contextAware);
  }

  @override
  DeSer? deser(MarshalingContext context) {
    throwIfNullable();

    final args = StringBuffer();

    final key = typeArguments.first;
    final kcast = context.deser(key.nonNullable);
    if (kcast != null) args.csv('kcast: ${kcast.code}');

    final value = typeArguments.last;
    final vcast = context.deser(value.nonNullable);
    if (vcast != null) args.csv('vcast: ${vcast.code}');

    final map = value.isNullable ? 'nmap' : 'map';
    final code = '$map<${key.nonNullable}, ${value.nonNullable}>($args)';
    return DeSer(code, true, kcast.contextAware || vcast.contextAware);
  }
}
