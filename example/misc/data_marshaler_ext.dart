import 'dart:convert';
import 'dart:typed_data';

import 'data_service.dart';

extension DataMarshalerExt on Data {
  Uint8List marshal() {
    final str = utf8.encode(c);
    final buffer = Uint8List(4 + 1 + str.length);
    Data.writeInt(buffer, 0, a);
    buffer[4] = b ? 1 : 0;
    buffer.setRange(5 /* = 4 + 1 */, buffer.length, str);
    return buffer;
  }

  static Data unmarshal(Uint8List buffer) => Data(
        Data.readInt(buffer, 0),
        (buffer[4] != 0),
        utf8.decode(buffer.sublist(5)),
      );
}
