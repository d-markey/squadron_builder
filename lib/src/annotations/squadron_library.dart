import 'dart:async';

import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/analysis/session.dart';
import 'package:analyzer/dart/element/element.dart';

class SquadronLibrary {
  SquadronLibrary._(this._squadronLibrary) {
    // discover serialization type for WorkerRequests/WorkerResponses
    final wr = find('WorkerRequest');
    if (wr is TypeAliasElement) {
      // Squadron >= 5.1.0 defines WorkerRequest as an alias for List
      serializationTypeName = wr.aliasedType.toString();
    } else if (wr is ClassElement) {
      // Squadron < 5.1.0 implements WorkerRequest.serialize() which returns
      // a Map (< 5.0.0) or a List (>= 5.0.0)
      serializationTypeName = wr.getMethod('serialize')!.returnType.toString();
    }

    // check availability of EntryPoint typedef
    final ep = find('EntryPoint');
    entryPointTypeName = (ep is TypeAliasElement) ? 'EntryPoint' : 'dynamic';

    // check availability of PlatformWorkerHook typedef
    final pwh = find('PlatformWorkerHook');
    platformWorkerHookTypeName =
        (pwh is TypeAliasElement) ? 'PlatformWorkerHook' : null;
  }

  final LibraryElement _squadronLibrary;
  late final String concurrencySettingsTypeName = 'ConcurrencySettings';
  late final String serializationTypeName;
  late final String entryPointTypeName;
  late final String? platformWorkerHookTypeName;

  static Future<SquadronLibrary?> load(AnalysisSession? session) async {
    if (session == null) {
      return null;
    }
    final lib = await session.getLibraryByUri('package:squadron/squadron.dart');
    if (lib is! LibraryElementResult) {
      return null;
    }
    return SquadronLibrary._(lib.element);
  }

  Element? find(String name) => _squadronLibrary.exportNamespace.get(name);
}
