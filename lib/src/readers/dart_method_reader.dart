import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron.dart' as squadron;

import '../marshalers/marshaler.dart';
import '../marshalers/marshaling_context.dart';
import '../types/managed_type.dart';
import '../types/type_manager.dart';
import 'annotations_reader.dart';
import 'squadron_parameters.dart';

part 'squadron_method_reader.dart';

/// Reader for non-service methods implemented in a SquadronService
class DartMethodReader {
  DartMethodReader._(MethodElement method, this.typeManager, this.context)
      : name = method.name,
        returnType = typeManager.handleDartType(method.returnType),
        parameters = SquadronParameters(typeManager);

  final String name;

  final typeParameters = <String>[];

  final SquadronParameters parameters;

  final TypeManager typeManager;
  final MarshalingContext context;

  final ManagedType returnType;

  bool get isStream => returnType.dartType?.isDartAsyncStream ?? false;
  bool get isFuture => returnType.dartType?.isDartAsyncFuture ?? false;
  bool get isFutureOr => returnType.dartType?.isDartAsyncFutureOr ?? false;

  bool get hasReturnValue {
    final type = (isFuture || isFutureOr || isStream)
        ? returnType.typeArguments.single
        : returnType;
    return type.dartType is! VoidType &&
        type.dartType is! NeverType &&
        !(type.dartType?.isDartCoreNull ?? false);
  }

  void _init(MethodElement method) {
    if (method.typeParameters.isNotEmpty) {
      typeParameters.addAll(method.typeParameters.map((e) => e.toString()));
    }

    for (var n = 0; n < method.parameters.length; n++) {
      parameters.register(method.parameters[n], null);
    }
  }

  static DartMethodReader? load(MethodElement method, TypeManager typeManager,
      MarshalingContext context) {
    if (method.name == 'toString' || method.name == 'noSuchMethod') {
      // base Dart methods -- ignore
      return null;
    }
    final reader = AnnotationReader<squadron.SquadronMethod>.single(method);
    DartMethodReader m;
    if (reader.isEmpty || method.name.startsWith('_')) {
      // private method or no SquadronMethod annotation
      m = DartMethodReader._(method, typeManager, context);
    } else {
      final annotation = reader.annotations.singleOrNull;
      final inspectRequest = annotation.getBool('inspectRequest');
      final inspectResponse = annotation.getBool('inspectResponse');
      final withContext = annotation.getNullableBool('withContext');
      m = SquadronMethodReader._(method, inspectRequest, inspectResponse,
          withContext, typeManager, context);
    }
    m._init(method);
    return m;
  }

  String get declaration => typeParameters.isEmpty
      ? '$returnType $name($parameters)'
      : '$returnType $name<${typeParameters.join(', ')}>($parameters)';
}
