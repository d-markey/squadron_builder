import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

import 'marshalers/marshaler.dart';

class SquadronParameter {
  SquadronParameter._(
      this.name,
      this.dartType,
      this.typeName,
      this.field,
      this.isNamed,
      this.isOptional,
      bool isRequired,
      this.isCancellationToken,
      this.defaultValue,
      this.marshaler,
      this.serIdx)
      : required = isRequired ? 'required ' : '';

  static SquadronParameter opt(String name, String typeName, bool named) =>
      SquadronParameter._(name, null, '$typeName?', null, named, !named, false,
          false, null, null, -1);

  static SquadronParameter from(
      ParameterElement param, bool isToken, Marshaler? marshaler, int serIdx) {
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
        type,
        type.toString(),
        field,
        param.isNamed,
        param.isOptionalPositional,
        (param.isOptionalNamed || param.isOptionalPositional) &&
            param.isRequired,
        isToken,
        param.defaultValueCode,
        marshaler,
        serIdx);
  }

  final String name;
  final DartType? dartType;
  final String typeName;
  final FieldElement? field;
  final bool isNamed;
  final bool isOptional;
  final String required;
  final bool isCancellationToken;
  final String? defaultValue;
  final int serIdx;
  final Marshaler? marshaler;

  bool get isPublicField => field != null && !field!.name.startsWith('_');

  String argument() => isNamed ? '$name: $name' : name;

  String namedArgument() => '$name: $name';

  String serialized() => marshaler?.serialize(dartType!, name) ?? name;

  String deserialized(String variableName) {
    final v = isCancellationToken
        ? '$variableName.cancelToken'
        : (marshaler?.deserialize(dartType!, '$variableName.args[$serIdx]'))!;
    return isNamed ? '$name: $v' : v;
  }

  @override
  String toString() =>
      '$required${isPublicField ? 'this.' : '$typeName '}$name${defaultValue == null ? '' : ' = $defaultValue'}';

  String toStringNoField() =>
      '$required$typeName $name${defaultValue == null ? '' : ' = $defaultValue'}';
}
