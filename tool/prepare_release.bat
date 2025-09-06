@ECHO OFF

PUSHD "%~dp0.."

CALL dart run .\tool\set_version.dart
CALL .\tool\build_example_with_finalizers.bat
CALL dart format .
