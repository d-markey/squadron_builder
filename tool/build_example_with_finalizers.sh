#!/bin/bash

# Navigate to the parent directory of the script
cd "$(dirname "$0")/.." || exit

dart run build_runner clean
dart run build_runner build -d -c example_with_finalizers
