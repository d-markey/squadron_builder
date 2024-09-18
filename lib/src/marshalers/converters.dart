import 'package:analyzer/dart/element/nullability_suffix.dart';

import '../types/managed_type.dart';
import 'marshaler.dart';

class Converters {
  Converters([this._name = '_\$X']);

  final String _name;

  final _converters = <String, String>{};

  String _instance = 'Squadron.converter';

  String get instance => _instance;

  set squadronAlias(String value) => _instance =
      value.isEmpty ? 'Squadron.converter' : '$value.Squadron.converter';

  void clear() => _converters.clear();

  String getSerializerOf(ManagedType type, Marshaler? marshaler) {
    var serializer =
        marshaler?.serializerOf(type, this) ?? type.getSerializer(this);
    if (serializer.isEmpty) return '';
    serializer = _converters.putIfAbsent(
      serializer,
      () => '\$${_converters.length}',
    );
    if (type.nullabilitySuffix != NullabilitySuffix.none) {
      serializer = _converters.putIfAbsent(
        '$instance.nullable($serializer)',
        () => '\$${_converters.length}',
      );
    }
    return '$_name.$serializer';
  }

  String getDeserializerOf(ManagedType type, Marshaler? marshaler) {
    var deserializer =
        marshaler?.deserializerOf(type, this) ?? type.getDeserializer(this);
    if (deserializer.isEmpty) return '';
    deserializer = _converters.putIfAbsent(
      deserializer,
      () => '\$${_converters.length}',
    );
    if (type.nullabilitySuffix != NullabilitySuffix.none) {
      deserializer = _converters.putIfAbsent(
        '$instance.nullable($deserializer)',
        () => '\$${_converters.length}',
      );
    }
    return '$_name.$deserializer';
  }

  String get code => _converters.isEmpty
      ? ''
      : '''class $_name {
  ${_converters.entries.map((e) => 'static final ${e.value} = ${e.key};').join('\n')}
}
''';
}
