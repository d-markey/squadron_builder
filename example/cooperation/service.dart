import 'dart:async';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/logger.dart';
import 'package:squadron/squadron.dart' as sq;
import 'package:using/using.dart';

// ignore: unused_import
import 'generated/service.activator.g.dart';
import 'shared_service.dart';

part 'generated/service.worker.g.dart';

@sq.vmService
class Service {
  Service({@sq.sharedService this.sharedService});

  final SharedService? sharedService;

  @sq.squadronMethod
  Future<String> callRemoteService(int i) async =>
      '#$i: ${sq.threadId} --> ${await sharedService?.getThreadIdAndName()}';
}
