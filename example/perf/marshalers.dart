import 'dart:convert';
import 'dart:typed_data';

import 'package:squadron/squadron.dart';

import 'service_request.dart';
import 'service_response.dart';

class ListIntMarshaler extends SquadronMarshaler<List<int>, ByteBuffer> {
  const ListIntMarshaler();

  @override
  ByteBuffer marshal(List<int> data, [MarshalingContext? context]) =>
      Int32List.fromList(data).buffer;

  @override
  List<int> unmarshal(ByteBuffer data, [MarshalingContext? context]) =>
      data.asInt32List();
}

const listIntMarshaler = ListIntMarshaler();

class ServiceRequestToString extends SquadronMarshaler<ServiceRequest, String> {
  const ServiceRequestToString();

  @override
  String marshal(ServiceRequest x, [MarshalingContext? context]) => x.payload;

  @override
  ServiceRequest unmarshal(String x, [MarshalingContext? context]) =>
      ServiceRequest(x);

  static const instance = ServiceRequestToString();
}

abstract class ServiceRequestGeneric<T>
    extends SquadronMarshaler<ServiceRequest, T> {
  const ServiceRequestGeneric();
}

class ServiceRequestGenericToString extends ServiceRequestGeneric<String> {
  const ServiceRequestGenericToString();

  @override
  String marshal(ServiceRequest x, [MarshalingContext? context]) => x.payload;

  @override
  ServiceRequest unmarshal(String x, [MarshalingContext? context]) =>
      ServiceRequest(x);

  static const instance = ServiceRequestGenericToString();
}

class ServiceResponseOfStringToByteBuffer
    extends SquadronMarshaler<ServiceResponse<String>, ByteBuffer> {
  const ServiceResponseOfStringToByteBuffer();

  void _writeInt(Uint8List bytes, int offset, int value) {
    bytes[offset + 0] = (value & 0xFF000000) >> 24;
    bytes[offset + 1] = (value & 0x00FF0000) >> 16;
    bytes[offset + 2] = (value & 0x0000FF00) >> 8;
    bytes[offset + 3] = (value & 0x000000FF);
  }

  @override
  ByteBuffer marshal(ServiceResponse<String> x, [MarshalingContext? context]) {
    var resbytes = utf8.encode(x.result);
    var reslen = resbytes.length;
    final totallen = 4 + reslen + 4;
    final bytes = Uint8List(totallen);
    _writeInt(bytes, 0, reslen);
    bytes.setRange(4, 4 + reslen, resbytes);
    _writeInt(bytes, 4 + reslen, x.sqId);
    return bytes.buffer;
  }

  int _readInt(Uint8List bytes, int offset) =>
      (bytes[offset + 0] << 24) |
      (bytes[offset + 1] << 16) |
      (bytes[offset + 2] << 8) |
      bytes[offset + 3];

  @override
  ServiceResponse<String> unmarshal(
    ByteBuffer x, [
    MarshalingContext? context,
  ]) {
    final bytes = Uint8List.view(x);
    final reslen = _readInt(bytes, 0);
    final res = utf8.decode(bytes.sublist(4, 4 + reslen));
    final sqid = _readInt(bytes, 4 + reslen);
    return ServiceResponse.hydrate(res, sqid);
  }

  static const instance = ServiceResponseOfStringToByteBuffer();
}

class ServiceResponseToJson
    extends SquadronMarshaler<ServiceResponse<String>, String> {
  const ServiceResponseToJson();

  @override
  String marshal(ServiceResponse<String> data, [MarshalingContext? context]) =>
      jsonEncode(data.toJson());

  @override
  ServiceResponse<String> unmarshal(
    String data, [
    MarshalingContext? context,
  ]) => ServiceResponse<String>.fromJson(jsonDecode(data));
}
