import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';

import '../marshalers/converters.dart';
import 'extensions.dart';
import 'known_type.dart';
import 'managed_type.dart';

class TypeManager {
  TypeManager(LibraryElement library) : _prefixes = library.prefixes {
    final provider = library.typeProvider;

    final squadron = library.libraryImports
        .where((import) => import.isFromPackage('package:squadron/'))
        .firstOrNull;

    if (squadron == null) {
      throw InvalidGenerationSourceError('Missing import of Squadron library.');
    }

    squadronAlias = squadron.prefix?.element.name ?? '';
    squadronPrefix = squadronAlias.isEmpty ? '' : '$squadronAlias.';

    converters.squadronAlias = squadronAlias;

    final squadronPckUri = 'package:squadron/';
    entryPointType = KnownType(squadronPckUri, 'EntryPoint', squadron);
    channelType = KnownType(squadronPckUri, 'Channel', squadron);
    workerServiceType = KnownType(squadronPckUri, 'WorkerService', squadron);
    workerType = KnownType(squadronPckUri, 'Worker', squadron);
    workerPoolType = KnownType(squadronPckUri, 'WorkerPool', squadron);
    workerRequestType = KnownType(squadronPckUri, 'WorkerRequest', squadron);
    workerStatType = KnownType(squadronPckUri, 'WorkerStat', squadron);
    perfCounterType = KnownType(squadronPckUri, 'PerfCounter', squadron);
    concurrencySettingsType =
        KnownType(squadronPckUri, 'ConcurrencySettings', squadron);
    exceptionManagerType =
        KnownType(squadronPckUri, 'ExceptionManager', squadron);
    platformThreadHookType =
        KnownType(squadronPckUri, 'PlatformThreadHook', squadron);
    squadronMarshalerType =
        KnownType(squadronPckUri, 'SquadronMarshaler', squadron);
    commandHandlerType = KnownType(squadronPckUri, 'CommandHandler', squadron);
    taskType = KnownType(squadronPckUri, 'Task', squadron);
    valueTaskType = KnownType(squadronPckUri, 'ValueTask', squadron);
    streamTaskType = KnownType(squadronPckUri, 'StreamTask', squadron);

    cancelationTokenType = _getImportedType(
        library, 'package:cancelation_token/', 'CancelationToken');
    loggerType = _getImportedType(library, 'package:logger/', 'Logger');
    typedDataType = _getImportedType(library, 'dart:typed_data', 'TypedData');

    listType = handleDartType(provider.listType(provider.dynamicType));
  }

  KnownType _getImportedType(
      LibraryElement library, String pckUri, String baseName) {
    final import = library.libraryImports
        .where((i) => i.isFromPackage(pckUri))
        .firstOrNull;
    return KnownType(pckUri, 'TypedData', import);
  }

  final converters = Converters();

  final List<PrefixElement> _prefixes;

  late final String squadronPrefix;
  late final String squadronAlias;

  late final ManagedType listType;

  late final KnownType entryPointType;
  late final KnownType channelType;
  late final KnownType workerServiceType;
  late final KnownType workerType;
  late final KnownType workerPoolType;
  late final KnownType workerRequestType;
  late final KnownType workerStatType;
  late final KnownType perfCounterType;
  late final KnownType exceptionManagerType;
  late final KnownType concurrencySettingsType;
  late final KnownType platformThreadHookType;
  late final KnownType squadronMarshalerType;
  late final KnownType commandHandlerType;
  late final KnownType taskType;
  late final KnownType valueTaskType;
  late final KnownType streamTaskType;

  late final KnownType cancelationTokenType;
  late final KnownType loggerType;
  late final KnownType typedDataType;

  ManagedType handleDartType(DartType type) {
    if (type is RecordType) {
      return ManagedType.record(type, this);
    } else {
      String? prefix;

      final typeLib = type.element?.library;
      if (typeLib != null) {
        prefix = _prefixes
            .where((p) => p.imports.any((i) => i.importedLibrary == typeLib))
            .firstOrNull
            ?.name;
      }
      return ManagedType(prefix, type, null, this);
    }
  }
}
