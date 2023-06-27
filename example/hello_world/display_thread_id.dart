import 'dart:isolate';

import 'package:squadron/squadron.dart';

void displayThreadId(String name) {
  Squadron.config(
      '$name running in ${Isolate.current.runtimeType} ${Isolate.current.hashCode}');
}
