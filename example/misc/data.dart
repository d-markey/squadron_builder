import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

export 'data_marshaler_ext.dart';

part 'data.freezed.dart';

@freezed
abstract class Data with _$Data {
  const Data._();

  const factory Data(
    int a,
    bool b,
    String c,
  ) = _Data;

  @override
  String toString() => 'a=$a, b=$b, c=$c';
}

class Data2 extends Data {
  Data2(this.a, this.b, this.c) : super._();

  @override
  final int a;

  @override
  final bool b;

  @override
  final String c;
}

class Self {
  Self(this.x);

  final int x;

  List toJson() => [x];

  static Self fromJson(List json) => Self(json[0]);
}

class OtherSelf extends Self {
  OtherSelf(super.x);

  static OtherSelf fromJson(List json) => OtherSelf(json[0]);
}
