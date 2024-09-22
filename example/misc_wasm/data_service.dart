import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/logger.dart';
import 'package:squadron/squadron.dart';
import 'package:using/using.dart';

import 'generated/data_service.activator.g.dart';

part 'generated/data_service.worker.g.dart';

@SquadronService(targetPlatform: TargetPlatform.wasm)
class DataService {
  @squadronMethod
  FutureOr<Data> doSomething(Data input) =>
      Data(input.a + 1, !input.b, '(was $input)');
}

class Data {
  Data(this.a, this.b, this.c);

  final int a; // 32-bits
  final bool b;
  final String c;

  @override
  String toString() => 'a=$a, b=$b, c=$c';

  Uint8List marshal() {
    final str = utf8.encode(c);
    final buffer = Uint8List(4 + 1 + str.length);
    _writeInt(buffer, 0, a);
    buffer[4] = b ? 1 : 0;
    buffer.setRange(5 /* = 4 + 1 */, buffer.length, str);
    return buffer;
  }

  Data.unmarshal(Uint8List buffer)
      : a = _readInt(buffer, 0),
        b = (buffer[4] != 0),
        c = utf8.decode(buffer.sublist(5));

  static void _writeInt(Uint8List buffer, int pos, int value) {
    buffer[pos] = (value & 0xFF000000) >> 24;
    buffer[pos + 1] = (value & 0x00FF0000) >> 16;
    buffer[pos + 2] = (value & 0x0000FF00) >> 8;
    buffer[pos + 3] = (value & 0x000000FF);
  }

  static int _readInt(Uint8List buffer, int pos) =>
      (buffer[pos] << 24) |
      (buffer[pos + 1] << 16) |
      (buffer[pos + 2] << 8) |
      buffer[pos + 3];
}
