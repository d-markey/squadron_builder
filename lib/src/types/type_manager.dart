import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';

import '../marshalers/converters.dart';
import '../marshalers/marshaler.dart';
import '../readers/annotations_reader.dart';
import 'extensions.dart';
import 'imported_type.dart';
import 'managed_type.dart';

class TypeManager {
  TypeManager(this.library) {
    final dartCoreAlias = library.getPrefixFor(_dartCorePckUri) ?? '';
    dartCorePrefix = dartCoreAlias.isEmpty ? '' : '$dartCoreAlias.';
  }

  void initialize() {
    if (_initialized) return;
    _initialized = true;

    final squadronAlias = library.getPrefixFor(_squadronPckUri);
    if (squadronAlias == null) {
      throw InvalidGenerationSourceError('Missing import of Squadron library.');
    }
    converters.squadronAlias = squadronAlias;

    // initialize managed imported types
    _importedTypes.updateAll((pckUri, types) {
      final prefix = library.getPrefixFor(pckUri) ?? '';
      types.updateAll((k, v) => ImportedType(pckUri, prefix, k));
      return types;
    });
  }

  void checkImportsFor(String message, List<ImportedType> requiredTypes) {
    if (requiredTypes.isNotEmpty) {
      final missingImports = requiredTypes.map((t) => t.pckUri).toSet()
        ..removeWhere((pckUri) =>
            library.importedLibraries.any((l) => l.isFromPackage(pckUri)));
      if (missingImports.isNotEmpty) {
        throw InvalidGenerationSourceError(
            '$message: ${missingImports.map((s) => s.endsWith('/') ? s.substring(0, s.length - 1) : s).join(', ')}');
      }
    }
  }

  final LibraryElement library;

  final converters = Converters();

  bool _initialized = false;

  String getPrefixFor(LibraryElement? lib) {
    if (lib == null) return '';
    return library.prefixes
            .where((p) => p.imports.any((i) => i.importedLibrary == lib))
            .firstOrNull
            ?.name ??
        '';
  }

  String get squadronAlias => converters.squadronAlias;

  late final String dartCorePrefix;
  late final String override = '@${dartCorePrefix}override';

  static const _squadronPckUri = 'package:squadron/';
  static const _dartCorePckUri = 'dart:core';

  final Map<String, Map<String, ImportedType>> _importedTypes = {
    'package:squadron/': {
      'EntryPoint': ImportedType.unset,
      'Squadron': ImportedType.unset,
      'SquadronPlatformType': ImportedType.unset,
      'Channel': ImportedType.unset,
      'WorkerService': ImportedType.unset,
      'Worker': ImportedType.unset,
      'WorkerPool': ImportedType.unset,
      'WorkerRequest': ImportedType.unset,
      'WorkerStat': ImportedType.unset,
      'PerfCounter': ImportedType.unset,
      'ConcurrencySettings': ImportedType.unset,
      'ExceptionManager': ImportedType.unset,
      'PlatformThreadHook': ImportedType.unset,
      'SquadronMarshaler': ImportedType.unset,
      'CommandHandler': ImportedType.unset,
      'Task': ImportedType.unset,
      'ValueTask': ImportedType.unset,
      'StreamTask': ImportedType.unset,
    },
    'package:cancelation_token/': {
      'CancelationToken': ImportedType.unset,
    },
    'package:using/': {
      'Releasable': ImportedType.unset,
    },
    'package:logger/': {
      'Logger': ImportedType.unset,
    },
    'dart:typed_data': {
      'TypedData': ImportedType.unset,
    },
    'dart:async': {
      'FutureOr': ImportedType.unset,
      'Future': ImportedType.unset,
      'Stream': ImportedType.unset,
    },
    'dart:core': {
      'Iterable': ImportedType.unset,
      'List': ImportedType.unset,
      'Map': ImportedType.unset,
      'String': ImportedType.unset,
      'int': ImportedType.unset,
      'bool': ImportedType.unset,
      'dynamic': ImportedType.unset,
      'Object': ImportedType.unset,
      'Duration': ImportedType.unset,
      'Finalizer': ImportedType.unset,
      'UnimplementedError': ImportedType.unset,
    },
  };

  final _cache = <DartType, ManagedType>{};

  ManagedType handleDartType(DartType type) {
    var managedType = _cache[type];
    if (managedType != null) {
      return managedType;
    }

    if (type is RecordType) {
      managedType = ManagedType.record(type, this);
    } else {
      final typeLib = type.element?.library;
      managedType = ManagedType(getPrefixFor(typeLib), type, this);
      managedType.setMarshaler(this);
    }

    _cache[type] = managedType;
    return managedType;
  }

  String getTypeName(DartType type) =>
      handleDartType(type).getTypeName(type.nullabilitySuffix);

  bool _isMarshaler(DartObject obj) =>
      obj.type?.isA(TSquadronMarshaler) ?? false;

  Marshaler? getExplicitMarshaler(Element? element) {
    final marshaler =
        element?.declaration?.getAnnotations().where(_isMarshaler).firstOrNull;
    if (marshaler == null) return null;
    final type = marshaler.toTypeValue() ?? marshaler.type;
    final baseMarshaler = type?.implementedTypes(TSquadronMarshaler);
    if (baseMarshaler == null || baseMarshaler.isEmpty) {
      throw InvalidGenerationSourceError(
          'Invalid marshaler for $element: $marshaler');
    }
    return Marshaler.explicit(marshaler, handleDartType(baseMarshaler.single));
  }

