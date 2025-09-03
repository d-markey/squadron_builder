import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

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
