import 'dart:async';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/logger.dart';
import 'package:squadron/squadron.dart';
import 'package:using/using.dart';

import 'generated/service.activator.g.dart';
import 'payload.dart';

part 'generated/service.worker.g.dart';

@SquadronService(baseUrl: '~/workers')
class Service {
  @squadronMethod
  FutureOr<Payload> addItem(Payload payload, String value) {
    payload.items.add(PayloadItem('Item #${payload.items.length + 1}', value));
    payload.success = true;
    return payload;
  }

  @squadronMethod
  FutureOr<DateTime?> getLastModifiedDate(Payload payload) => payload.modified;

  @squadronMethod
  FutureOr<BigInt> getItemCount(Payload payload) =>
      BigInt.from(payload.items.length);
}
