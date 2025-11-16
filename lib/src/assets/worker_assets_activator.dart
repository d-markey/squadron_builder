part of 'worker_assets.dart';

extension ActivatorExt on WorkerAssets {
  /// Service activator
  void generateActivatorCode(BuildStepCodeEvent codeEvent) {
    final output = _activatorOutput;
    if (output != null) {
      if (_xplatOutput != null && _webOutput != null && _vmOutput != null) {
        codeEvent.import(
          output,
          _xplatOutput!,
          platformSpecific: {'js_interop': _webOutput!, 'io': _vmOutput!},
        );
      } else if (_vmOutput != null) {
        codeEvent.import(output, _vmOutput!);
      } else if (_webOutput != null) {
        codeEvent.import(output, _webOutput!);
      }

      codeEvent.add(output, '''/// Service activator for $_name
          const \$$_serviceActivator = \$get$_serviceActivator;
        ''');
    }
  }

  /// Stub
  void generateCrossPlatformCode(BuildStepCodeEvent codeEvent) {
    final output = _xplatOutput;
    if (output != null && _vmOutput != null && _webOutput != null) {
      codeEvent.importSquadron(output, _squadronAlias);
      codeEvent.importDartCore(output, _dartCoreAlias);
      codeEvent.add(
        output,
        unimpl(
          '$TEntryPoint \$get$_serviceActivator($TSquadronPlatformType platform)',
        ),
      );
    }
  }

  /// Web
  void generateWebCode(BuildStepCodeEvent codeEvent) {
    final output = _webOutput;
    if (output != null) {
      codeEvent.importSquadron(output, _squadronAlias);
      codeEvent.importDartCore(output, _dartCoreAlias);
      codeEvent.import(output, codeEvent.buildStep.inputId);
      codeEvent.addWebEntryPoint(output, '''/// Web entry point for $_name
           $_run($_serviceInitializer);
        ''');

      final baseWorkerUrl =
          _service.baseUrl.isEmpty
              ? output.path
              : '${_service.baseUrl}/${output.pathSegments.last}';

      final version =
          (_service.version == null) ? '' : '?v=${_service.version}';

      if (_service.js && _service.wasm) {
        codeEvent.add(
          output,
          '''$TEntryPoint \$get$_serviceActivator($TSquadronPlatformType platform) {
             if (platform.isJs) {
               return $TSquadron.uri('$baseWorkerUrl.js$version');
             } else if (platform.isWasm) {
               return $TSquadron.uri('$baseWorkerUrl.wasm$version');
             } else {
               throw $TUnsupportedError('\${platform.label} not supported.');
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
               return $TSquadron.uri('$baseWorkerUrl.$ext$version');
             } else {
               throw $TUnsupportedError('\${platform.label} not supported.');
             }
           }
        ''',
        );
      }
    }
  }

  /// VM
  void generateVmCode(BuildStepCodeEvent codeEvent) {
    final output = _vmOutput;
    if (output != null) {
      codeEvent.importSquadron(output, _squadronAlias);
      codeEvent.importDartCore(output, _dartCoreAlias);
      codeEvent.import(output, codeEvent.buildStep.inputId);

      codeEvent.add(output, '''void _start\$$_name($TWorkerRequest command) {
             /// VM entry point for $_name
             $_run($_serviceInitializer, command);
           } 

           $TEntryPoint \$get$_serviceActivator($TSquadronPlatformType platform) {
             if (platform.isVm) {
               return _start\$$_name;
             } else {
               throw $TUnsupportedError('\${platform.label} not supported.');
             }
           }
        ''');
    }
  }
}
