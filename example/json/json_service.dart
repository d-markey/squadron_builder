import 'dart:async';
import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:squadron/squadron.dart';

import 'generated/json_service.activator.g.dart';

part 'generated/json_service.worker.g.dart';

@SquadronService(web: false)
class JsonService {
  final _logger = Logger(
    filter: ProductionFilter(),
    output: ConsoleOutput(),
    printer: SimplePrinter(),
  );

  @squadronMethod
  FutureOr<T> loadJson<T>({
    required final String data,
    required final T Function(Map<String, dynamic>) fromJson,
  }) {
    _logger.i('Deserializing $data...');
    final json = jsonDecode(_noop(data)) as Map<String, dynamic>;
    return fromJson(json);
  }

  T _noop<T>(T data) => data;
}
