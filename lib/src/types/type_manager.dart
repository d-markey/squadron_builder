import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron_builder/src/types/imported_type.dart';
import 'package:squadron_builder/src/types/library_inspector.dart';

import '../marshalers/converters.dart';
import '../marshalers/marshaler.dart';
import '../readers/annotations_reader.dart';
import 'extensions.dart';
import 'managed_type.dart';

class TypeManager {
  TypeManager(this.library) {
    final dartCoreAlias =
        library.getImport(_dartCorePckUri)?.prefix?.element.name ?? '';

    dartCorePrefix = dartCoreAlias.isEmpty ? '' : '$dartCoreAlias.';

    final squadronImport = library.getImport(_squadronPckUri);
    if (squadronImport == null) {
      throw InvalidGenerationSourceError('Missing import of Squadron library.');
    }
    converters.squadronAlias = squadronImport.prefix?.element.name ?? '';

    final inspector = LibraryInspector(this);
    inspector.loadTypes(library, _managedTypes);

    final missingTypes =
        _managedTypes[_squadronPckUri]!.values.whereType<NonImportedType>();

    if (missingTypes.isNotEmpty) {
      throw InvalidGenerationSourceError(
        'Missing Squadron types: ${missingTypes.map((t) => t.baseName).join(', ')}',
      );
    }

    final missingDartCore = _managedTypes['dart:core']!
        .values
        .followedBy(_managedTypes['dart:async']!.values)
        .whereType<NonImportedType>();

    if (missingDartCore.isNotEmpty) {
      throw InvalidGenerationSourceError(
        'Missing Dart types: ${missingDartCore.map((t) => t.baseName).join(', ')}',
      );
    }
  }

  final LibraryElement library;

  final converters = Converters();

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

