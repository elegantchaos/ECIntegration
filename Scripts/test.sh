#!/usr/bin/env bash

# Test script for various EC modules

project=ECIntegration

base=`dirname $0`
source "$base/../ECLogging/Extras/Scripts/test-common.sh"


# test ECLogging

macbuild "ECLogging Mac" test
#iosbuild "ECLogging iOS" test
iostestproject "ECLogging" "ECLoggingIOSTests"

macbuild "ECLogging Sample Mac" test
#iosbuild "ECLogging Sample iOS" test

# test ECLocation

macbuild "ECLocation Mac" test
#iosbuild "ECLocation iOS" build

# test ECNetwork

macbuild "ECNetwork Mac" build
#iosbuild "ECNetwork iOS" build

# test ECTouch

#iosbuild "ECTouch iOS" build

# test ECAnalytics

#iosbuild "ECAnalytics iOS" build

# test ECAppKit

macbuild "ECAppKit Mac" test


# if everything worked, try to push the current submodule revisions to their master branches
#git submodule foreach 'git push origin HEAD:master'