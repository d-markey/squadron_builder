#!/bin/bash

# Navigate to the parent directory of the script
cd "$(dirname "$0")/.." || exit

# Run the Dart version script
dart run ./tool/set_version.dart

# Run the build scripts 
# (Note: These must also be converted to .sh files to run on Linux)
bash ./tool/build_example_with_finalizers.sh
bash ./tool/build_goldens.sh

# Format the Dart code
dart format .