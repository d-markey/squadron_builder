import 'dart:async';

import 'package:squadron/squadron.dart';

part 'generated/thread_identity_service.worker.g.dart';

@SquadronService.local()
class ThreadIdentityService {
  @squadronMethod
  FutureOr<String> getThreadId() => threadId;
}
