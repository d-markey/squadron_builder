import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

import 'marshallers/marshaller.dart';

class SquadronParameter {
  SquadronParameter._(
      this.name,
      this.dartType,
      this.typeName,
      this.isField,
      this.isNamed,
      this.isOptional,
      bool isRequired,
      this.isCancellationToken,
      this.defaultValue,
      this.marshaller,
      this.serIdx)
      : required = isRequired ? 'required ' : '';

  static SquadronParameter opt(String name, String typeName, bool named) =>
      SquadronParameter._(name, null, '$typeName?', false, named, !named, false,
          false, null, null, -1);

  static SquadronParameter from(ParameterElement param, bool isToken,
      Marshaller? marshaller, int serIdx) {
    var name = param.name;
    var type = param.type;
    if (param is FieldFormalParameterElement && param.field != null) {
      type = param.field!.type;
      name = param.field!.name;
      while (name.startsWith('_')) {
        name = name.substring((1));
      }
    }
    return SquadronParameter._(
        name,
        type,
        type.toString(),
        false,
        param.isNamed,
        param.isOptionalPositional,
        (param.isOptionalNamed || param.isOptionalPositional) &&
            param.isRequired,
        isToken,
        param.defaultValueCode,
        marshaller,
        serIdx);
  }

  final String name;
  final DartType? dartType;
  final String typeName;
  final bool isField;
  final bool isNamed;
  final bool isOptional;
  final String required;
  final bool isCancellationToken;
  final String? defaultValue;
  final int serIdx;
  final Marshaller? marshaller;

  String toFormalArgument() => isNamed ? '$name: $name' : name;

  String serialized() {
    return marshaller?.serialize(dartType!, name) ?? name;
  }

  String deserialized(String variableName) {
    final v = isCancellationToken
        ? '$variableName.cancelToken'
        : (marshaller?.deserialize(dartType!, '$variableName.args[$serIdx]'))!;
    return isNamed ? '$name: $v' : v;
  }

  @override
  String toString() =>
      '$required${isField ? 'this.' : '$typeName '}$name${defaultValue == null ? '' : ' = $defaultValue'}';
}
