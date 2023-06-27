import 'dart:async';
import 'dart:convert' show jsonDecode;

import 'package:squadron/squadron.dart';
import 'package:squadron/squadron_annotations.dart';

import 'generated/json_service.activator.g.dart';

part 'generated/json_service.worker.g.dart';

@SquadronService()
class JsonService {
  @SquadronMethod()
  Future<dynamic> decode(String source) async => jsonDecode(source);
}
