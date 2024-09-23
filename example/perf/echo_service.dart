import 'dart:async' as xxx;
import 'dart:convert';

import 'package:cancelation_token/cancelation_token.dart';
import 'package:logger/logger.dart';
import 'package:squadron/squadron.dart';

import 'generated/echo_service.activator.g.dart';
import 'marshalers.dart';
import 'service_config.dart' as cfg;
import 'service_request.dart' as srv;
import 'service_response.dart' as srv;

part 'generated/echo_service.worker.g.dart';

@SquadronService(targetPlatform: TargetPlatform.vm)
class EchoService {
  EchoService([bool trace = false, cfg.ServiceConfig<int>? workloadDelay])
      : _delay = Duration(microseconds: workloadDelay?.value ?? 50),
        _logger = trace
            ? Logger(
                filter: ProductionFilter(),
                output: ConsoleOutput(),
                printer: SimplePrinter(),
              )
            : null;

  final Logger? _logger;

  final Duration _delay;

  @squadronMethod
  xxx.FutureOr<srv.ServiceResponse<String>?> jsonEchoWithJsonResult(
      srv.ServiceRequest request) {
    _logger?.t('jsonEchoWithJsonResult(${jsonEncode(request.toJson())})');
    _simulateWorkload();
    return srv.ServiceResponse('${request.payload} done');
  }

  @squadronMethod
  xxx.FutureOr<srv.ServiceResponse<String>> explicitEchoWithJsonResult(
      @ServiceRequestToString() srv.ServiceRequest request) {
    _logger?.t('explicitEchoWithJsonResult(${jsonEncode(request.toJson())})');
    _simulateWorkload();
    return srv.ServiceResponse('${request.payload} done');
  }

  @squadronMethod
  @ServiceResponseOfStringToByteBuffer()
  xxx.FutureOr<srv.ServiceResponse<String>> jsonEchoWithExplicitResult(
      srv.ServiceRequest request) {
    _logger?.t('jsonEchoWithExplicitResult(${jsonEncode(request.toJson())})');
    _simulateWorkload();
    return srv.ServiceResponse('${request.payload} done');
  }

  @squadronMethod
  @ServiceResponseOfStringToByteBuffer.instance
  xxx.FutureOr<srv.ServiceResponse<String>> explicitEchoWithExplicitResult(
      @ServiceRequestGenericToString.instance srv.ServiceRequest request,
      {CancelationToken? token}) {
    _logger
        ?.t('explicitEchoWithExplicitResult(${jsonEncode(request.toJson())})');
    _simulateWorkload();
    return srv.ServiceResponse('${request.payload} done');
  }

  @squadronMethod
  @ServiceResponseToJson()
  xxx.FutureOr<srv.ServiceResponse<String>> jsonEncodeEcho(
      @ServiceRequestToString.instance srv.ServiceRequest request,
      [CancelationToken? token]) {
    _logger
        ?.t('explicitEchoWithExplicitResult(${jsonEncode(request.toJson())})');
    _simulateWorkload();
    return srv.ServiceResponse('${request.payload} done');
  }

  void _simulateWorkload() {
    // simulate some CPU-bound workload
    final sw = Stopwatch()..start();
    while (sw.elapsed < _delay) {
      // loop
    }
  }
}
