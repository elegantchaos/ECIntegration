#!/usr/bin/env bash

# Test script for ECLogging

project=ECCore

base=`dirname $0`
source "$base/../ECUnitTests/Resources/Scripts/test-common.sh"

# ECCore tests

macbuild "ECCore Mac" test
iosbuild "ECCore iOS" test

# ECLogging tests

macbuild "ECLogging Mac" test
iosbuild "ECLogging iOS" test

#macbuild "ECLogging Sample Mac" build
#iosbuild "ECLogging Sample iOS" build

# ECUnitTests tests

#macbuild "ECUnitTest Example Mac" test
#iosbuild "ECUnitTest Example iOS" build

#iosbuildproject "ECUnitTests" "ECUnitTestsIOS"
#iostestproject "ECUnitTestsExample" "iOS Tests"
