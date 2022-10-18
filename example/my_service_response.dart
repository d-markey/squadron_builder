import 'package:squadron/squadron_service.dart';

class MyServiceResponse<T> {
  MyServiceResponse.hydrate(this.result, this.sqId);

  MyServiceResponse(this.result) : sqId = Squadron.id ?? '<undefined>';

  factory MyServiceResponse.fromJson(Map json) =>
      MyServiceResponse.hydrate(json['r'], json['i']);

  final T result;
  final String sqId;

  Map toJson() => {'r': result, 'i': sqId};

  @override
  String toString() => '$sqId> $result';
}
