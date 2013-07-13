#!/usr/bin/env bash

base=`dirname $0`

status=`git status -s`
if [[ "$status" != "" ]]; then
    echo "Git seems to have changes outstanding."
    exit 1
fi

git checkout master
git pull
git submodule sync > /dev/null
git submodule update --init --recursive
git submodule foreach 'git remote set-url --push origin git@github.com:elegantchaos/$name.git'

echo "Pulling latest submodules"
ECLogging/Extras/Scripts/pull-latest-develop-submodules.sh

status=`git status -s`
if [[ "$status" != "" ]]; then

    echo "Submodules updated"
    git commit . -m "updated to latest modules"
    git push origin master

fi
