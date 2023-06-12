// ignore_for_file: unused_field

// ignore: unused_import
import 'dart:async';

import 'package:squadron/squadron_annotations.dart';
import 'package:squadron/squadron.dart';

import 'generated/test_services.activator.g.dart';

part 'generated/test_services.worker.g.dart';

@SquadronService()
class TestService1 extends WorkerService with $TestService1Operations {
  TestService1() {
    // parameter-less constructor
  }
}

@SquadronService()
class TestService2 extends WorkerService with $TestService2Operations {
  TestService2(int arg1);
}

@SquadronService()
class TestService3 extends WorkerService with $TestService3Operations {
  TestService3([int arg1 = 0]);
}

@SquadronService()
class TestService4 extends WorkerService with $TestService4Operations {
  TestService4({int arg1 = 0});
}

@SquadronService()
class TestService5 extends WorkerService with $TestService5Operations {
  TestService5(int arg1, {int? arg2});
}

@SquadronService()
class TestService6 extends WorkerService with $TestService6Operations {
  TestService6(int arg1, [int? arg2]);
}

@SquadronService()
class TestService7 extends WorkerService with $TestService7Operations {
  TestService7(this.arg1);

  final int arg1;
}

@SquadronService()
class TestService8 extends WorkerService with $TestService8Operations {
  TestService8(this.arg1, [this.arg2]);

  final int arg1;
  final int? arg2;
}

@SquadronService()
class TestService9 extends WorkerService with $TestService9Operations {
  TestService9(this.arg1, {this.arg2});

  final int arg1;
  final int? arg2;
}

@SquadronService()
class TestService10 extends WorkerService with $TestService10Operations {
  TestService10([this.arg1]);

  final int? arg1;
}

@SquadronService()
class TestService11 extends WorkerService with $TestService11Operations {
  TestService11({this.arg1 = 0});

  final int arg1;
}

@SquadronService()
class TestService12 extends WorkerService with $TestService12Operations {
  TestService12(this._arg1);

  final int _arg1;
}

@SquadronService()
class TestService13 extends WorkerService with $TestService13Operations {
  TestService13([this._arg1]);

  final int? _arg1;
}

@SquadronService()
class TestService14 extends WorkerService with $TestService14Operations {
  TestService14([this.__arg1]);

  final int? __arg1;
}
