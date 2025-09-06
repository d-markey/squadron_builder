import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron.dart' as squadron;

import '../_analyzer_helpers.dart';
import '../marshalers/marshaler.dart';
import '../types/managed_type.dart';
import '../types/type_manager.dart';
import 'annotations_reader.dart';

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
    this.serIdx,
    this.isLocalWorker,
  ) : required = isRequired ? 'required ' : '';

  static SquadronParameter opt(String name, ManagedType type, bool named) =>
      SquadronParameter._(
          name, type, null, named, !named, false, false, null, null, -1, false);

  static SquadronParameter from(ParameterElement param, bool isToken,
      Marshaler? marshaler, int serIdx, TypeManager typeManager) {
    var name = param.name;

    if (name.isEmpty) {
      throw InvalidGenerationSourceError('Parameter name cannot be null '
          'for ${param.enclosingElt?.name}.');
    }

    var type = param.type;
    FieldElement? field;
    if (param is FieldFormalParameterElement) {
      final fld = param.fldElt;
      if (fld != null) {
        field = fld;
        type = fld.type;
        name = fld.name;

        if (name.isEmpty) {
          throw InvalidGenerationSourceError('Parameter name cannot be null '
              'for ${fld.enclosingElt?.name}.');
        }

        while (name.startsWith('_')) {
          name = name.substring((1));
        }
      }
    }

    final reader = AnnotationReader<squadron.LocalWorkerParam>.single(param);
    final isLocalWorker = reader.isNotEmpty;

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
      serIdx,
      isLocalWorker,
    );
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
  final bool isLocalWorker;

  bool get mayBeNull =>
      (isOptional || (isNamed && required.isEmpty)) && defaultValue == null;

  bool get isPublicField => field != null && !field!.name.startsWith('_');

  String argument() => isNamed ? '$name: $name' : name;

  String namedArgument() => '$name: $name';

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
