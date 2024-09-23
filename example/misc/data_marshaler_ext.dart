import 'dart:convert';
import 'dart:typed_data';

import 'data.dart';

extension DataMarshalerExt on Data {
  Uint8List marshal() {
    final str = utf8.encode(c);
    final buffer = Uint8List(4 + 1 + str.length);
    buffer.writeInt(0, a);
    buffer[4] = b ? 1 : 0;
    buffer.setRange(5 /* = 4 + 1 */, buffer.length, str);
    return buffer;
  }

  static Data unmarshal(Uint8List buffer) => Data(
        buffer.readInt(0),
        (buffer[4] != 0),
        utf8.decode(buffer.sublist(5)),
      );
}

extension WriterExt on Uint8List {
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
