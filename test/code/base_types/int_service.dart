import 'dart:async';

import 'package:source_gen_test/source_gen_test.dart';
import 'package:squadron/squadron.dart';

import 'gen/int_service.activator.g.dart';

part 'gen/int_service.worker.g.dart';

@ShouldGenerateFile('gen/int_service.worker.g.dart', partOfCurrent: true)
@ShouldGenerateFile('gen/int_service.activator.g.dart', partOfCurrent: false)
@SquadronService.vm()
class MyService {
  @squadronMethod
  FutureOr<int> identity(int x) => x;

  @squadronMethod
  FutureOr<int?> evenOrNull(int x) => (x % 2 == 1) ? null : x;

  @squadronMethod
  FutureOr<int> defaultIfNull(int? x, [int def = 0]) => x ?? def;
}
