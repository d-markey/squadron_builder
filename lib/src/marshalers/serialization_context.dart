import 'package:squadron_builder/src/marshalers/marshaler.dart';
import 'package:squadron_builder/src/types/managed_type.dart';
import 'package:squadron_builder/src/types/type_manager.dart';

import 'deser.dart';

class SerializationContext {
  static const instanceName = '\$mc';

  SerializationContext(this.name, this.typeManager);

  final String name;
  final TypeManager typeManager;

  // ignore: non_constant_identifier_names
  ImportedType get TMarshalingContext => typeManager.TMarshalingContext;

  String get allowNull => '${typeManager.TConverter}.allowNull';

  final _castors = <String, DeSer>{};
  int get count => _castors.length;

  String initialize(bool needsContext, bool contextAware) => needsContext
      ? 'final $instanceName = $name(contextAware: $contextAware)'
      : '';

  DeSer? getSerializer(ManagedType? type, Marshaler? marshaler) {
    if (type == null) return null;
    final castor =
        marshaler?.serializerOf(this, type) ?? type.getSerializer(this);
    if (castor == null) return null;
    final serializer = _castors.putIfAbsent(
        castor.code, () => castor.mapTo('\$se${_castors.length}'));
    print('* $serializer => $castor');
    return serializer;
  }

  DeSer? getDeserializer(ManagedType? type, Marshaler? marshaler) {
    if (type == null) return null;
    final castor =
        marshaler?.deserializerOf(this, type) ?? type.getDeserializer(this);
    if (castor == null) return null;
    final deserializer = _castors.putIfAbsent(
        castor.code, () => castor.mapTo('\$de${_castors.length}'));
    print('* $deserializer => $castor');
    return deserializer;
  }

  String get code => _castors.isEmpty
      ? ''
      : '''final class $name extends $TMarshalingContext {
          $name({super.contextAware});
          ${_castors.entries.map((e) => 'late final ${e.value.code} = ${e.key};').join('\n')}
        }''';
}
