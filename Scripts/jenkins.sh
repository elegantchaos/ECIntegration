#!/usr/bin/env bash

base=`dirname $0`

git submodule sync > /dev/null
git submodule update --init --recursive
git submodule foreach 'git remote set-url --push origin git@github.com:elegantchaos/$name.git'

echo "Running tests"
"$base/test.sh"
