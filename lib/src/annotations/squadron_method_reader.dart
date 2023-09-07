import 'dart:io';

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart' as gen;
import 'package:squadron/squadron_annotations.dart';

import 'annotations_reader.dart';
import 'marshalers/marshaler.dart';
import 'marshalers/marshaling_info.dart';
import 'marshaling_manager.dart';
import 'squadron_parameters.dart';

/// Reader for service methods implemented in a SquadronService
class SquadronMethodReader {
  SquadronMethodReader._(this.name, this.id, this._returnType, this.valueType,
      this.inspectRequest, this.inspectResponse)
      : isStream = _returnType.isDartAsyncStream,
        returnType = _returnType.toString();

  SquadronMethodReader._init(
      MethodElement method, this.inspectRequest, this.inspectResponse)
      : name = method.name,
        id = '_\$${method.name}Id',
        _returnType = method.returnType,
        isStream = method.returnType.isDartAsyncStream,
        valueType = _getValueType(method.returnType),
        returnType = method.returnType.isDartAsyncFutureOr
            ? method.returnType.toString().replaceFirst('FutureOr', 'Future')
            : method.returnType.toString() {
    _load(method, isServiceMethod: true);
  }

  static DartType _getValueType(DartType returnType) {
    if (returnType.isDartAsyncFuture) {
      return (returnType as ParameterizedType).typeArguments.first;
    } else if (returnType.isDartAsyncFutureOr) {
      return (returnType as ParameterizedType).typeArguments.first;
    } else if (returnType.isDartAsyncStream) {
      return (returnType as ParameterizedType).typeArguments.first;
    } else {
      return returnType;
    }
  }

  final String name;
  final _typeParameters = <String>[];

  final bool inspectRequest;
  final bool inspectResponse;

  int? _num;
  int get num => _num ?? -1;

  void setNum(int num) => _num ??= num;

  final String id;

  final DartType _returnType;

  final String returnType;
  final DartType valueType;
  final bool isStream;

  String get declaration => _typeParameters.isEmpty
      ? '$returnType $name($parameters)'
      : '$returnType $name<${_typeParameters.join(', ')}>($parameters)';

  String get workerExecutor => isStream ? 'stream' : 'send';
  String get poolExecutor => isStream ? 'stream' : 'execute';
  String get continuation => isStream ? 'map' : 'then';

  final parameters = SquadronParameters();

  Marshaler _resultMarshaler = Marshaler.identity;

  late Adapter serializedResult = _resultMarshaler.getSerializer(valueType);
  bool get needsSerialization => _resultMarshaler != Marshaler.identity;

  late Adapter deserializedResult = _resultMarshaler.getDeserializer(valueType);
  bool get needsDeserialization => _resultMarshaler != Marshaler.identity;

  final _marshaling = MarshalingManager();

  void _load(MethodElement method, {bool isServiceMethod = false}) {
    if (isServiceMethod) {
      if (!_returnType.isDartAsyncFuture &&
          !_returnType.isDartAsyncFutureOr &&
          !_returnType.isDartAsyncStream) {
        throw gen.InvalidGenerationSourceError(
            '${method.librarySource.fullName}: public service method '
            '\'${method.enclosingElement.displayName}.${method.name}\' must '
            'return a Future, a FutureOr, or a Stream.');
      }

      stdout.writeln('''
=== method.name = ${method.name}
    method.typeParameters = ${method.typeParameters}
    method.hasOptionalTypeArgs = ${method.hasOptionalTypeArgs}
===''');

      if (method.typeParameters.isNotEmpty) {
        _typeParameters.addAll(method.typeParameters.map((e) => e.toString()));
      }

      final resultMarshaler = AnnotationReader.getExplicitMarshaler(method);
      if (resultMarshaler != null) {
        _resultMarshaler =
            _marshaling.getMarshaler(valueType, explicit: resultMarshaler);
      } else {
        _resultMarshaler = _marshaling.getMarshaler(valueType);
      }

      for (var n = 0; n < method.parameters.length; n++) {
        final param = method.parameters[n];
        final marshaler = _marshaling.getMarshalerFor(param);
        parameters.register(param, marshaler);
      }
    } else {
      for (var n = 0; n < method.parameters.length; n++) {
        parameters.register(method.parameters[n], null);
      }
    }
  }

  static SquadronMethodReader? load(MethodElement method) {
    if (method.name == 'toString' || method.name == 'noSuchMethod') {
      // base Dart methods -- ignore
      return null;
    }
    final reader = AnnotationReader<SquadronMethod>(method);
    if (reader.isEmpty || method.name.startsWith('_')) {
      // private method or no SquadronMethod annotation
      return OtherMethodReader._init(method);
    } else {
      final inspectRequest = reader.isSet('inspectRequest');
      final inspectResponse = reader.isSet('inspectResponse');
      return SquadronMethodReader._init(
          method, inspectRequest, inspectResponse);
    }
  }
}

/// Reader for non-service methods implemented in a SquadronService
class OtherMethodReader extends SquadronMethodReader {
  OtherMethodReader._init(MethodElement method)
      : super._(method.name, '', method.returnType, method.returnType, false,
            false) {
    _load(method, isServiceMethod: false);
  }

  @override
  String get declaration => '$_returnType $name($parameters)';
}
