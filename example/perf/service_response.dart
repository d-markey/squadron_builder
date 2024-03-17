final _id = Object();

class ServiceResponse<T> {
  ServiceResponse.hydrate(this.result, this.sqId);

  ServiceResponse(this.result) : sqId = _id.hashCode;

  factory ServiceResponse.fromJson(Map json) =>
      ServiceResponse.hydrate(json['r'], json['i']);

  final T result;
  final int sqId;

  Map toJson() => {'r': result, 'i': sqId};

  @override
  String toString() => '$sqId> $result';
}
