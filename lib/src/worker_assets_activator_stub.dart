part of 'worker_assets.dart';

extension ActivatorStubExt on WorkerAssets {
  /// Service activator (stub)
  void generateCrossPlatformCode(BuildStepCodeEvent codeEvent) {
    final output = _xplatOutput;
    if (output != null && _vmOutput != null && _webOutput != null) {
      codeEvent.importSquadron(output, _squadronAlias);
      codeEvent.add(
        output,
        _unimplemented(null,
            '$TEntryPoint \$get$_serviceActivator($TSquadronPlatformType platform)'),
      );
    }
  }
}
