import 'dart:async';
import 'dart:convert' show jsonDecode;

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/logger.dart';
import 'package:squadron/squadron.dart' as sq;
import 'package:using/using.dart';

import 'generated/json_service.activator.g.dart';

part 'generated/json_service.worker.g.dart';

@sq.SquadronService(targetPlatform: sq.TargetPlatform.wasm)
class JsonService {
  @sq.squadronMethod
  Future<dynamic> decode(String source) async => jsonDecode(source);
}
