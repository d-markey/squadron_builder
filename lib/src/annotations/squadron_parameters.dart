import 'package:analyzer/dart/element/element.dart';
import 'package:source_gen/source_gen.dart';

import 'marshallers/marshaller.dart';
import '../extensions.dart';
import 'squadron_parameter.dart';

class SquadronParameters {
  SquadronParameters clone() {
    final params = SquadronParameters();
    params._params.addAll(_params);
    params._cancellationToken = _cancellationToken;
    params._hasPositionalParameters = _hasPositionalParameters;
    params._hasNamedParameters = _hasNamedParameters;
    params._hasOptionalParameters = _hasOptionalParameters;
    return params;
  }

  final _params = <SquadronParameter>[];

  String? _cancellationToken;
  String? get cancellationToken => _cancellationToken;

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

  bool _checkCancellationToken(ParameterElement param) {
    if (param.type.baseName != 'CancellationToken') {
      return false;
    }
    final locationComponents =
        param.type.element?.location?.components ?? const [];
    final isToken =
        locationComponents.any((c) => c.startsWith('package:squadron/'));
    if (isToken) {
      if (_cancellationToken != null) {
        throw InvalidGenerationSourceError(
            'Multiple cancellation tokens may not be passed to service methods ($_cancellationToken, ${param.name}). Use a CompositeCancellationToken instead.');
      } else {
        _cancellationToken = param.name;
      }
    }
    return isToken;
  }

  SquadronParameter register(ParameterElement param, Marshaller? marshaller) {
    final isToken = _checkCancellationToken(param);
    int serIdx = -1;
    if (!isToken) {
      serIdx = _params.length - (_cancellationToken != null ? 1 : 0);
    }
    return _register(
        SquadronParameter.from(param, isToken, marshaller, serIdx));
  }

  SquadronParameter addOptional(String name, String typeName) =>
      _register(SquadronParameter.opt(
          name, typeName, _hasNamedParameters || !_hasOptionalParameters));

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

  String toFormalArguments() =>
      _params.map((p) => p.toFormalArgument()).join(', ');

  String serialize() => _params
      // cancellation token is passed separately when invoking the worker
      .where((p) => !p.isCancellationToken)
      .map((p) => p.serialized())
      .join(', ');

  String deserialize(String jsonObj) =>
      _params.map((p) => p.deserialized(jsonObj)).join(', ');

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
      return '{${optional.join(', ')}}';
    } else {
      return '';
    }
  }
}
