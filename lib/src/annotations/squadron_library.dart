import 'package:analyzer/dart/element/element.dart';

class SquadronLibrary {
  SquadronLibrary(LibraryElement squadronLibrary) {
    // discover serialization type for WorkerRequests/WorkerResponses
    final wr = squadronLibrary.exportNamespace.get('WorkerRequest');
    if (wr is TypeAliasElement) {
      // Squadron >= 5.1.0 defines WorkerRequest as an alias for List
      serializationTypeName = wr.aliasedType.toString();
    } else if (wr is ClassElement) {
      // Squadron < 5.1.0 implements WorkerRequest.serialize() which returns
      // a Map (< 5.0.0) or a List (>= 5.0.0)
      serializationTypeName =
          wr.getMethod('serialize')?.returnType.toString() ?? 'Map';
    }

    // check availability of EntryPoint typedef
    final ep = squadronLibrary.exportNamespace.get('EntryPoint');
    entryPointTypeName = (ep is TypeAliasElement) ? 'EntryPoint' : 'dynamic';

    // check availability of PlatformWorkerHook typedef
    final pwh = squadronLibrary.exportNamespace.get('PlatformWorkerHook');
    platformWorkerHookTypeName =
        (pwh is TypeAliasElement) ? 'PlatformWorkerHook' : null;
  }

  late final String concurrencySettingsTypeName = 'ConcurrencySettings';
  late final String serializationTypeName;
  late final String entryPointTypeName;
  late final String? platformWorkerHookTypeName;
}