  final Map<String, Map<String, ManagedType>> _managedTypes = {
    'package:squadron/': {
      'EntryPoint': ManagedImportedType.uninitialized,
      'Squadron': ManagedImportedType.uninitialized,
      'SquadronPlatformType': ManagedImportedType.uninitialized,
      'Channel': ManagedImportedType.uninitialized,
      'WorkerService': ManagedImportedType.uninitialized,
      'Worker': ManagedImportedType.uninitialized,
      'WorkerPool': ManagedImportedType.uninitialized,
      'WorkerRequest': ManagedImportedType.uninitialized,
      'WorkerStat': ManagedImportedType.uninitialized,
      'PerfCounter': ManagedImportedType.uninitialized,
      'ConcurrencySettings': ManagedImportedType.uninitialized,
      'ExceptionManager': ManagedImportedType.uninitialized,
      'PlatformThreadHook': ManagedImportedType.uninitialized,
      'SquadronMarshaler': ManagedImportedType.uninitialized,
      'CommandHandler': ManagedImportedType.uninitialized,
      'Task': ManagedImportedType.uninitialized,
      'ValueTask': ManagedImportedType.uninitialized,
      'StreamTask': ManagedImportedType.uninitialized,
    },
    'package:cancelation_token/': {
      'CancelationToken': ManagedImportedType.uninitialized,
    },
    'package:using/': {
      'Releasable': ManagedImportedType.uninitialized,
    },
    'package:logger/': {
      'Logger': ManagedImportedType.uninitialized,
    },
    'dart:typed_data': {
      'TypedData': ManagedImportedType.uninitialized,
    },
    'dart:async': {
      'FutureOr': ManagedImportedType.uninitialized,
      'Future': ManagedImportedType.uninitialized,
      'Stream': ManagedImportedType.uninitialized,
    },
    'dart:core': {
      'Iterable': ManagedImportedType.uninitialized,
      'List': ManagedImportedType.uninitialized,
      'Map': ManagedImportedType.uninitialized,
      'String': ManagedImportedType.uninitialized,
      'int': ManagedImportedType.uninitialized,
      'bool': ManagedImportedType.uninitialized,
      'dynamic': ManagedImportedType.uninitialized,
      'Object': ManagedImportedType.uninitialized,
      'Duration': ManagedImportedType.uninitialized,
      'Finalizer': ManagedImportedType.uninitialized,
      'UnimplementedError': ManagedImportedType.uninitialized,
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
  ManagedType get TEntryPoint =>
      _managedTypes['package:squadron/']!['EntryPoint']!;
  // ignore: non_constant_identifier_names
  ManagedType get TSquadron => _managedTypes['package:squadron/']!['Squadron']!;
  // ignore: non_constant_identifier_names
  ManagedType get TSquadronPlatformType =>
      _managedTypes['package:squadron/']!['SquadronPlatformType']!;
  // ignore: non_constant_identifier_names
  ManagedType get TChannel => _managedTypes['package:squadron/']!['Channel']!;
  // ignore: non_constant_identifier_names
  ManagedType get TWorkerService =>
      _managedTypes['package:squadron/']!['WorkerService']!;
  // ignore: non_constant_identifier_names
  ManagedType get TWorker => _managedTypes['package:squadron/']!['Worker']!;
  // ignore: non_constant_identifier_names
  ManagedType get TWorkerPool =>
      _managedTypes['package:squadron/']!['WorkerPool']!;
  // ignore: non_constant_identifier_names
  ManagedType get TWorkerRequest =>
      _managedTypes['package:squadron/']!['WorkerRequest']!;
  // ignore: non_constant_identifier_names
  ManagedType get TWorkerStat =>
      _managedTypes['package:squadron/']!['WorkerStat']!;
  // ignore: non_constant_identifier_names
  ManagedType get TPerfCounter =>
      _managedTypes['package:squadron/']!['PerfCounter']!;
  // ignore: non_constant_identifier_names
  ManagedType get TConcurrencySettings =>
      _managedTypes['package:squadron/']!['ConcurrencySettings']!;
  // ignore: non_constant_identifier_names
  ManagedType get TExceptionManager =>
      _managedTypes['package:squadron/']!['ExceptionManager']!;
  // ignore: non_constant_identifier_names
  ManagedType get TPlatformThreadHook =>
      _managedTypes['package:squadron/']!['PlatformThreadHook']!;
  // ignore: non_constant_identifier_names
  ManagedType get TSquadronMarshaler =>
      _managedTypes['package:squadron/']!['SquadronMarshaler']!;
  // ignore: non_constant_identifier_names
  ManagedType get TCommandHandler =>
      _managedTypes['package:squadron/']!['CommandHandler']!;
  // ignore: non_constant_identifier_names
  ManagedType get TTask => _managedTypes['package:squadron/']!['Task']!;
  // ignore: non_constant_identifier_names
  ManagedType get TValueTask =>
      _managedTypes['package:squadron/']!['ValueTask']!;
  // ignore: non_constant_identifier_names
  ManagedType get TStreamTask =>
      _managedTypes['package:squadron/']!['StreamTask']!;

  // ignore: non_constant_identifier_names
  ManagedType get TCancelationToken =>
      _managedTypes['package:cancelation_token/']!['CancelationToken']!;
  // ignore: non_constant_identifier_names
  ManagedType get TReleasable =>
      _managedTypes['package:using/']!['Releasable']!;
  // ignore: non_constant_identifier_names
  ManagedType get TLogger => _managedTypes['package:logger/']!['Logger']!;
  // ignore: non_constant_identifier_names
  ManagedType get TTypedData => _managedTypes['dart:typed_data']!['TypedData']!;

  // ignore: non_constant_identifier_names
  ManagedType get TFutureOr => _managedTypes['dart:async']!['FutureOr']!;
  // ignore: non_constant_identifier_names
  ManagedType get TFuture => _managedTypes['dart:async']!['Future']!;
  // ignore: non_constant_identifier_names
  ManagedType get TStream => _managedTypes['dart:async']!['Stream']!;

  // ignore: non_constant_identifier_names
  ManagedType get TList => _managedTypes['dart:core']!['List']!;
  // ignore: non_constant_identifier_names
  ManagedType get TIterable => _managedTypes['dart:core']!['Iterable']!;
  // ignore: non_constant_identifier_names
  ManagedType get TMap => _managedTypes['dart:core']!['Map']!;
  // ignore: non_constant_identifier_names
  ManagedType get TInt => _managedTypes['dart:core']!['int']!;
  // ignore: non_constant_identifier_names
  ManagedType get TBool => _managedTypes['dart:core']!['bool']!;
  // ignore: non_constant_identifier_names
  ManagedType get TDynamic => _managedTypes['dart:core']!['dynamic']!;
  // ignore: non_constant_identifier_names
  ManagedType get TObject => _managedTypes['dart:core']!['Object']!;
  // ignore: non_constant_identifier_names
  ManagedType get TString => _managedTypes['dart:core']!['String']!;
  // ignore: non_constant_identifier_names
  ManagedType get TDuration => _managedTypes['dart:core']!['Duration']!;
  // ignore: non_constant_identifier_names
  ManagedType get TFinalizer => _managedTypes['dart:core']!['Finalizer']!;
  // ignore: non_constant_identifier_names
  ManagedType get TUnimplementedError =>
      _managedTypes['dart:core']!['UnimplementedError']!;
}
