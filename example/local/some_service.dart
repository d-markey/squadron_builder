import 'dart:async';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/web.dart';
import 'package:squadron/squadron.dart';
import 'package:using/using.dart';

import 'generated/some_service.activator.g.dart';
import 'thread_identity_service.dart' as id;

part 'generated/some_service.worker.g.dart';

@SquadronService.vm()
class SomeService {
  SomeService({@sharedService this.threadIdService});

  final id.ThreadIdentityService? threadIdService;

  @squadronMethod
  FutureOr<String> getThreadId() => threadId;

  @squadronMethod
  FutureOr<String> getThreadIdFromLocal() =>
      threadIdService?.getThreadId() ?? '<null>';
}
