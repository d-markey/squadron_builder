import 'dart:async';

import 'package:squadron/squadron.dart';
import 'package:squadron/squadron_annotations.dart';

import 'generated/sample_service.activator.g.dart';

part 'generated/sample_service.worker.g.dart';

@SquadronService()
class SampleService {
  @SquadronMethod()
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

  SomeTransferable marshall() => SomeTransferable(payload);

  DataIn.unmarshall(SomeTransferable transferable) : this(transferable.data);

  Map toJson() => {'pld': payload};

  static DataIn fromJson(Map data) => DataIn(data['pld']);
}

class DataOut {
  DataOut(this.payload);

  final dynamic payload;

  SomeTransferable marshall() => SomeTransferable(payload);

  DataOut.unmarshall(SomeTransferable transferable) : this(transferable.data);

  Map toJson() => {'pld': payload};

  static DataIn fromJson(Map data) => DataIn(data['pld']);
}
