import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';

import '../marshalers/converters.dart';
import '../marshalers/marshaler.dart';
import 'extensions.dart';
import 'managed_type.dart';
import 'type_manager.dart';

base class ManagedImportedType implements ManagedType {
  ManagedImportedType(this.pckUri, this.prefix, this.baseName);

  static final NonImportedType uninitialized =
      NonImportedType('<uninitialized>', '', '<uninitialized>');

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

base class NonImportedType extends ManagedImportedType {
  NonImportedType(super.pckUri, super.prefix, super.baseName);
}

base class ImportedType extends ManagedImportedType {
  ImportedType(String pckUri, this.import, this.element)
      : dartType = _typeOf(element),
        super(pckUri, import.prefix?.element.name ?? '', _baseNameOf(element));

  final LibraryImportElement import;
  final Element? element;

  @override
  final DartType? dartType;

  static DartType? _typeOf(Element? element) {
    if (element is ClassElement) {
      return element.thisType;
    } else if (element is EnumElement) {
      return element.thisType;
    } else if (element is ExtensionTypeElement) {
      return element.thisType;
    } else if (element is MixinElement) {
      return element.thisType;
    } else {
      return null;
    }
  }

  static String _baseNameOf(Element? element) {
    final type = _typeOf(element);
    if (type != null) {
      return type.element!.name!;
    } else if (element == null) {
      return 'dynamic';
    } else if (element is ExtensionElement) {
      return element.name!;
    } else if (element is TypeAliasElement) {
      return element.name;
    } else {
      throw UnsupportedError('Unsupported ${element.runtimeType}: $element');
    }
  }
}
