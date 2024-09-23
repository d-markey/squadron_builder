part of 'worker_assets.dart';

extension ActivatorWebExt on WorkerAssets {
  /// Service activator (Web platforms)
  void generateWebCode(BuildStepCodeEvent codeEvent) {
    final output = _webOutput;
    if (output != null) {
      codeEvent.importSquadron(output, _squadronAlias);
      codeEvent.import(output, codeEvent.buildStep.inputId);
      codeEvent.addWebEntryPoint(
        output,
        '''/// Web entry point for $_name
           ${_squadronPrefix}run($_serviceInitializer);
        ''',
      );

      final baseWorkerUrl = _service.baseUrl.isEmpty
          ? output.path
          : '${_service.baseUrl}/${output.pathSegments.last}';

      if (_service.js && _service.wasm) {
        codeEvent.add(
          output,
          '''$TEntryPoint \$get$_serviceActivator($TSquadronPlatformType platform) {
             if (platform.isJs) {
               return ${_squadronPrefix}Squadron.uri('$baseWorkerUrl.js');
             } else if (platform.isWasm) {
               return ${_squadronPrefix}Squadron.uri('$baseWorkerUrl.wasm');
             } else {
               throw UnsupportedError('\${platform.label} not supported.');
             }
           }
        ''',
        );
      } else {
        final ext = _service.wasm ? 'wasm' : 'js';
        codeEvent.add(
          output,
          '''$TEntryPoint \$get$_serviceActivator($TSquadronPlatformType platform) {
             if (platform.isWeb) {
               return ${_squadronPrefix}Squadron.uri('$baseWorkerUrl.$ext');
             } else {
               throw UnsupportedError('\${platform.label} not supported.');
             }
           }
        ''',
        );
      }
    }
  }
}
