import 'dart:async';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/logger.dart';
import 'package:squadron/squadron.dart';
import 'package:using/using.dart';

import 'data.dart' hide DataMarshalerExt;
import 'generated/data_service_json.activator.g.dart';

part 'generated/data_service_json.worker.g.dart';

@SquadronService()
class DataService {
  @squadronMethod
  FutureOr<Data> doSomething(Data input) =>
      Data(input.a + 1, !input.b, '(was $input)');

  @squadronMethod
  FutureOr<Data2> doSomethingElse(Data2 input) =>
      Data2(input.a + 1, !input.b, '(was $input)');

  @squadronMethod
  FutureOr<Self> process(Self input) => Self(input.x + 1);

  @squadronMethod
  FutureOr<OtherSelf> processOther(OtherSelf input) => OtherSelf(input.x + 1);
}
