#!/usr/bin/env bash

# Test script for ECUnitTests

project=ECIntegration

base=`dirname $0`
source "$base/../ECUnitTests/Resources/Scripts/test-common.sh"

macbuild "ECUnitTest Example Mac" test
iosbuild "ECUnitTest Example iOS" build

iosbuildproject "ECUnitTests" "ECUnitTestsIOS"
iostestproject "ECUnitTestsExample" "iOS Tests"
