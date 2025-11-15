import 'package:source_gen/source_gen.dart';

import '../_analyzer_helpers.dart';
import '../_helpers.dart';
import '../assets/worker_assets.dart';
import '../marshalers/deser.dart';
import '../marshalers/marshaler.dart';
import '../marshalers/marshaling_context.dart';
import '../types/managed_type.dart';
import '../types/type_manager.dart';
import 'squadron_parameter.dart';

class SquadronParameters {
  SquadronParameters(this.typeManager);

  SquadronParameters clone() {
    final params = SquadronParameters(typeManager);
    params._params.addAll(_params);
    params._cancelationToken = _cancelationToken;
    params._hasPositionalParameters = _hasPositionalParameters;
    params._hasNamedParameters = _hasNamedParameters;
    params._hasOptionalParameters = _hasOptionalParameters;
    return params;
  }

  final TypeManager typeManager;

  final _params = <SquadronParameter>[];
  List<SquadronParameter> get params => _params;

  bool get isEmpty => _params.isEmpty;
  bool get isNotEmpty => !isEmpty;

  String? _cancelationToken;
  String? get cancelationToken => _cancelationToken;

  bool _hasPositionalParameters = false;
  bool _hasNamedParameters = false;
  bool _hasOptionalParameters = false;

  static bool _all(SquadronParameter p) => true;
  Iterable<SquadronParameter> get all => _params.where(_all);

  static bool _positional(SquadronParameter p) => !p.isNamed && !p.isOptional;
  Iterable<SquadronParameter> get positional => _params.where(_positional);

  static bool _optional(SquadronParameter p) => p.isOptional;
  Iterable<SquadronParameter> get optional => _params.where(_optional);

  static bool _named(SquadronParameter p) => p.isNamed;
  Iterable<SquadronParameter> get named => _params.where(_named);

  bool _checkCancelationToken(FormalParameterElement param) {
    if (!param.type.isA(typeManager.TCancelationToken)) {
      // not a cancelation token
      return false;
    }
    if (_cancelationToken != null) {
      throw InvalidGenerationSourceError(
        'Multiple cancelation tokens may not be passed to service methods '
        '($_cancelationToken, ${param.name}). You should use a '
        'CompositeCancelationToken instead.',
      );
    } else {
      _cancelationToken = param.name;
      return true;
    }
  }

  SquadronParameter register(
    FormalParameterElement param, [
    Marshaler? marshaler,
  ]) {
    final isToken = _checkCancelationToken(param);
    int serIdx = -1;
    if (!isToken) {
      serIdx = _params.length - (_cancelationToken != null ? 1 : 0);
    }
    return _register(
      SquadronParameter.from(param, isToken, marshaler, serIdx, typeManager),
    );
  }

  SquadronParameter addOptional(String name, ManagedType type) => _register(
    SquadronParameter.opt(
      name,
      type,
      _hasNamedParameters || !_hasOptionalParameters,
    ),
  );

  SquadronParameter _register(SquadronParameter param) {
    if ((param.isNamed && _hasOptionalParameters) ||
        (param.isOptional && _hasNamedParameters)) {
      throw InvalidGenerationSourceError(
        'Cannot register both named and optional parameters. Parameter name: ${param.name}',
      );
    }

    if (param.isNamed) {
      _hasNamedParameters = true;
    } else if (param.isOptional) {
      _hasOptionalParameters = true;
    } else {
      _hasPositionalParameters = true;
    }

    _params.add(param);
    return param;
  }

  String asArguments() => _params.map((p) => p.argument()).join(', ');

  String asNonSuperArguments() =>
      _params.where((p) => !p.isSuperParam).map((p) => p.argument()).join(', ');

  @override
  String toString() {
    if (_hasPositionalParameters) {
      if (_hasOptionalParameters) {
        return '${positional.join(', ')}, [${optional.join(', ')}]';
      } else if (_hasNamedParameters) {
        return '${positional.join(', ')}, {${named.join(', ')}}';
      } else {
        return positional.join(', ');
      }
    } else if (_hasOptionalParameters) {
      return '[${optional.join(', ')}]';
    } else if (_hasNamedParameters) {
      return '{${named.join(', ')}}';
    } else {
      return '';
    }
  }

