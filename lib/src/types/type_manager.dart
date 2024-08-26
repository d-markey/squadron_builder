import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';

import '../marshalers/marshaler.dart';
import '../readers/annotations_reader.dart';
import 'extensions.dart';
import 'managed_type.dart';

class TypeManager {
  TypeManager(LibraryElement library) : _prefixes = library.prefixes {
    final provider = library.typeProvider;

    final prefix = _prefixes
            .where((p) =>
                p.imports.any((i) => i.isFromPackage('package:squadron/')))
            .firstOrNull
            ?.name ??
        '';

    squadronAlias = prefix;

    functionType = provider.functionType;

    listType = handleDartType(provider.listType(provider.dynamicType));
    futureType = handleDartType(provider.futureType(provider.dynamicType));
    streamType = handleDartType(provider.streamType(provider.dynamicType));

    entryPointType = ManagedType.knownType(prefix, 'squadron', 'EntryPoint');
    channelType = ManagedType.knownType(prefix, 'squadron', 'Channel');
    workerServiceType =
        ManagedType.knownType(prefix, 'squadron', 'WorkerService');
    workerType = ManagedType.knownType(prefix, 'squadron', 'Worker');
    workerPoolType = ManagedType.knownType(prefix, 'squadron', 'WorkerPool');
    workerRequestType =
        ManagedType.knownType(prefix, 'squadron', 'WorkerRequest');
    workerStatType = ManagedType.knownType(prefix, 'squadron', 'WorkerStat');
    perfCounterType = ManagedType.knownType(prefix, 'squadron', 'PerfCounter');
    concurrencySettingsType =
        ManagedType.knownType(prefix, 'squadron', 'ConcurrencySettings');
    exceptionManagerType =
        ManagedType.knownType(prefix, 'squadron', 'ExceptionManager');
    platformThreadHookType =
        ManagedType.knownType(prefix, 'squadron', 'PlatformThreadHook');
    squadronMarshalerType =
        ManagedType.knownType(prefix, 'squadron', 'SquadronMarshaler');
    commandHandlerType =
        ManagedType.knownType(prefix, 'squadron', 'CommandHandler');
    taskType = ManagedType.knownType(prefix, 'squadron', 'Task');
    valueTaskType = ManagedType.knownType(prefix, 'squadron', 'ValueTask');
    streamTaskType = ManagedType.knownType(prefix, 'squadron', 'StreamTask');

    // exported types from package:logger and package:cancelation_token
    cancelationTokenType =
        ManagedType.knownType(prefix, 'squadron', 'CancelationToken');
    loggerType = ManagedType.knownType(prefix, 'squadron', 'Logger');
  }

  final List<PrefixElement> _prefixes;

  late final String squadronAlias;

  String get squadronPrefix => squadronAlias.isEmpty ? '' : '$squadronAlias.';

  late final DartType functionType;

  late final ManagedType listType;
  late final ManagedType streamType;
  late final ManagedType futureType;

  late final ManagedType entryPointType;
  late final ManagedType channelType;
  late final ManagedType workerServiceType;
  late final ManagedType workerType;
  late final ManagedType workerPoolType;
  late final ManagedType workerRequestType;
  late final ManagedType workerStatType;
  late final ManagedType perfCounterType;
  late final ManagedType exceptionManagerType;
  late final ManagedType concurrencySettingsType;
  late final ManagedType platformThreadHookType;
  late final ManagedType squadronMarshalerType;
  late final ManagedType commandHandlerType;
  late final ManagedType taskType;
  late final ManagedType valueTaskType;
  late final ManagedType streamTaskType;

  late final ManagedType cancelationTokenType;
  late final ManagedType loggerType;

  bool isMarshaler(DartObject obj) =>
      obj.type?.isA(squadronMarshalerType) ?? false;

  Marshaler? getExplicitMarshaler(Element element) {
    Marshaler? explicit;
    for (var marshaler in element.getAnnotations().where(isMarshaler)) {
      final type = marshaler.toTypeValue() ?? marshaler.type;
      final baseMarshaler = type?.implementedTypes(squadronMarshalerType);
      if (baseMarshaler == null || baseMarshaler.isEmpty) {
        throw InvalidGenerationSourceError(
            'Invalid marshaler for $element: $marshaler');
      }
      explicit =
          Marshaler.explicit(marshaler, handleDartType(baseMarshaler.single));
      break;
    }

    return explicit;
  }

  ManagedType handleDartType(DartType type) => (type is RecordType)
      ? _handleRecordDartType(type)
      : _handlePlainDartType(type);

  ManagedType _handleRecordDartType(RecordType type) {
    return ManagedRecordType(
      type,
      List.from(
        type.positionalFields.map((t) => handleDartType(t.type)),
      ),
      Map.fromEntries(type.namedFields.map(
        (t) => MapEntry(t.name, handleDartType(t.type)),
      )),
    );
  }

  ManagedType _handlePlainDartType(DartType type) {
    String? prefix;

    final typeLib = type.element?.library;
    if (typeLib != null) {
      prefix = _prefixes
          .where((p) => p.imports.any((i) => i.importedLibrary == typeLib))
          .firstOrNull
          ?.name;
    }

    if (type is DynamicType || type is VoidType) {
      return ManagedType(squadronPrefix, prefix, type);
    } else if (type is FunctionType) {
      final returnType = handleDartType(type.returnType);
      final parameters = type.parameters.map(
        (e) => ManagedParameter(
          handleDartType(e.type),
          e.name,
          defaultValueCode: e.defaultValueCode,
          isOptionalNamed: e.isOptionalNamed,
          isOptionalPositional: e.isOptionalPositional,
        ),
      );
      return ManagedType.function(
          squadronPrefix, prefix, functionType, returnType, parameters);
    } else if (type is ParameterizedType) {
      final typeArgs = type.typeArguments.map(handleDartType);
      return ManagedType(squadronPrefix, prefix, type, typeArgs);
    } else {
      return ManagedType(squadronPrefix, prefix, type);
    }
  }
}
