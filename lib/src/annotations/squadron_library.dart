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
      useList = true;
    } else if (wr is ClassElement) {
      // Squadron < 5.1.0 implements WorkerRequest.serialize() which returns
      // a Map (< 5.0.0) or a List (>= 5.0.0)
      final serializeType = wr.getMethod('serialize')?.returnType;
      useList = serializeType?.isDartCoreList ?? false;
    }

    // check availability of EntryPoint typedef
    final ep = find('EntryPoint');
    entryPointType = ep is TypeAliasElement ? 'EntryPoint' : 'dynamic';

    // check availability of PlatformWorkerHook typedef
    final pwh = find('PlatformWorkerHook');
    hasPlatformWorkerHook = pwh is TypeAliasElement;
  }

  final LibraryElement _squadronLibrary;
  late final String entryPointType;
  late final bool useList;
  late final bool hasPlatformWorkerHook;

  static Future<SquadronLibrary?> load(AnalysisSession? session) =>
      (session == null)
          ? Future.value(null)
          : session.getLibraryByUri('package:squadron/squadron.dart').then(
              (lib) => (lib is LibraryElementResult)
                  ? SquadronLibrary._(lib.element)
                  : null);

  Element? find(String name) => _squadronLibrary.exportNamespace.get(name);
}
