// ignore: prefer_void_to_null
// Null _null() => null;

bool _notNull(dynamic x) => (x != null);

bool _notEmpty(dynamic x) {
  if (x == null) return false;
  if (x is String) return x.isNotEmpty;
  if (x is List) return x.isNotEmpty;
  if (x is Map) return x.isNotEmpty;
  return true;
}

extension NotNullExt<T> on Iterable<T?> {
  Iterable<T> whereNotNull() => where(_notNull).cast<T>();
  Iterable<T> whereNotEmpty() => where(_notEmpty).cast<T>();
}

// extension NullableExt<T> on Iterable<T> {
//   T? firstOrNull([bool Function(T)? predicate]) {
//     if (isEmpty) return null;
//     return (predicate == null)
//         ? first
//         // ignore: null_check_on_nullable_type_parameter
//         : cast<T?>().firstWhere((e) => predicate(e!), orElse: _null);
//   }

//   T? singleOrNull([bool Function(T)? predicate]) {
//     if (isEmpty) return null;
//     return (predicate == null)
//         ? single
//         // ignore: null_check_on_nullable_type_parameter
//         : cast<T?>().singleWhere((e) => predicate(e!), orElse: _null);
//   }
// }
