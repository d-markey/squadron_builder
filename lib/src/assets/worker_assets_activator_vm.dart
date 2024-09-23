part of 'worker_assets.dart';

extension ActivatorVmExt on WorkerAssets {
  /// Service activator (native platforms)
  void generateVmCode(BuildStepCodeEvent codeEvent) {
    final output = _vmOutput;
    if (output != null) {
      codeEvent.importSquadron(output, _squadronAlias);
      codeEvent.import(output, codeEvent.buildStep.inputId);

      codeEvent.add(
        output,
        '''void _start\$$_name($TWorkerRequest command) {
             /// VM entry point for $_name
             ${_squadronPrefix}run($_serviceInitializer, command);
           } 

           $TEntryPoint \$get$_serviceActivator($TSquadronPlatformType platform) {
             if (platform.isVm) {
               return _start\$$_name;
             } else {
               throw UnsupportedError('\${platform.label} not supported.');
             }
           }
        ''',
      );
    }
  }
}
