import 'package:squadron_builder/src/marshalers/marshaler.dart';
import 'package:squadron_builder/src/types/managed_type.dart';
import 'package:squadron_builder/src/types/type_manager.dart';

import 'deser.dart';

class MarshalingContext {
  final $dsr = '\$dsr';
  final $sr = '\$sr';

  MarshalingContext();

  void ensureInitialized(TypeManager typeManager) {
    _TMarshalingContext ??= typeManager.TMarshalingContext;
    _TConverter ??= typeManager.TConverter;
  }

  // ignore: non_constant_identifier_names
  ImportedType? _TMarshalingContext;
  // ignore: non_constant_identifier_names
  ImportedType? _TConverter;

  // ignore: non_constant_identifier_names
  ImportedType? get TMarshalingContext => _TMarshalingContext!;
  // ignore: non_constant_identifier_names
  ImportedType? get TConverter => _TConverter;

  DeSer? allowNull(DeSer? convert) =>
      convert?.mapTo('$TConverter.allowNull(${convert.code})');

  final _ser = <String, DeSer>{};
  int get serializerCount => _ser.length;

  final _deser = <String, DeSer>{};
  int get deserializerCount => _deser.length;

  int get count => serializerCount + deserializerCount;

  String initDeserContext(bool needsContext, bool contextAware) => needsContext
      ? 'final ${$dsr} = ${_$TDeser}(contextAware: $contextAware)'
      : '';

  String initSerContext(bool needsContext, bool contextAware) => needsContext
      ? 'final ${$sr} = ${_$TSer}(contextAware: $contextAware)'
      : '';

  DeSer? _checkCache(Map<String, DeSer> cache, DeSer? convert) {
    if (convert == null || convert.code.isEmpty) return null;
    final fromCache = cache.putIfAbsent(
      convert.code,
      () => convert.mapTo('\$${cache.length}'),
    );
    return fromCache;
  }

  DeSer? ser(ManagedType? type, bool? withContext, [Marshaler? marshaler]) {
    if (marshaler == null && type?.isDynamic == true) return null;
    return _checkCache(
      _ser,
      (type?.isNullable ?? false)
          ? allowNull(ser(type?.nonNullable, withContext, marshaler))
          : (marshaler?.ser(this, type) ?? type?.ser(this, withContext)),
    );
  }

  DeSer? deser(ManagedType? type, [Marshaler? marshaler]) {
    if (marshaler == null && type?.isDynamic == true) return null;
    return _checkCache(
      _deser,
      (type?.isNullable ?? false)
          ? allowNull(deser(type?.nonNullable, marshaler))
          : (marshaler?.deser(this, type) ?? type?.deser(this)),
    );
  }

  String get code {
    final sb = StringBuffer();
    if (_deser.isNotEmpty) {
      sb.writeln('''final class ${_$TDeser} extends $TMarshalingContext {
          ${_$TDeser}({super.contextAware});
          ${_deser.entries.map((e) => 'late final ${e.value.code} = ${e.key};').join('\n')}
        }''');
    }
    if (_ser.isNotEmpty) {
      sb.writeln('''final class ${_$TSer} extends $TMarshalingContext {
          ${_$TSer}({super.contextAware});
          ${_ser.entries.map((e) => 'late final ${e.value.code} = ${e.key};').join('\n')}
        }''');
    }
    return sb.toString();
  }

  static const _$TDeser = '_\$Deser';
  static const _$TSer = '_\$Ser';
}
