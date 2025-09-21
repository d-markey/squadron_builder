import 'dart:async';

import 'package:squadron/squadron.dart';

import 'goldens/int_service.activator.g.dart';

part 'goldens/int_service.worker.g.dart';

@SquadronService.vm()
class IntService {
  @squadronMethod
  FutureOr<int> identity(int x) => x;

  @squadronMethod
  FutureOr<int?> evenOrNull(int x) => (x % 2 == 1) ? null : x;

  @squadronMethod
  FutureOr<int> defaultIfNull(int? x, [int def = 0]) => x ?? def;
}
