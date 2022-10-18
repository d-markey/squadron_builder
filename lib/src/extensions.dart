import 'package:analyzer/dart/element/type.dart';

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

extension BaseNameExt on DartType {
  String get baseName {
    final n = toString();
    return (n.endsWith('?') || n.endsWith('*'))
        ? n.substring(0, n.length - 1)
        : n;
  }
}
