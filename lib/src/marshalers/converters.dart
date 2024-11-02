import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';

import '../types/managed_type.dart';
import 'marshaler.dart';

class Converters {
  Converters([this._name = '_\$X']);

  final String _name;

  final _converters = <String, String>{};

  String _instance = 'Squadron.converter';
  String get instance => _instance;

  String _squadronAlias = '';

  String get squadronAlias => _squadronAlias;

  set squadronAlias(String value) {
    _squadronAlias = value;
    _instance = '${value.isEmpty ? '' : '$value.'}Squadron.converter';
  }

  String getSerializerOf(ManagedType type, Marshaler? marshaler) {
    if (type.dartType is DynamicType) return '';
    var serializer =
        marshaler?.serializerOf(type, this) ?? type.getSerializer(this);
    if (serializer.isEmpty) return '';
    serializer = _converters.putIfAbsent(
      serializer,
      () => '\$sr${_converters.length}',
    );
    if (type.nullabilitySuffix != NullabilitySuffix.none) {
      serializer = _converters.putIfAbsent(
        '$instance.nullable($_name.$serializer)',
        () => '\$sr${_converters.length}',
      );
    }
    return '$_name.$serializer';
  }

  String getDeserializerOf(ManagedType type, Marshaler? marshaler) {
    if (type.dartType is DynamicType || type.dartType is VoidType) {
      return '';
    }
    var deserializer =
        marshaler?.deserializerOf(type, this) ?? type.getDeserializer(this);
    if (deserializer.isEmpty) return '';
    deserializer = _converters.putIfAbsent(
      deserializer,
      () => '\$dsr${_converters.length}',
    );
    if (type.nullabilitySuffix != NullabilitySuffix.none) {
      deserializer = _converters.putIfAbsent(
        '$instance.nullable($_name.$deserializer)',
        () => '\$dsr${_converters.length}',
      );
    }
    return '$_name.$deserializer';
  }

  int get count => _converters.length;

  String get code => _converters.isEmpty
      ? ''
      : '''sealed class $_name {
  ${_converters.entries.map((e) => 'static final ${e.value} = ${e.key};').join('\n')}
}
''';
}
