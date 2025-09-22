class ConsoleColor {
  ConsoleColor(this.red, this.green, this.blue)
    : _esc = '\x1B[38;2;$red;$green;${blue}m';

  static ConsoleColor? orNull({int? red, int? green, int? blue}) =>
      (red == null || green == null || blue == null)
          ? null
          : ConsoleColor(red, green, blue);

  final int red;
  final int green;
  final int blue;

  final String _esc;
  static const String _rst = '\x1B[39m';

  String colorize(Object? object) => '$_esc$object$_rst';
}
