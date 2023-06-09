import 'package:squadron/squadron_service.dart';

class ServiceResponse<T> {
  ServiceResponse.hydrate(this.result, this.sqId);

  ServiceResponse(this.result) : sqId = Squadron.id ?? '<undefined>';

  factory ServiceResponse.fromJson(Map json) =>
      ServiceResponse.hydrate(json['r'], json['i']);

  final T result;
  final String sqId;

  Map toJson() => {'r': result, 'i': sqId};

  @override
  String toString() => '$sqId> $result';
}
