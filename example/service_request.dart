class ServiceRequest {
  ServiceRequest(this.payload);

  factory ServiceRequest.fromJson(Map json) => ServiceRequest(json['p']);

  final String payload;

  Map toJson() => {'p': payload};
}
