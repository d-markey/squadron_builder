import 'dart:async';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/logger.dart';
import 'package:squadron/squadron.dart';
import 'package:using/using.dart';

import 'generated/person_service.activator.g.dart';
import 'persons.dart';

part 'generated/person_service.worker.g.dart';

@SquadronService(baseUrl: '~/workers', targetPlatform: TargetPlatform.all)
class PersonService {
  @squadronMethod
  FutureOr<Employee?> asEmployee(Person p) => (p is Employee) ? p : null;

  @squadronMethod
  FutureOr<Customer?> asCustomer(Person p) => (p is Customer) ? p : null;

  @squadronMethod
  FutureOr<Prospect?> asProspect(Person p) => (p is Prospect) ? p : null;
}
