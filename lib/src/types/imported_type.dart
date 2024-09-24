import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';

import '../marshalers/converters.dart';
import '../marshalers/marshaler.dart';
import 'extensions.dart';
import 'managed_type.dart';
import 'type_manager.dart';

base class ImportedType implements ManagedType {
  ImportedType(this.pckUri, this.prefix, this.baseName);

  static final ImportedType unset = ImportedType('', '', '');

  @override
  final String prefix;

  final String pckUri;

  final String baseName;

  @override
  Marshaler? get attachedMarshaler => null;

  @override
  DartType? get dartType => null;

  @override
  String getDeserializer(Converters converters) => '/* TODO $runtimeType */';

  @override
  String getSerializer(Converters converters) => '/* TODO $runtimeType */';

  @override
  NullabilitySuffix get nullabilitySuffix => NullabilitySuffix.none;

  @override
  String getTypeName([NullabilitySuffix? forcedNullabilitySuffix]) {
    final s = (forcedNullabilitySuffix ?? NullabilitySuffix.none).suffix;
    return '${prefix.isEmpty ? '' : '$prefix.'}$baseName$s';
  }

  @override
  String toString() => getTypeName();

  @override
  void setMarshaler(TypeManager typeManager) => throw UnimplementedError();

  @override
  List<ManagedType> get typeArguments => throw UnimplementedError();
}
