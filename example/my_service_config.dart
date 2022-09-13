class MyServiceConfig<T> {
  MyServiceConfig(this.name, this.value);

  factory MyServiceConfig.fromJson(Map json) =>
      MyServiceConfig(json['n'], json['v']);

  final String name;
  final T value;

  Map<String, dynamic> toJson() => {'n': name, 'v': value};
}
