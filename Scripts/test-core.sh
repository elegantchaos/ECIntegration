#!/usr/bin/env bash

# Test script for ECCore framework

project=ECIntegration

base=`dirname $0`
source "$base/../ECUnitTests/Resources/Scripts/test-common.sh"

macbuild "ECCore Mac" test
iosbuild "ECCore iOS" test
