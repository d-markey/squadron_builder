// ignore_for_file: unused_field

// ignore: unused_import
import 'dart:async';

import 'package:squadron/squadron.dart';
import 'package:squadron/squadron_annotations.dart';

import 'generated/test_services.activator.g.dart';

part 'generated/test_services.worker.g.dart';

@SquadronService()
class TestParameterLess {
  // parameter-less
  TestParameterLess();
}

@SquadronService()
class TestReqPositional {
  // required positional
  TestReqPositional(int arg1);
}

@SquadronService()
class TestOptNullPositional {
  // optional nullable positional
  TestOptNullPositional([int? arg1]);
}

@SquadronService()
class TestOptDefPositional {
  // optional non-nullable positional with default value
  TestOptDefPositional([int arg1 = 0]);
}

@SquadronService()
class TestOptNullDefPositional {
  // optional nullable positional with default value
  TestOptNullDefPositional([int? arg1 = 0]);
}

@SquadronService()
class TestReqPositionalField {
  // required positional
  TestReqPositionalField(this.arg1);

  final int arg1;
}

@SquadronService()
class TestOptNullPositionalField {
  // optional nullable positional
  TestOptNullPositionalField([this.arg1]);

  final int? arg1;
}

@SquadronService()
class TestOptDefPositionalField {
  // optional non-nullable positional with default value
  TestOptDefPositionalField([this.arg1 = 0]);

  final int arg1;
}

@SquadronService()
class TestOptNullDefPositionalField {
  // optional nullable positional with default value
  TestOptNullDefPositionalField([this.arg1 = 0]);

  final int? arg1;
}

@SquadronService()
class TestReqPositionalPrivateField {
  // required positional
  TestReqPositionalPrivateField(this._arg1);

  final int _arg1;
}

@SquadronService()
class TestOptNullPositionalPrivateField {
  // optional nullable positional
  TestOptNullPositionalPrivateField([this._arg1]);

  final int? _arg1;
}

@SquadronService()
class TestOptDefPositionalPrivateField {
  // optional non-nullable positional with default value
  TestOptDefPositionalPrivateField([this._arg1 = 0]);

  final int _arg1;
}

@SquadronService()
class TestOptNullDefPositionalPrivateField {
  // optional nullable positional with default value
  TestOptNullDefPositionalPrivateField([this._arg1 = 0]);

  final int? _arg1;
}

@SquadronService()
class TestOptNullNamed {
  // optional nullable named
  TestOptNullNamed({int? arg1});
}

@SquadronService()
class TestOptDefNamed {
  // optional non-nullable named with default value
  TestOptDefNamed({int arg1 = 0});
}

@SquadronService()
class TestOptNullDefNamed {
  // optional nullable named with default value
  TestOptNullDefNamed({int? arg1 = 0});
}

@SquadronService()
class TestOptNullNamedField {
  // optional nullable named
  TestOptNullNamedField({this.arg1});

  final int? arg1;
}

@SquadronService()
class TestOptDefNamedField {
  // optional non-nullable named with default value
  TestOptDefNamedField({this.arg1 = 0});

  final int arg1;
}

@SquadronService()
class TestOptNullDefNamedField {
  // optional nullable named with default value
  TestOptNullDefNamedField({this.arg1 = 0});

  final int? arg1;
}

@SquadronService()
class TestOptNullNamedPrivateField {
  // optional nullable named
  TestOptNullNamedPrivateField({int? arg1}) : _arg1 = arg1;

  final int? _arg1;
}

@SquadronService()
class TestOptDefNamedPrivateField {
  // optional non-nullable named with default value
  TestOptDefNamedPrivateField({int arg1 = 0}) : _arg1 = arg1;

  final int _arg1;
}

@SquadronService()
class TestOptNullDefNamedPrivateField {
  // optional nullable named with default value
  TestOptNullDefNamedPrivateField({int? arg1 = 0}) : _arg1 = arg1;

  final int? _arg1;
}

// mutable services should not be used via a worker pool
@SquadronService(pool: false)
class TestOptNullDefNamedPrivateNonFinalField {
  // optional nullable named with default value
  TestOptNullDefNamedPrivateNonFinalField({int? state = 0}) : _state = state;

  int? _state;

  @SquadronMethod()
  FutureOr<int?> getState() => _state;

  @SquadronMethod()
  FutureOr<void> setState(int? state) => _state = state;
}

@SquadronService()
class TestInstallable extends ServiceInstaller {
  TestInstallable(this._delay);

  final int _delay;

  @override
  FutureOr<void> install() {
    if (_delay > 0) {
      return Future.delayed(Duration(milliseconds: _delay));
    }
  }

  @override
  FutureOr<void> uninstall() {
    if (_delay > 0) {
      return Future.delayed(Duration(milliseconds: _delay));
    }
  }
}
