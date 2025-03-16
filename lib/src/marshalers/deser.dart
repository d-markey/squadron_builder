class DeSer {
  DeSer(this.code, this.needsContext, this.contextAware);

  final String code;
  final bool needsContext;
  final bool contextAware;

  DeSer mapTo(String newCode) => DeSer(newCode, needsContext, contextAware);
}

extension DeSerExt on DeSer? {
  String get code => this?.code ?? '';
  bool get needsContext => this?.needsContext ?? false;
  bool get contextAware => this?.contextAware ?? false;
}
