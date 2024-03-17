class ServiceRequest {
  ServiceRequest(this.payload);

  factory ServiceRequest.fromJson(Map json) => ServiceRequest(json['pl']);

  final String payload;

  Map toJson() => {'pl': payload};
}
