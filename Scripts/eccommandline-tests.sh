#!/usr/bin/env bash

# Test script for various EC modules

project=ECIntegration

base=`dirname $0`
ecbase="$base/../ECLogging/Extras/Scripts"
source "$ecbase/test-common.sh"


# test ECCommandLine

macbuild "ECCommandLine Mac" test
macbuild "ECCommandLineTest" test



# if everything worked, try to push the current submodule revisions to their master branches
#git submodule foreach 'git push origin HEAD:master'