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
          final \$$_serviceActivator = \$get$_serviceActivator;
        ''');
    }
  }
}
