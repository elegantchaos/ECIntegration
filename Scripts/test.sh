#!/usr/bin/env bash

# Test script for various EC modules

project=ECIntegration

base=`dirname $0`
ecbase="$base/../ECLogging/Extras/Scripts"
source "$ecbase/test-common.sh"


# test ECAnalytics

#iosbuild "ECAnalytics iOS" test

# test ECAppKit

macbuild "ECAppKit Mac" test

# test ECCommandLine

macbuild "ECCommandLine Mac" test
macbuild "ECCommandLineTest" test

# test ECCore

macbuild "ECCore Mac" test
#iosbuild "ECCore iOS" test

# test ECLocation

macbuild "ECLocation Mac" test
#iosbuild "ECLocation iOS" test

# test ECLogging

macbuild "ECLogging Mac" test
iosbuild "ECLogging iOS" test

macbuild "ECLogging Sample Mac" test
iosbuild "ECLogging Sample iOS" test

# test ECNetwork

macbuild "ECNetwork Mac" test
#iosbuild "ECNetwork iOS" test

# test ECPreferencesWindow

macbuild "ECPreferencesWindow Mac" test
macbuild "ECPreferencesWindowExample" test

# test ECSecurity

macbuild "ECSecurity Mac" test
#iosbuild "ECSecurity iOS" test

# test ECText

macbuild "ECText Mac" test
#iosbuild "ECText iOS" test

# test ECTouch

#iosbuild "ECTouch iOS" test






# if everything worked, try to push the current submodule revisions to their master branches
#git submodule foreach 'git push origin HEAD:master'