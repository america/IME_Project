#!/bin/bash

# Specify the compiler explicitly
export CXX=/usr/bin/g++-11

# Remove directories and files if they exist
for item in build coverage_report coverage.info
do
  if [ -e "$item" ]; then
    rm -r "$item"
  fi
done

# Configure and build the project
cmake -S . -B build
cmake --build build

# Run tests and generate coverage report
./build/test/runTests
#lcov --capture --directory ./build/test --output-file coverage.info
lcov --capture --ignore-errors mismatch --directory ./build/test --output-file coverage.info
lcov --remove coverage.info '/usr/*' --output-file coverage.info
genhtml coverage.info --output-directory ./coverage_report
