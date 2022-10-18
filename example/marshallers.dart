import 'dart:convert';
import 'dart:typed_data';

import 'package:squadron/squadron_service.dart';

import 'my_service_request.dart';
import 'my_service_response.dart';

class ListIntMarshaller extends SquadronMarshaller<List<int>, ByteBuffer> {
  const ListIntMarshaller();

  @override
  ByteBuffer marshall(List<int> data) => Int32List.fromList(data).buffer;

  @override
  List<int> unmarshall(ByteBuffer data) => data.asInt32List();
}

const listIntMarshaller = ListIntMarshaller();

class MyServiceRequestToString
    extends SquadronMarshaller<MyServiceRequest, String> {
  const MyServiceRequestToString();

  @override
  String marshall(MyServiceRequest x) => x.payload;

  @override
  MyServiceRequest unmarshall(String x) => MyServiceRequest(x);

  static const instance = MyServiceRequestToString();
}

abstract class MyServiceRequestGeneric<T>
    extends SquadronMarshaller<MyServiceRequest, T> {
  const MyServiceRequestGeneric();
}

class MyServiceRequestGenericToString extends MyServiceRequestGeneric<String> {
  const MyServiceRequestGenericToString();

  @override
  String marshall(MyServiceRequest x) => x.payload;

  @override
  MyServiceRequest unmarshall(String x) => MyServiceRequest(x);

  static const instance = MyServiceRequestGenericToString();
}

class MyServiceResponseOfStringToByteBuffer
    extends SquadronMarshaller<MyServiceResponse<String>, ByteBuffer> {
  const MyServiceResponseOfStringToByteBuffer();

  void _writeInt(Uint8List bytes, int offset, int value) {
    bytes[offset + 0] = (value & 0xFF000000) >> 24;
    bytes[offset + 1] = (value & 0x00FF0000) >> 16;
    bytes[offset + 2] = (value & 0x0000FF00) >> 8;
    bytes[offset + 3] = (value & 0x000000FF);
  }

  @override
  ByteBuffer marshall(MyServiceResponse<String> x) {
    var resbytes = utf8.encoder.convert(x.result);
    var reslen = resbytes.length;
    var sqidbytes = utf8.encoder.convert(x.sqId);
    var sqidlen = sqidbytes.length;
    final totallen = 4 + reslen + 4 + sqidlen;
    final bytes = Uint8List(totallen);
    _writeInt(bytes, 0, reslen);
    for (var i = 0; i < reslen; i++) {
      bytes[4 + i] = resbytes[i];
    }
    var sqidOffset = 4 + reslen;
    _writeInt(bytes, sqidOffset, sqidlen);
    for (var i = 0; i < sqidlen; i++) {
      bytes[sqidOffset + 4 + i] = sqidbytes[i];
    }
    return bytes.buffer;
  }

  int _readInt(Uint8List bytes, int offset) =>
      (bytes[offset + 0] << 24) +
      (bytes[offset + 1] << 16) +
      (bytes[offset + 2] << 8) +
      bytes[offset + 3];

  @override
  MyServiceResponse<String> unmarshall(ByteBuffer x) {
    final bytes = Uint8List.view(x);
    final reslen = _readInt(bytes, 0);
    final res = utf8.decoder.convert(bytes.sublist(4, 4 + reslen));
    final sqidOffset = 4 + reslen;
    final sqidlen = _readInt(bytes, sqidOffset);
    final sqid = utf8.decoder
        .convert(bytes.sublist(sqidOffset + 4, sqidOffset + 4 + sqidlen));
    return MyServiceResponse.hydrate(res, sqid);
  }

  static const instance = MyServiceResponseOfStringToByteBuffer();
}

class MyServiceResponseToJson
    extends SquadronMarshaller<MyServiceResponse<String>, String> {
  const MyServiceResponseToJson();

  @override
  String marshall(MyServiceResponse<String> data) => jsonEncode(data.toJson());

  @override
  MyServiceResponse<String> unmarshall(String data) =>
      MyServiceResponse<String>.fromJson(jsonDecode(data));
}
