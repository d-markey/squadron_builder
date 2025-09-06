import 'dart:async';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/logger.dart';
import 'package:squadron/squadron.dart';
import 'package:using/using.dart';

import 'data.dart' hide Data2ToJsonExt;
import 'generated/data_service_marshaler.activator.g.dart';

part 'generated/data_service_marshaler.worker.g.dart';

@SquadronService()
class DataService {
  @squadronMethod
  FutureOr<Data> doSomething(Data input) =>
      Data(input.a + 1, !input.b, '(was $input)');

  @squadronMethod
  FutureOr<Data2> doSomethingElse(Data2 input) =>
      Data2(input.a + 1, !input.b, '(was $input)');
}
