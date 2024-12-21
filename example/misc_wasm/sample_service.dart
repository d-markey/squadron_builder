import 'dart:async';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/web.dart';
import 'package:squadron/squadron.dart';
import 'package:using/using.dart';

import 'generated/sample_service.activator.g.dart';

part 'generated/sample_service.worker.g.dart';

@SquadronService(targetPlatform: TargetPlatform.wasm)
class SampleService {
  @squadronMethod
  Future<DataOut> compute(DataIn input) async {
    return DataOut(input.payload);
  }
}

class SomeTransferable {
  SomeTransferable(this.data);

  final dynamic data;
}

class DataIn {
  DataIn(this.payload);

  final dynamic payload;

  SomeTransferable marshal() => SomeTransferable(payload);

  DataIn.unmarshal(SomeTransferable transferable) : this(transferable.data);

  Map toJson() => {'pld': payload};

  static DataIn fromJson(Map data) => DataIn(data['pld']);
}

class DataOut {
  DataOut(this.payload);

  final dynamic payload;

  SomeTransferable marshal() => SomeTransferable(payload);

  DataOut.unmarshal(SomeTransferable transferable) : this(transferable.data);

  Map toJson() => {'pld': payload};

  static DataOut fromJson(Map data) => DataOut(data['pld']);
}
