import 'package:squadron/squadron.dart';

class SimpleLogger extends BaseSquadronLogger {
  @override
  Iterable<String> format(int level, dynamic message) =>
      ['[${Squadron.id}] $message'];

  @override
  void log(String message) => print(message);
}
