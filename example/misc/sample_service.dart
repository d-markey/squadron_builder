import 'dart:async';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/web.dart';
import 'package:squadron/squadron.dart';
import 'package:using/using.dart';

import 'generated/sample_service.activator.g.dart';

part 'generated/sample_service.worker.g.dart';

@SquadronService()
class SampleService {
  @squadronMethod
  Future<DataOut> compute(DataIn input, State state) async {
    return DataOut('payload=${input.payload}, state=$state');
  }
}

enum State {
  unset,
  initializing,
  ready,
  terminating,
  done,
}

class SomeTransferable {
  SomeTransferable(this.data);

  final dynamic data;
}

class DataIn {
  DataIn(this.payload);

  final dynamic payload;

  SomeTransferable marshal({MarshalingContext? context}) =>
      SomeTransferable(payload);

  DataIn.unmarshal(SomeTransferable transferable, {MarshalingContext? context})
      : this(transferable.data);

  Map toJson() => {'pld': payload};

  static DataIn fromJson(Map data) => DataIn(data['pld']);
}

class DataOut {
  DataOut(this.payload);

  final dynamic payload;

  SomeTransferable marshal(MarshalingContext? context) =>
      SomeTransferable(payload);

  DataOut.unmarshal(SomeTransferable transferable, MarshalingContext? context)
      : this(transferable.data);

  Map toJson() => {'pld': payload};

  static DataOut fromJson(Map data) => DataOut(data['pld']);
}
