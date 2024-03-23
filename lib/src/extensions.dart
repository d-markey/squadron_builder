import 'package:meta/meta.dart';

@internal
extension SafeCastExt on Object? {
  T? safeCast<T>() => (this is T) ? (this as T) : null;
}
