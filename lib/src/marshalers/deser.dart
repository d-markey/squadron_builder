class DeSer {
  DeSer(this.code, this.needsContext, this.contextAware);

  final String code;
  final bool needsContext;
  final bool contextAware;

  DeSer mapTo(String code) => DeSer(code, needsContext, contextAware);

  @override
  String toString() => 'DeSer($code, $needsContext, $contextAware)';
}

extension DeSerExt on DeSer? {
  String get code => this?.code ?? '';
  bool get needsContext => this?.needsContext ?? false;
  bool get contextAware => this?.contextAware ?? false;
}
