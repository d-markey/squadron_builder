import 'dart:async';

import 'package:squadron/squadron.dart';

import 'goldens/datetime_service.activator.g.dart';

part 'goldens/datetime_service.worker.g.dart';

@SquadronService(version: 1)
class DateTimeService {
  @squadronMethod
  FutureOr<DateTime> identity(DateTime x) => x;

  @squadronMethod
  FutureOr<DateTime?> nullOnSunday(DateTime x) =>
      (x.weekday == DateTime.sunday) ? null : x;

  @squadronMethod
  FutureOr<DateTime> defaultIfNull(DateTime? x, [DateTime def = 0]) => x ?? def;
}
