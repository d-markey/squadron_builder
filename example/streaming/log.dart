import 'ansi_color.dart';

void Function(Object?) logger(String threadId, ConsoleColor? color) {
  final colorize = color?.colorize;
  if (colorize == null) {
    return (object) => print('[$threadId] [${DateTime.now()}] $object');
  } else {
    return (object) =>
        print(colorize('[$threadId] [${DateTime.now()}] $object'));
  }
}
