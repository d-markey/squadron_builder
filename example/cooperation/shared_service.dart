import 'dart:async';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/logger.dart';
import 'package:squadron/squadron.dart';
import 'package:using/using.dart';

import 'generated/shared_service.activator.g.dart';

part 'generated/shared_service.worker.g.dart';

@vmService
class SharedService {
  SharedService(this._name);

  final String _name;

  @squadronMethod
  Future<String> getThreadIdAndName() async => '$threadId / $_name';
}
