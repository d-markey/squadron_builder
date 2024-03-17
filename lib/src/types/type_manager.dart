import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:squadron_builder/src/types/extensions.dart';

import '../extensions.dart';
import 'managed_type.dart';

class TypeManager {
  TypeManager(LibraryElement library) : _prefixes = library.prefixes {
    final provider = library.typeProvider;
    listType = handleDartType(provider.listType(provider.dynamicType));
    functionType = provider.functionType;

    final prefix = _prefixes
            .where((p) =>
                p.imports.any((i) => i.isFromPackage('package:squadron/')))
            .getFirstOrNull()
            ?.name ??
        '';

    squadronPrefix = prefix;

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

  late final String squadronPrefix;

  String get squadronAlias => squadronPrefix.isEmpty ? '' : '$squadronPrefix.';

  late final DartType functionType;

  late final ManagedType listType;

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

  ManagedType handleDartType(DartType type) {
    String? prefix;

    final typeLib = type.element?.library;
    if (typeLib != null) {
      prefix = _prefixes
          .where((p) => p.imports.any((i) => i.importedLibrary == typeLib))
          .getFirstOrNull()
          ?.name;
    }

    if (type is DynamicType || type is VoidType) {
      return ManagedType(prefix, type);
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
      return ManagedType.function(prefix, functionType, returnType, parameters);
    } else if (type is ParameterizedType) {
      final typeArgs = type.typeArguments.map(handleDartType);
      return ManagedType(prefix, type, typeArgs);
    } else {
      return ManagedType(prefix, type);
    }
  }
}
