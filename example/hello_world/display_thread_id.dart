import 'dart:isolate';

import 'package:squadron/squadron.dart';

String get workerId =>
    '${Squadron.id} (${Isolate.current.runtimeType} ${Isolate.current.hashCode})';
