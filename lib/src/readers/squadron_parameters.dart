import 'package:analyzer/dart/element/element.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squadron_builder/src/marshalers/serialization_context.dart';

import '../marshalers/deser.dart';
import '../marshalers/marshaler.dart';
import '../types/extensions.dart';
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

  bool _checkCancelationToken(ParameterElement param) {
    if (!param.type.isA(typeManager.TCancelationToken)) {
      // not a cancelation token
      return false;
    }
    if (_cancelationToken != null) {
      throw InvalidGenerationSourceError(
          'Multiple cancelation tokens may not be passed to service methods '
          '($_cancelationToken, ${param.name}). You should use a '
          'CompositeCancelationToken instead.');
    } else {
      _cancelationToken = param.name;
      return true;
    }
  }

  SquadronParameter register(ParameterElement param, Marshaler? marshaler) {
    final isToken = _checkCancelationToken(param);
    int serIdx = -1;
    if (!isToken) {
      serIdx = _params.length - (_cancelationToken != null ? 1 : 0);
    }
    return _register(
        SquadronParameter.from(param, isToken, marshaler, serIdx, typeManager));
  }

  SquadronParameter addOptional(String name, ManagedType type) =>
      _register(SquadronParameter.opt(
          name, type, _hasNamedParameters || !_hasOptionalParameters));

  SquadronParameter _register(SquadronParameter param) {
    if ((param.isNamed && _hasOptionalParameters) ||
        (param.isOptional && _hasNamedParameters)) {
      throw InvalidGenerationSourceError(
          'Cannot register both named and optional parameters. Parameter name: ${param.name}');
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

  DeSer? serialize(SerializationContext context) {
    var needsContext = false, contextAware = false;
    final args = StringBuffer();
    for (var i = 0; i < _params.length; i++) {
      final param = _params[i];
      if (param.isCancelationToken) continue;
      if (args.isNotEmpty) args.write(',');
      final castor = context.getSerializer(param.type, param.marshaler);
      if (castor == null) {
        args.write(param.name);
      } else {
        needsContext |= castor.needsContext;
        contextAware |= castor.contextAware;
        args.write(SerializationContext.instanceName);
        args.write('.');
        args.write(castor.code);
        args.write('(');
        args.write(param.name);
        args.write(')');
      }
    }
    return args.isEmpty ? null : DeSer('[$args]', needsContext, contextAware);
  }

  String serializeForActivation(SerializationContext context) {
    if (_params.isEmpty) return '';
    bool? needsContext;
    var contextAware = false;
    final args = StringBuffer();
    for (var i = 0; i < _params.length; i++) {
      final param = _params[i];
      if (args.isNotEmpty) args.write(',');
      final castor = context.getSerializer(param.type, param.marshaler);
      if (castor == null) {
        args.write(param.name);
      } else {
        needsContext = (needsContext ?? false) || castor.needsContext;
        contextAware |= castor.contextAware;
        args.write(SerializationContext.instanceName);
        args.write('.');
        args.write(castor.code);
        args.write('(');
        args.write(param.name);
        args.write(')');
      }
    }
    return (needsContext == null)
        ? '[$args]'
        : '''(() {
              ${context.initialize(true, contextAware)};
              return [$args];
            })()''';
  }

  DeSer? deserialize(SerializationContext context, String req) {
    if (_params.isEmpty) return null;
    var needsContext = false, contextAware = false;
    final deserialized = StringBuffer();
    for (var i = 0; i < _params.length; i++) {
      final param = _params[i];
      final arg = '$req.args[$i]';
      if (deserialized.isNotEmpty) deserialized.write(',');
      if (param.isNamed) {
        deserialized.write(param.name);
        deserialized.write(':');
      }
      final castor = context.getDeserializer(param.type, param.marshaler);
      if (castor == null) {
        deserialized.write(arg);
      } else {
        needsContext |= castor.needsContext;
        contextAware |= castor.contextAware;
        deserialized.write(SerializationContext.instanceName);
        deserialized.write('.');
        deserialized.write(castor.code);
        deserialized.write('(');
        deserialized.write(arg);
        deserialized.write(')');
      }
    }
    return DeSer(deserialized.toString(), needsContext, contextAware);
  }

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
}

extension _ParamExt on Iterable<SquadronParameter> {
  Iterable<String> toStringNoField() => map((p) => p.toStringNoField());

  Iterable<String> toSuperParam() => map((p) => p.toSuperParam());
}
