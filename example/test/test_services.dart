// ignore_for_file: unused_field

// ignore: unused_import
import 'dart:async';
import 'dart:typed_data' as typed_data;

import 'package:squadron/squadron.dart' as sq;

import 'generated/test_services.activator.g.dart';

part 'generated/test_services.worker.g.dart';

@sq.SquadronService()
class TestParameterLess {
  // parameter-less
  TestParameterLess();
}

@sq.SquadronService()
class TestReqPositional {
  // required positional
  TestReqPositional(int arg1);
}

@sq.SquadronService()
class TestOptNullPositional {
  // optional nullable positional
  TestOptNullPositional([int? arg1]);
}

@sq.SquadronService()
class TestOptDefPositional {
  // optional non-nullable positional with default value
  TestOptDefPositional([int arg1 = 0]);
}

@sq.SquadronService()
class TestOptNullDefPositional {
  // optional nullable positional with default value
  TestOptNullDefPositional([int? arg1 = 0]);
}

@sq.SquadronService()
class TestReqPositionalField {
  // required positional
  TestReqPositionalField(this.arg1);

  final int arg1;
}

@sq.SquadronService()
class TestOptNullPositionalField {
  // optional nullable positional
  TestOptNullPositionalField([this.arg1]);

  final int? arg1;
}

@sq.SquadronService()
class TestOptDefPositionalField {
  // optional non-nullable positional with default value
  TestOptDefPositionalField([this.arg1 = 0]);

  final int arg1;
}

@sq.SquadronService()
class TestOptNullDefPositionalField {
  // optional nullable positional with default value
  TestOptNullDefPositionalField([this.arg1 = 0]);

  final int? arg1;
}

@sq.SquadronService()
class TestReqPositionalPrivateField {
  // required positional
  TestReqPositionalPrivateField(this._arg1);

  final int _arg1;
}

@sq.SquadronService()
class TestOptNullPositionalPrivateField {
  // optional nullable positional
  TestOptNullPositionalPrivateField([this._arg1]);

  final int? _arg1;
}

@sq.SquadronService()
class TestOptDefPositionalPrivateField {
  // optional non-nullable positional with default value
  TestOptDefPositionalPrivateField([this._arg1 = 0]);

  final int _arg1;
}

@sq.SquadronService()
class TestOptNullDefPositionalPrivateField {
  // optional nullable positional with default value
  TestOptNullDefPositionalPrivateField([this._arg1 = 0]);

  final int? _arg1;
}

@sq.SquadronService()
class TestOptNullNamed {
  // optional nullable named
  TestOptNullNamed({int? arg1});
}

@sq.SquadronService()
class TestOptDefNamed {
  // optional non-nullable named with default value
  TestOptDefNamed({int arg1 = 0});
}

@sq.SquadronService()
class TestOptNullDefNamed {
  // optional nullable named with default value
  TestOptNullDefNamed({int? arg1 = 0});
}

@sq.SquadronService()
class TestOptNullNamedField {
  // optional nullable named
  TestOptNullNamedField({this.arg1});

  final int? arg1;
}

@sq.SquadronService()
class TestOptDefNamedField {
  // optional non-nullable named with default value
  TestOptDefNamedField({this.arg1 = 0});

  final int arg1;
}

@sq.SquadronService()
class TestOptNullDefNamedField {
  // optional nullable named with default value
  TestOptNullDefNamedField({this.arg1 = 0});

  final int? arg1;
}

@sq.SquadronService()
class TestOptNullNamedPrivateField {
  // optional nullable named
  TestOptNullNamedPrivateField({int? arg1}) : _arg1 = arg1;

  final int? _arg1;
}

@sq.SquadronService()
class TestOptDefNamedPrivateField {
  // optional non-nullable named with default value
  TestOptDefNamedPrivateField({int arg1 = 0}) : _arg1 = arg1;

  final int _arg1;
}

@sq.SquadronService()
class TestOptNullDefNamedPrivateField {
  // optional nullable named with default value
  TestOptNullDefNamedPrivateField({int? arg1 = 0}) : _arg1 = arg1;

  final int? _arg1;
}

@sq.SquadronService()
class TestPrefixedImportType {
  TestPrefixedImportType(this.typedData);

  final typed_data.Int8List typedData; // Int8List from prefixed import

  @sq.SquadronMethod()
  FutureOr<typed_data.Int8List?> getTypedData() => typedData;
}

// note: mutable services should not be used via a worker pool
@sq.SquadronService(pool: false)
class TestOptNullDefNamedPrivateNonFinalField {
  // optional nullable named with default value
  TestOptNullDefNamedPrivateNonFinalField({int? state = 0}) : _state = state;

  int? _state;

  @sq.squadronMethod
  FutureOr<int?> getState() => _state;

  @sq.squadronMethod
  FutureOr<void> setState(int? state) => _state = state;
}

@sq.SquadronService()
class TestInstallable extends sq.ServiceInstaller {
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

@sq.SquadronService()
class TestRecordTypes {
  TestRecordTypes();

  @sq.squadronMethod
  FutureOr<(int, List)> unnamed() {
    return (0, []);
  }

  @sq.squadronMethod
  FutureOr<({int count, List items})> named() {
    return (count: 0, items: []);
  }

  @sq.squadronMethod
  FutureOr<(int, {List items})> both() {
    return (0, items: []);
  }
}

@sq.SquadronService()
class TestRequiredSuperParam {
  TestRequiredSuperParam({required this.path});

  final String path;

  @sq.squadronMethod
  Future<void> clear() async {}
}
