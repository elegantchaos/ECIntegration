#!/usr/bin/env bash

# Test script for various EC modules

project=ECIntegration

base=`dirname $0`
ecbase="$base/../ECLogging/Extras/Scripts"
source "$ecbase/test-common.sh"

# test ECLogging

macbuild "ECLogging Mac" test
iosbuild "ECLogging iOS" test

macbuild "ECLogging Sample Mac" test
iosbuild "ECLogging Sample iOS" test


# if everything worked, try to push the ECLogging submodule revisions to their master branches
#git submodule foreach 'git push origin HEAD:master'