  // ignore: non_constant_identifier_names
  ImportedType get TEntryPoint =>
      _importedTypes['package:squadron/']!['EntryPoint']!;
  // ignore: non_constant_identifier_names
  ImportedType get TSquadron =>
      _importedTypes['package:squadron/']!['Squadron']!;
  // ignore: non_constant_identifier_names
  ImportedType get TSquadronPlatformType =>
      _importedTypes['package:squadron/']!['SquadronPlatformType']!;
  // ignore: non_constant_identifier_names
  ImportedType get TChannel => _importedTypes['package:squadron/']!['Channel']!;
  // ignore: non_constant_identifier_names
  ImportedType get TWorkerService =>
      _importedTypes['package:squadron/']!['WorkerService']!;
  // ignore: non_constant_identifier_names
  ImportedType get TWorker => _importedTypes['package:squadron/']!['Worker']!;
  // ignore: non_constant_identifier_names
  ImportedType get TWorkerPool =>
      _importedTypes['package:squadron/']!['WorkerPool']!;
  // ignore: non_constant_identifier_names
  ImportedType get TWorkerRequest =>
      _importedTypes['package:squadron/']!['WorkerRequest']!;
  // ignore: non_constant_identifier_names
  ImportedType get TWorkerStat =>
      _importedTypes['package:squadron/']!['WorkerStat']!;
  // ignore: non_constant_identifier_names
  ImportedType get TPerfCounter =>
      _importedTypes['package:squadron/']!['PerfCounter']!;
  // ignore: non_constant_identifier_names
  ImportedType get TConcurrencySettings =>
      _importedTypes['package:squadron/']!['ConcurrencySettings']!;
  // ignore: non_constant_identifier_names
  ImportedType get TExceptionManager =>
      _importedTypes['package:squadron/']!['ExceptionManager']!;
  // ignore: non_constant_identifier_names
  ImportedType get TPlatformThreadHook =>
      _importedTypes['package:squadron/']!['PlatformThreadHook']!;
  // ignore: non_constant_identifier_names
  ImportedType get TSquadronMarshaler =>
      _importedTypes['package:squadron/']!['SquadronMarshaler']!;
  // ignore: non_constant_identifier_names
  ImportedType get TCommandHandler =>
      _importedTypes['package:squadron/']!['CommandHandler']!;
  // ignore: non_constant_identifier_names
  ImportedType get TTask => _importedTypes['package:squadron/']!['Task']!;
  // ignore: non_constant_identifier_names
  ImportedType get TValueTask =>
      _importedTypes['package:squadron/']!['ValueTask']!;
  // ignore: non_constant_identifier_names
  ImportedType get TStreamTask =>
      _importedTypes['package:squadron/']!['StreamTask']!;

  // ignore: non_constant_identifier_names
  ImportedType get TCancelationToken =>
      _importedTypes['package:cancelation_token/']!['CancelationToken']!;
  // ignore: non_constant_identifier_names
  ImportedType get TReleasable =>
      _importedTypes['package:using/']!['Releasable']!;
  // ignore: non_constant_identifier_names
  ImportedType get TLogger => _importedTypes['package:logger/']!['Logger']!;
  // ignore: non_constant_identifier_names
  ImportedType get TTypedData =>
      _importedTypes['dart:typed_data']!['TypedData']!;

  // ignore: non_constant_identifier_names
  ImportedType get TFutureOr => _importedTypes['dart:async']!['FutureOr']!;
  // ignore: non_constant_identifier_names
  ImportedType get TFuture => _importedTypes['dart:async']!['Future']!;
  // ignore: non_constant_identifier_names
  ImportedType get TStream => _importedTypes['dart:async']!['Stream']!;

  // ignore: non_constant_identifier_names
  ImportedType get TList => _importedTypes['dart:core']!['List']!;
  // ignore: non_constant_identifier_names
  ImportedType get TIterable => _importedTypes['dart:core']!['Iterable']!;
  // ignore: non_constant_identifier_names
  ImportedType get TMap => _importedTypes['dart:core']!['Map']!;
  // ignore: non_constant_identifier_names
  ImportedType get TInt => _importedTypes['dart:core']!['int']!;
  // ignore: non_constant_identifier_names
  ImportedType get TBool => _importedTypes['dart:core']!['bool']!;
  // ignore: non_constant_identifier_names
  ImportedType get TDynamic => _importedTypes['dart:core']!['dynamic']!;
  // ignore: non_constant_identifier_names
  ImportedType get TObject => _importedTypes['dart:core']!['Object']!;
  // ignore: non_constant_identifier_names
  ImportedType get TString => _importedTypes['dart:core']!['String']!;
  // ignore: non_constant_identifier_names
  ImportedType get TDuration => _importedTypes['dart:core']!['Duration']!;
  // ignore: non_constant_identifier_names
  ImportedType get TFinalizer => _importedTypes['dart:core']!['Finalizer']!;
  // ignore: non_constant_identifier_names
  ImportedType get TUnimplementedError =>
      _importedTypes['dart:core']!['UnimplementedError']!;
}