  String toStringNoFields() {
    if (_hasPositionalParameters) {
      if (_hasOptionalParameters) {
        return '${positional.toStringNoField().join(', ')}, [${optional.toStringNoField().join(', ')}]';
      } else if (_hasNamedParameters) {
        return '${positional.toStringNoField().join(', ')}, {${named.toStringNoField().join(', ')}}';
      } else {
        return positional.toStringNoField().join(', ');
      }
    } else if (_hasOptionalParameters) {
      return '[${optional.toStringNoField().join(', ')}]';
    } else if (_hasNamedParameters) {
      return '{${named.toStringNoField().join(', ')}}';
    } else {
      return '';
    }
  }

  String asSuperParams() {
    if (_hasPositionalParameters) {
      if (_hasOptionalParameters) {
        return '${positional.toSuperParam().join(', ')}, [${optional.toSuperParam().join(', ')}]';
      } else if (_hasNamedParameters) {
        return '${positional.toSuperParam().join(', ')}, {${named.toSuperParam().join(', ')}}';
      } else {
        return positional.toSuperParam().join(', ');
      }
    } else if (_hasOptionalParameters) {
      return '[${optional.toSuperParam().join(', ')}]';
    } else if (_hasNamedParameters) {
      return '{${named.toSuperParam().join(', ')}}';
    } else {
      return '';
    }
  }

  DeSer? ser(MarshalingContext context, bool? withContext) {
    var needsContext = false, contextAware = false;
    final args = StringBuffer();
    for (var param in params) {
      if (param.isCancelationToken) continue;
      final ser = context.ser(param.type, withContext, param.marshaler);
      if (ser == null) {
        args.csv(param.name);
      } else {
        needsContext = true;
        contextAware |= ser.contextAware;
        args.csv('${context.$sr}.${ser.code}(${param.name})');
      }
    }
    return args.isEmpty ? null : DeSer('[$args]', needsContext, contextAware);
  }

  String serializeForActivation(MarshalingContext context) {
    if (params.isEmpty) return '';
    bool? needsContext;
    var contextAware = false;
    final args = StringBuffer();
    for (var param in params) {
      final ser =
          param.isSharedService
              ? null
              : context.ser(param.type, true, param.marshaler);
      if (ser == null) {
        args.csv(param.name);
      } else {
        needsContext = true;
        contextAware |= ser.contextAware;
        args.csv('${context.$sr}.${ser.code}(${param.name})');
      }
    }
    return (needsContext == null)
        ? '[$args]'
        : '''(() {
              ${context.initSerContext(true, contextAware)};
              return [$args];
            })()''';
  }

  DeSer? deser(MarshalingContext context, String req) {
    if (params.isEmpty) return null;
    var needsContext = false, contextAware = false;
    final code = StringBuffer();
    for (var p in params.indexed) {
      final param = p.$2;
      final name = param.isNamed ? '${param.name}:' : '';
      final arg = '$req.args[${p.$1}]';

      if (param.isCancelationToken) {
        code.csv('$name $req.cancelToken');
      } else if (param.isSharedService) {
        needsContext = true;
        final service = param.type;
        final ser = context.deser(typeManager.TPlatformChannel);
        final platformChannel =
            (ser == null) ? arg : '${context.$dsr}.${ser.code}($arg)';
        final remoteService = service.nonNullable.getTypeName(omitPrefix: true);
        final remoteServiceClient =
            '${service.prefix}${WorkerAssets.getWorkerClientFor(remoteService)}($platformChannel)';
        code.csv(
          service.isNullable
              ? '$name ($arg == null) ? null : $remoteServiceClient'
              : '$name $remoteServiceClient',
        );
      } else {
        final ser = context.deser(param.type, param.marshaler);
        if (ser == null) {
          code.csv('$name $arg');
        } else {
          needsContext = true;
          contextAware |= ser.contextAware;
          code.csv('$name ${context.$dsr}.${ser.code}($arg)');
        }
      }
    }
    return DeSer(code.toString(), needsContext, contextAware);
  }
}

extension on Iterable<SquadronParameter> {
  Iterable<String> toStringNoField() => map((p) => p.toStringNoField());

  Iterable<String> toSuperParam() => map((p) => p.toSuperParam());
}
