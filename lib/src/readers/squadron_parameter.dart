import 'package:analyzer/dart/element/element.dart';

import '../marshalers/marshaler.dart';
import '../types/managed_type.dart';
import '../types/type_manager.dart';

class SquadronParameter {
  SquadronParameter._(
      this.name,
      this.type,
      this.field,
      this.isNamed,
      this.isOptional,
      bool isRequired,
      this.isCancelationToken,
      this.defaultValue,
      this.marshaler,
      this.serIdx)
      : required = isRequired ? 'required ' : '';

  static SquadronParameter opt(String name, ManagedType type, bool named) =>
      SquadronParameter._(
          name, type, null, named, !named, false, false, null, null, -1);

  static SquadronParameter from(ParameterElement param, bool isToken,
      Marshaler? marshaler, int serIdx, TypeManager typeManager) {
    var name = param.name;
    var type = param.type;
    FieldElement? field;
    if (param is FieldFormalParameterElement && param.field != null) {
      field = param.field!;
      type = field.type;
      name = field.name;
      while (name.startsWith('_')) {
        name = name.substring((1));
      }
    }
    return SquadronParameter._(
        name,
        typeManager.handleDartType(type),
        field,
        param.isNamed,
        param.isOptionalPositional,
        param.isRequiredNamed,
        isToken,
        param.defaultValueCode,
        marshaler,
        serIdx);
  }

  final String name;
  final ManagedType type;
  final FieldElement? field;
  final bool isNamed;
  final bool isOptional;
  final String required;
  final bool isCancelationToken;
  final String? defaultValue;
  final int serIdx;
  final Marshaler? marshaler;

  bool get mayBeNull =>
      (isOptional || (isNamed && required.isEmpty)) && defaultValue == null;

  bool get isPublicField => field != null && !field!.name.startsWith('_');

  String argument() => isNamed ? '$name: $name' : name;

  String namedArgument() => '$name: $name';

  String serialized() =>
      '${marshaler?.serialize(name, type) ?? type.serialize(name)},';

  String deserialized(String variableName) {
    String value;
    if (isCancelationToken) {
      final nonNull = type.isNullable ? '' : '!';
      value = '$variableName.cancelToken$nonNull';
    } else {
      value = '$variableName.args[$serIdx]';
      value = marshaler?.deserialize(value, type) ?? type.deserialize(value);
    }
    return isNamed ? '$name: $value,' : '$value,';
  }

  @override
  String toString() {
    final realType = (serIdx < 0 && mayBeNull) ? type.nullable : type;
    return '$required${isPublicField ? 'this.' : '$realType '}$name${defaultValue == null ? '' : ' = $defaultValue'}';
  }

  String toStringNoField() {
    final realType = (serIdx < 0 && mayBeNull) ? type.nullable : type;
    return '$required$realType $name${defaultValue == null ? '' : ' = $defaultValue'}';
  }

  bool get isSuperParam => serIdx >= 0;

  String toSuperParam() {
    if (isSuperParam) {
      // this is a super parameter
      return '${required}super.$name${defaultValue == null ? '' : ' = $defaultValue'}';
    }
    // programmatically added: may be null
    final realType = mayBeNull ? type.nullable : type;
    return '$required$realType $name${defaultValue == null ? '' : ' = $defaultValue'}';
  }
}
