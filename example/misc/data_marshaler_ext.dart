import 'dart:convert';
import 'dart:typed_data';

import 'package:squadron/squadron.dart';

import 'data.dart';

export 'data.dart'; // testing cyclical imports/exports

extension _PrivateExt on Data {
  List marshal() => [a, b, c];
  static Data unmarshal(List data) => Data(data[0], data[1], data[3]);
}

extension DataMarshalerExt on Data {
  Uint8List marshal([MarshalingContext? context]) {
    final str = utf8.encode(c);
    final buffer = Uint8List(4 + 1 + str.length);
    buffer.writeInt(0, a);
    buffer[4] = b ? 1 : 0;
    buffer.setRange(5 /* = 4 + 1 */, buffer.length, str);
    return buffer;
  }

  static Data unmarshal(Uint8List buffer, [MarshalingContext? context]) =>
      Data(buffer.readInt(0), (buffer[4] != 0), utf8.decode(buffer.sublist(5)));
}

extension DataJsonExt on Data {
  List toJson() => _PrivateExt(this).marshal();

  static Data fromJson(List json) => _PrivateExt.unmarshal(json);
}

extension Data2FromJsonExt on Data2 {
  // toJson is already implemented in DataJsonExt

  static Data2 fromJson(List json) => Data2(json[0], json[1], json[3]);
}

extension Data2ToJsonExt on Data2 {
  List toJson() => [a, b, c];

  // fromJson is already implemented in Data2FromJsonExt
}

extension on Uint8List {
  void writeInt(int pos, int value) {
    this[pos] = (value & 0xFF000000) >> 24;
    this[pos + 1] = (value & 0x00FF0000) >> 16;
    this[pos + 2] = (value & 0x0000FF00) >> 8;
    this[pos + 3] = (value & 0x000000FF);
  }

  int readInt(int pos) =>
      (this[pos] << 24) |
      (this[pos + 1] << 16) |
      (this[pos + 2] << 8) |
      this[pos + 3];
}
