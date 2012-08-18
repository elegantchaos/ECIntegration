#!/usr/bin/env bash

# Integration tests for ECLogging

project=ECIntegration

base=`dirname $0`
source "$base/../ECUnitTests/Resources/Scripts/test-common.sh"

# ECLogging tests

macbuild "ECLogging Mac" test
iosbuild "ECLogging iOS" test

macbuild "ECLogging Sample Mac" build
iosbuild "ECLogging Sample iOS" build
