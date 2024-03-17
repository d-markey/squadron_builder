import 'dart:convert';

import 'package:logger/logger.dart';

import 'json_service.dart';

void main() async {
  final logger = Logger(
    filter: ProductionFilter(),
    output: ConsoleOutput(),
    printer: SimplePrinter(),
  );

  // start worker
  final worker = JsonServiceWorker();
  await worker.start();

  final json = User(1, 'DMA', 'admin', 5).toJson();
  logger.i('source = $json');

  final output = await worker.loadJson<User>(
    data: jsonEncode(json),
    fromJson: User.fromJson,
  );

  logger.i('output = ${output.toJson()}');

  worker.stop();
}

class User {
  User(this.id, this.name, this.profile, this.stars);

  User.fromJson(Map<String, dynamic> json)
      : this(
          json['id'],
          json['name'],
          json['profile'],
          json['stars'],
        );

  final int id;
  final String name;
  String profile;
  int stars;

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'profile': profile, 'stars': stars};
}
