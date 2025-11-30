import 'package:build/build.dart';
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

  bool Function(DartType) _isImportMatch(ImportedType target) =>
      (t) => (t.isFromPackage(target.pckUri) && t.baseName == target.baseName);
}

extension AssetIdRelPathExt on AssetId {
  String relativePathTo(AssetId target) {
    final targetSegments = target.pathSegments;
    final currentSegments = pathSegments;

    while (targetSegments.isNotEmpty &&
        currentSegments.isNotEmpty &&
        targetSegments.first == currentSegments.first) {
      targetSegments.removeAt(0);
      currentSegments.removeAt(0);
    }

    while (currentSegments.length > 1) {
      targetSegments.insert(0, '..');
      currentSegments.removeAt(0);
    }

    return targetSegments.join('/');
  }
}
