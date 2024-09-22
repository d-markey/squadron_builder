import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

import 'extensions.dart';
import 'imported_type.dart';
import 'managed_type.dart';
import 'type_manager.dart';

class LibraryInspector extends RecursiveElementVisitor {
  LibraryInspector(this.typeManager);

  final TypeManager typeManager;

  final _visited = <LibraryElement>{};

  LibraryImportElement? _import;
  String _pckUri = '';

  Map<String, ManagedType>? _searchedTypes;

  void loadTypes(LibraryElement library,
      Map<String, Map<String, ManagedType>> typeFilter) {
    for (var entry in typeFilter.entries) {
      final pckUri = entry.key, searchedTypes = entry.value;

      final import = library.getImport(pckUri);
      final importedLibrary = import?.importedLibrary;

      final prefix = import?.prefix?.element.name ?? '';
      searchedTypes.updateAll((k, v) {
        if (v == ManagedImportedType.uninitialized) {
          return NonImportedType(pckUri, prefix, k);
        } else {
          return v;
        }
      });

      if (importedLibrary == null) continue;

      if (_import != null) {
        throw UnsupportedError(
            'LibraryInspector.loadTypes() is not reentrant!');
      }

      _import = import;
      _pckUri = pckUri;
      _searchedTypes = searchedTypes;

      if (pckUri == 'dart:core' &&
          searchedTypes['dynamic'] is NonImportedType) {
        searchedTypes['dynamic'] = ImportedType(pckUri, import!, null);
      }

      try {
        _visitLibrary(importedLibrary);
      } finally {
        _import = null;
        _pckUri = '';
        _searchedTypes = null;
      }
    }
  }

  void _registerType(Element element) {
    // skip non-public and internal elements
    if (!element.isPublic || element.hasInternal) return;
    // skip unsearched elements
    final name = element.name ?? '', searchedTypes = _searchedTypes!;
    if (!searchedTypes.containsKey(name)) return;

    // update reference
    searchedTypes.update(name, (t) {
      if (t is NonImportedType) {
        return ImportedType(_pckUri, _import!, element);
      } else {
        return t;
      }
    });
  }

  void _visitLibrary(LibraryElement library) {
    if (_visited.add(library)) {
      library.visitChildren(this);
      library.parts.forEach(_visitPart);
      library.exportedLibraries.forEach(_visitLibrary);
    }
  }

  void _visitPart(PartElement part) => part.visitChildren(this);

  @override
  void visitClassElement(ClassElement element) => _registerType(element);

  @override
  void visitEnumElement(EnumElement element) => _registerType(element);

  @override
  void visitExtensionElement(ExtensionElement element) =>
      _registerType(element);

  @override
  void visitExtensionTypeElement(ExtensionTypeElement element) =>
      _registerType(element);

  @override
  void visitMixinElement(MixinElement element) => _registerType(element);

  @override
  void visitTypeAliasElement(TypeAliasElement element) =>
      _registerType(element);
}
