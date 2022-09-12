class MyServiceRequest {
  MyServiceRequest(this.payload);

  factory MyServiceRequest.fromJson(Map json) => MyServiceRequest(json['p']);

  final String payload;

  Map toJson() => {'p': payload};
}
