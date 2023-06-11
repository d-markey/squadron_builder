import 'dart:async';

import 'package:build/build.dart';

abstract class BuildStepEvent {
  BuildStepEvent(this.buildStep);

  final BuildStep buildStep;
}

class BuildStepCodeEvent extends BuildStepEvent {
  BuildStepCodeEvent(BuildStep buildStep) : super(buildStep);

  final _assetImports = <AssetId, Map<String, Map<String, String>?>>{};
  final _webEntryPoints = <AssetId, Set<String>>{};
  final _assetCodeParts = <AssetId, Set<String>>{};

  var _warn = false;

  Future<void> mergeWith(BuildStepCodeEvent other) async {
    var alreadyWarned = _warn;
    for (var entry in other._assetImports.entries) {
      _warn |= entry.key.path.contains('.web.');
      final otherImports = other._assetImports[entry.key] ?? {};
      for (var otherImport in otherImports.entries) {
        import(entry.key, otherImport.key, platformSpecific: otherImport.value);
      }
    }
    for (var entry in other._webEntryPoints.entries) {
      _warn |= entry.key.path.contains('.web.');
      final webEntryPoints = _webEntryPoints.putIfAbsent(entry.key, () => {});
      webEntryPoints.addAll(entry.value);
    }
    for (var entry in other._assetCodeParts.entries) {
      _warn |= entry.key.path.contains('.web.');
      final codeParts = _assetCodeParts.putIfAbsent(entry.key, () => {});
      codeParts.addAll(entry.value);
    }
    if (!alreadyWarned && _warn) {
      final library = await buildStep.inputLibrary;
      log.warning('Library ${library.librarySource.shortName} defines multiple '
          'services including some targetting Web platforms. This will fail '
          'in production as each Web Worker needs its own URL and its own '
          'communication channel. Web workers services must be implemented '
          'in separate libraries. If necessary, code generation for Web '
          'platforms can be turned off with @SquadronService(web: false).');
    }
  }

  Iterable<AssetId> get assets =>
      Set.from(_assetImports.keys.followedBy(_assetCodeParts.keys));

  String _getConditionalImport(MapEntry<String, String> entry) =>
      'if (dart.library.${entry.key}) \'${entry.value}\'';

  String _getImportCode(MapEntry<String, Map<String, String>?> entry) {
    final platforms = entry.value?.entries ?? [];
    return '''import '${entry.key}'
        ${platforms.map(_getConditionalImport).join('\n')};
      ''';
  }

  Iterable<String> getCode(AssetId asset) sync* {
    final imports = _assetImports[asset];
    if (imports != null) yield* imports.entries.map(_getImportCode);
    final webEntryPoints = _webEntryPoints[asset];
    if (webEntryPoints != null && webEntryPoints.isNotEmpty) {
      yield '''void main() {
          ${webEntryPoints.join('\n')}
        }''';
    }
    final codeParts = _assetCodeParts[asset];
    if (codeParts != null) yield* codeParts;
  }

  bool _isAlreadyImported(
      String library, Map<String, Map<String, String>?> imports) {
    for (var entry in imports.entries) {
      if (entry.key == library) {
        return true;
      }
      final platformImports = entry.value?.values ?? [];
      if (platformImports.any((item) => item == library)) {
        return true;
      }
    }
    return false;
  }

  void import(AssetId asset, String library,
      {Map<String, String>? platformSpecific}) {
    final imports = _assetImports.putIfAbsent(asset, () => {});
    library = library.trim();
    if (_isAlreadyImported(library, imports)) {
      // library is already imported, either directly or as a platform specific library
      return;
    }
    // register library + merge platform specific libraries if any
    if (!imports.containsKey(library)) {
      imports[library] = platformSpecific;
    } else {
      final existingSpecific = imports[library];
      if (existingSpecific == null) {
        imports[library] = platformSpecific;
      } else if (platformSpecific != null) {
        for (var entry in platformSpecific.entries) {
          existingSpecific[entry.key] = entry.value;
        }
      }
    }
    // if a previously imported libraries is also conditionally imported, remove them from the global import
    final platformLibraries = platformSpecific?.values ?? [];
    imports.removeWhere((key, value) => platformLibraries.contains(key));
  }

  void addWebEntryPoint(AssetId asset, String webEntryPoint) {
    final webEntryPoints = _webEntryPoints.putIfAbsent(asset, () => {});
    webEntryPoints.add(webEntryPoint);
  }

  void add(AssetId asset, String code) {
    final codeParts = _assetCodeParts.putIfAbsent(asset, () => {});
    codeParts.add(code.trim());
  }
}

class BuildStepDoneEvent extends BuildStepEvent {
  BuildStepDoneEvent(BuildStep buildStep) : super(buildStep);

  void finished() => _completer.complete();

  final _completer = Completer<void>();
  Future<void> get complete => _completer.future;
}
