import 'dart:async';
import 'dart:convert';

import 'package:squadron/squadron.dart';
import 'package:squadron/squadron_annotations.dart';

import 'generated/json_service.activator.g.dart';

part 'generated/json_service.worker.g.dart';

@SquadronService(web: false)
@UseLogger(ConsoleSquadronLogger)
class JsonService {
  @SquadronMethod()
  FutureOr<T> loadJson<T>({
    required final String data,
    required final T Function(Map<String, Object?>) fromJson,
  }) {
    Squadron.info('Deserializing $data...');
    final json = jsonDecode(data) as Map<String, Object?>;
    return fromJson(json);
  }
}
