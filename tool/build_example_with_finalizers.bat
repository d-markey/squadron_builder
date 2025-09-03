@ECHO OFF

PUSHD "%~dp0.."

CALL dart run build_runner clean
CALL dart run build_runner build -d -c example_with_finalizers