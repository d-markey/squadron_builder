import 'dart:convert';
import 'dart:typed_data';

import 'package:squadron/squadron_service.dart';

import 'service_request.dart';
import 'service_response.dart';

class ListIntMarshaller extends SquadronMarshaller<List<int>, ByteBuffer> {
  const ListIntMarshaller();

  @override
  ByteBuffer marshall(List<int> data) => Int32List.fromList(data).buffer;

  @override
  List<int> unmarshall(ByteBuffer data) => data.asInt32List();
}

const listIntMarshaller = ListIntMarshaller();

class ServiceRequestToString
    extends SquadronMarshaller<ServiceRequest, String> {
  const ServiceRequestToString();

  @override
  String marshall(ServiceRequest x) => x.payload;

  @override
  ServiceRequest unmarshall(String x) => ServiceRequest(x);

  static const instance = ServiceRequestToString();
}

abstract class ServiceRequestGeneric<T>
    extends SquadronMarshaller<ServiceRequest, T> {
  const ServiceRequestGeneric();
}

class ServiceRequestGenericToString extends ServiceRequestGeneric<String> {
  const ServiceRequestGenericToString();

  @override
  String marshall(ServiceRequest x) => x.payload;

  @override
  ServiceRequest unmarshall(String x) => ServiceRequest(x);

  static const instance = ServiceRequestGenericToString();
}

class ServiceResponseOfStringToByteBuffer
    extends SquadronMarshaller<ServiceResponse<String>, ByteBuffer> {
  const ServiceResponseOfStringToByteBuffer();

  void _writeInt(Uint8List bytes, int offset, int value) {
    bytes[offset + 0] = (value & 0xFF000000) >> 24;
    bytes[offset + 1] = (value & 0x00FF0000) >> 16;
    bytes[offset + 2] = (value & 0x0000FF00) >> 8;
    bytes[offset + 3] = (value & 0x000000FF);
  }

  @override
  ByteBuffer marshall(ServiceResponse<String> x) {
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
  ServiceResponse<String> unmarshall(ByteBuffer x) {
    final bytes = Uint8List.view(x);
    final reslen = _readInt(bytes, 0);
    final res = utf8.decoder.convert(bytes.sublist(4, 4 + reslen));
    final sqidOffset = 4 + reslen;
    final sqidlen = _readInt(bytes, sqidOffset);
    final sqid = utf8.decoder
        .convert(bytes.sublist(sqidOffset + 4, sqidOffset + 4 + sqidlen));
    return ServiceResponse.hydrate(res, sqid);
  }

  static const instance = ServiceResponseOfStringToByteBuffer();
}

class ServiceResponseToJson
    extends SquadronMarshaller<ServiceResponse<String>, String> {
  const ServiceResponseToJson();

  @override
  String marshall(ServiceResponse<String> data) => jsonEncode(data.toJson());

  @override
  ServiceResponse<String> unmarshall(String data) =>
      ServiceResponse<String>.fromJson(jsonDecode(data));
}
