#!/usr/bin/env bash

# Test script for various EC modules

project=ECIntegration

base=`dirname $0`
source "$base/../ECUnitTests/Resources/Scripts/test-common.sh"

# test ECCore

macbuild "ECCore Mac" test
iosbuild "ECCore iOS" test

# test ECUnitTests

macbuild "ECUnitTest Example Mac" test
iosbuild "ECUnitTest Example iOS" build

iosbuildproject "ECUnitTests" "ECUnitTestsIOS"
iostestproject "ECUnitTestsExample" "iOS Tests"

# test ECLogging

macbuild "ECLogging Mac" test
iosbuild "ECLogging iOS" test

macbuild "ECLogging Sample Mac" build
iosbuild "ECLogging Sample iOS" build

# test ECLocation

macbuild "ECLocation Mac" build
iosbuild "ECLocation iOS" build

# test ECNetwork

macbuild "ECNetwork Mac" build
iosbuild "ECNetwork iOS" build

# test ECTouch

iosbuild "ECTouch iOS" build

# test ECAnalytics

iosbuild "ECAnalytics iOS" build

# test ECAppKit

macbuild "ECAppKit Mac" build


# if everything worked, try to push the current submodule revisions to their master branches
git submodule foreach 'git push origin HEAD:master'