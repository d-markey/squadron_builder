// ignore_for_file: unused_field

// ignore: unused_import
import 'dart:async';

import 'package:squadron/squadron.dart';
import 'package:squadron/squadron_annotations.dart';

import 'generated/test_services.activator.g.dart';

part 'generated/test_services.worker.g.dart';

@SquadronService()
class TestService1 {
  TestService1() {
    // parameter-less constructor
  }
}

@SquadronService()
class TestService2 {
  TestService2(int arg1);
}

@SquadronService()
class TestService3 {
  TestService3([int arg1 = 0]);
}

@SquadronService()
class TestService4 {
  TestService4({int arg1 = 0});
}

@SquadronService()
class TestService5 {
  TestService5(int arg1, {int? arg2});
}

@SquadronService()
class TestService6 {
  TestService6(int arg1, [int? arg2]);
}

@SquadronService()
class TestService7 {
  TestService7(this.arg1);

  final int arg1;
}

@SquadronService()
class TestService8 {
  TestService8(this.arg1, [this.arg2]);

  final int arg1;
  final int? arg2;
}

@SquadronService()
class TestService9 {
  TestService9(this.arg1, {this.arg2});

  final int arg1;
  final int? arg2;
}

@SquadronService()
class TestService10 {
  TestService10([this.arg1]);

  final int? arg1;
}

@SquadronService()
class TestService11 {
  TestService11({this.arg1 = 0});

  final int arg1;
}

@SquadronService()
class TestService12 {
  TestService12(this._arg1);

  final int _arg1;

  @override
  String toString() => '$_arg1';
}

@SquadronService()
class TestService13 {
  TestService13([this._arg1]);

  final int? _arg1;

  @override
  String toString() => '$_arg1';
}

@SquadronService()
class TestService14 {
  TestService14([this.__arg1]);

  final int? __arg1;

  @override
  String toString() => __arg1?.toString() ?? '';
}
