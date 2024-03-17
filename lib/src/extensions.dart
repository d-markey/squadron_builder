import 'package:meta/meta.dart';

bool _notNull(dynamic x) => (x != null);

bool _notEmpty(dynamic x) {
  if (x == null) return false;
  if (x is String) return x.isNotEmpty;
  if (x is List) return x.isNotEmpty;
  if (x is Map) return x.isNotEmpty;
  return true;
}

@internal
extension SafeCastExt on Object? {
  T? safeCast<T>() => (this is T) ? (this as T) : null;
}

@internal
extension NotNullExt<T> on Iterable<T?> {
  Iterable<T> whereNotNull() => where(_notNull).cast<T>();
  Iterable<T> whereNotEmpty() => where(_notEmpty).cast<T>();
  T? getFirstOrNull() => isEmpty ? null : first;
  T? getSingleOrNull() => isEmpty ? null : single;
}
