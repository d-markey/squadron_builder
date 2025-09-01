import 'package:source_gen/source_gen.dart';
import 'package:squadron/squadron.dart' as squadron;

import '../_analyzer_helpers.dart';
import '../_helpers.dart';
import '../assets/worker_assets.dart';
import '../marshalers/deser.dart';
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
      : assert(method.name3 != null, "Method name can't be null"),
        name = method.name3!,
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
    method.typeParams.map((e) => e.toString()).forEach(typeParameters.add);
    method.formalParameters.forEach(parameters.register);
  }

  static DartMethodReader? load(MethodElement method, TypeManager typeManager,
      MarshalingContext context) {
    if (method.name3 == 'toString' || method.name3 == 'noSuchMethod') {
      // base Dart methods -- ignore
      return null;
    }
    final reader = AnnotationReader<squadron.SquadronMethod>.single(method);
    DartMethodReader m;
    if (reader.isEmpty || (method.name3?.startsWith('_') ?? false)) {
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

  String forwardTo(String target, WorkerAssets assets) =>
      '${assets.override_} $declaration => $target.$name(${parameters.asArguments()});';

  String unimpl(WorkerAssets assets) =>
      assets.unimpl(declaration, override: true);
}
