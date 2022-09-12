class MyServiceConfig {
  MyServiceConfig(this.name, this.setting);

  final String name;
  int setting;

  Map<String, dynamic> toJson() => {
        'n': name,
        's': setting,
      };

  factory MyServiceConfig.fromJson(Map json) =>
      MyServiceConfig(json['n'], json['s']);
}
