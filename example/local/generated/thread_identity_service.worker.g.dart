// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of '../thread_identity_service.dart';

// **************************************************************************
// Generator: WorkerGenerator 8.3.0 (Squadron 7.3.0)
// **************************************************************************

// dart format width=80
/// Command ids used in operations map
const int _$getThreadIdId = 1;

/// WorkerService operations for ThreadIdentityService
extension on ThreadIdentityService {
  OperationsMap _$getOperations() =>
      OperationsMap({_$getThreadIdId: ($req) => getThreadId()});
}

/// Invoker for ThreadIdentityService, implements the public interface to invoke the
/// remote service.
mixin _$ThreadIdentityService$Invoker on Invoker
    implements ThreadIdentityService {
  @override
  Future<String> getThreadId() async {
    final dynamic $res = await send(_$getThreadIdId);
    try {
      final $dsr = _$Deser(contextAware: false);
      return $dsr.$0($res);
    } finally {}
  }
}

/// Facade for ThreadIdentityService, implements other details of the service unrelated to
/// invoking the remote service.
mixin _$ThreadIdentityService$Facade implements ThreadIdentityService {}

/// WorkerClient for ThreadIdentityService
final class $ThreadIdentityService$Client extends WorkerClient
    with _$ThreadIdentityService$Invoker, _$ThreadIdentityService$Facade
    implements ThreadIdentityService {
  $ThreadIdentityService$Client(PlatformChannel channelInfo)
    : super(Channel.deserialize(channelInfo)!);
}

/// Local worker extension for ThreadIdentityService
extension $ThreadIdentityServiceLocalWorkerExt on ThreadIdentityService {
  // Get a fresh local worker instance.
  LocalWorker<ThreadIdentityService> getLocalWorker([
    ExceptionManager? exceptionManager,
  ]) => LocalWorker.create(this, _$getOperations(), exceptionManager);
}

final class _$Deser extends MarshalingContext {
  _$Deser({super.contextAware});
  late final $0 = value<String>();
}
