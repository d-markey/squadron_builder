import 'dart:core';

export 'data_marshaler_ext.dart';

class Data {
  Data(this.a, this.b, this.c);

  final int a;
  final bool b;
  final String c;

  @override
  String toString() => 'a=$a, b=$b, c=$c';
}

class Data2 extends Data {
  Data2(super.a, super.b, super.c);
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
