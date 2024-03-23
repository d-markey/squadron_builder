import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron.dart';

import '../marshalers/marshaler.dart';
import '../marshalers/marshaling_info.dart';
import '../types/managed_type.dart';
import '../types/type_manager.dart';
import 'annotations_reader.dart';
import 'marshaling_manager.dart';
import 'squadron_parameters.dart';

part 'squadron_method_reader.dart';

/// Reader for non-service methods implemented in a SquadronService
class DartMethodReader {
  DartMethodReader._(MethodElement method, this.typeManager)
      : name = method.name,
        _returnType = method.returnType;

  final String name;
  final TypeManager typeManager;
  final DartType _returnType;
  late final parameters = SquadronParameters(typeManager);

  void _init(MethodElement method) {
    for (var n = 0; n < method.parameters.length; n++) {
      parameters.register(method.parameters[n], null);
    }
  }

  static DartMethodReader? load(MethodElement method, TypeManager typeManager) {
    if (method.name == 'toString' || method.name == 'noSuchMethod') {
      // base Dart methods -- ignore
      return null;
    }
    final reader = AnnotationReader<SquadronMethod>(method);
    DartMethodReader m;
    if (reader.isEmpty || method.name.startsWith('_')) {
      // private method or no SquadronMethod annotation
      m = DartMethodReader._(method, typeManager);
    } else {
      final inspectRequest = reader.isSet('inspectRequest');
      final inspectResponse = reader.isSet('inspectResponse');
      m = SquadronMethodReader._(
          method, inspectRequest, inspectResponse, typeManager);
    }
    m._init(method);
    return m;
  }

  String get declaration =>
      '${typeManager.handleDartType(_returnType)} $name($parameters)';
}
