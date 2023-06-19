import 'package:analyzer/dart/element/type.dart';
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
extension NotNullExt<T> on Iterable<T?> {
  Iterable<T> whereNotNull() => where(_notNull).cast<T>();
  Iterable<T> whereNotEmpty() => where(_notEmpty).cast<T>();
}

@internal
extension BaseTypeNameExt on DartType {
  String get baseName {
    var n = toString();
    while (n.endsWith('?') || n.endsWith('*')) {
      n = n.substring(0, n.length - 1);
    }
    return n;
  }
}
