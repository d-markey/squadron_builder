@ECHO OFF

PUSHD "%~dp0.."

CALL dart run .\tool\set_version.dart
CALL .\tool\build_example_with_finalizers.bat
CALL .\tool\build_goldens.bat
CALL dart format .
