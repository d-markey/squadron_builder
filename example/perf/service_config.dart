class ServiceConfig<T> {
  ServiceConfig(this.name, this.value);

  factory ServiceConfig.fromJson(Map json) =>
      ServiceConfig(json['n'], json['v']);

  final String name;
  final T value;

  Map<String, dynamic> toJson() => {'n': name, 'v': value};
}
