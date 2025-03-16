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

  // Uint8List Function() get marshal => () {
  //       final str = utf8.encode(c);
  //       final buffer = Uint8List(4 + 1 + str.length);
  //       buffer.writeInt(0, a);
  //       buffer[4] = b ? 1 : 0;
  //       buffer.setRange(5 /* = 4 + 1 */, buffer.length, str);
  //       return buffer;
  //     };

  // Data.unmarshal(Uint8List buffer)
  //     : a = buffer.readInt(0),
  //       b = (buffer[4] != 0),
  //       c = utf8.decode(buffer.sublist(5));
}
