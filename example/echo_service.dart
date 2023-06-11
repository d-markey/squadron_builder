import 'dart:async';
import 'dart:convert';

import 'package:squadron/squadron_annotations.dart';
import 'package:squadron/squadron.dart';

import 'marshallers.dart';
import 'generated/echo_service.activator.g.dart';
import 'service_config.dart';
import 'service_request.dart';
import 'service_response.dart';

part 'generated/echo_service.worker.g.dart';

@SquadronService(web: false)
@UseLogger(ParentSquadronLogger)
class EchoService extends WorkerService with $EchoServiceOperations {
  EchoService([this._trace = false, ServiceConfig<int>? workloadDelay])
      : _delay = Duration(microseconds: workloadDelay?.value ?? 50);

  final bool _trace;

  final Duration _delay;

  @SquadronMethod()
  FutureOr<ServiceResponse<String>?> jsonEchoWithJsonResult(
      ServiceRequest request) {
    if (_trace) {
      Squadron.finer('jsonEchoWithJsonResult(${jsonEncode(request.toJson())})');
    }
    _simulateWorkload();
    return ServiceResponse('${request.payload} done');
  }

  @SquadronMethod()
  FutureOr<ServiceResponse<String>> explicitEchoWithJsonResult(
      @SerializeWith(ServiceRequestToString) ServiceRequest request) {
    if (_trace) {
      Squadron.finer(
          'explicitEchoWithJsonResult(${jsonEncode(request.toJson())})');
    }
    _simulateWorkload();
    return ServiceResponse('${request.payload} done');
  }

  @SquadronMethod()
  @SerializeWith(ServiceResponseOfStringToByteBuffer)
  FutureOr<ServiceResponse<String>> jsonEchoWithExplicitResult(
      ServiceRequest request) {
    if (_trace) {
      Squadron.finer(
          'jsonEchoWithExplicitResult(${jsonEncode(request.toJson())})');
    }
    _simulateWorkload();
    return ServiceResponse('${request.payload} done');
  }

  @SquadronMethod()
  @SerializeWith(ServiceResponseOfStringToByteBuffer.instance)
  FutureOr<ServiceResponse<String>> explicitEchoWithExplicitResult(
      @SerializeWith(ServiceRequestGenericToString.instance)
      ServiceRequest request,
      {CancellationToken? token}) {
    if (_trace) {
      Squadron.finer(
          'explicitEchoWithExplicitResult(${jsonEncode(request.toJson())})');
    }
    _simulateWorkload();
    return ServiceResponse('${request.payload} done');
  }

  @SquadronMethod()
  @SerializeWith(ServiceResponseToJson)
  FutureOr<ServiceResponse<String>> jsonEncodeEcho(
      @SerializeWith(ServiceRequestToString.instance) ServiceRequest request,
      [CancellationToken? token]) {
    if (_trace) {
      Squadron.finer(
          'explicitEchoWithExplicitResult(${jsonEncode(request.toJson())})');
    }
    _simulateWorkload();
    return ServiceResponse('${request.payload} done');
  }

  void _simulateWorkload() {
    // simulate some CPU-bound workload
    final sw = Stopwatch()..start();
    while (sw.elapsed < _delay) {
      // loop
    }
  }
}
