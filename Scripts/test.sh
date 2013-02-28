#!/usr/bin/env bash

# Test script for various EC modules

project=ECIntegration

base=`dirname $0`
source "$base/../ECLogging/Extras/Scripts/test-common.sh"


# test ECLogging

macbuild "ECLogging Mac" test
iosbuild "ECLogging iOS" test

macbuild "ECLogging Sample Mac" build test
iosbuild "ECLogging Sample iOS" build test

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