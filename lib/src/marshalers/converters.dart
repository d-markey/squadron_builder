import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';

import '../types/managed_type.dart';
import 'marshaler.dart';

class Converters {
  Converters([this._name = '_\$X']) : impl = '$_name.\$impl';

  final String _name;
  final String impl;

  final _converters = <String, String>{};

  String _singleton = 'Squadron.converter';
  String get instance => _singleton;

  String _squadronAlias = '';

  String get squadronAlias => _squadronAlias;

  set squadronAlias(String value) {
    _squadronAlias = value;
    _singleton = '${value.isEmpty ? '' : '$value.'}Squadron.converter';
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
        '$instance.nullable($serializer)',
        () => '\$sr${_converters.length}',
      );
    }
    return serializer;
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
        '$instance.nullable($deserializer)',
        () => '\$dsr${_converters.length}',
      );
    }
    return deserializer;
  }

  int get count => _converters.length;

  String get code => _converters.isEmpty
      ? ''
      : '''final class $_name {

  $_name._();

  static $_name? _impl;

  static $_name get \$impl {
    if (_impl == null) {
      ${squadronAlias.isEmpty ? '' : '$squadronAlias.'}Squadron.onConverterChanged(() => _impl = $_name._());
      _impl = $_name._();
    }
    return _impl!;
  }

  ${_converters.entries.map((e) => 'late final ${e.value} = ${e.key};').join('\n')}
}
''';
}
