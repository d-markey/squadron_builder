import 'package:analyzer/dart/element/type.dart';
import 'package:meta/meta.dart';

import '_analyzer_helpers.dart';
import 'types/managed_type.dart';

@internal
extension CsvExt on StringBuffer {
  void csv(String arg) {
    if (isNotEmpty) write(', ');
    write(arg);
  }
}

@internal
class TypeFilter {
  TypeFilter(this.target);

  final ManagedType target;

  late bool Function(DartType) isMatch = (target is ImportedType)
      ? _isImportMatch(target as ImportedType)
      : _isMatch;

  bool _isMatch(DartType type) => (type == target.dartType);

  bool Function(DartType) _isImportMatch(ImportedType target) {
    final pckUri = target.pckUri, baseName = target.baseName;
    return (type) => (type.isFromPackage(pckUri) && type.baseName == baseName);
  }
}
