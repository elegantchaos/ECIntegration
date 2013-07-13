#!/usr/bin/env bash

base=`dirname $0`

status=`git status -s`
if [[ "$status" != "" ]]; then
	echo "Git seems to have changes outstanding."
	exit 1
fi

echo "Pulling latest submodules"
ECLogging/Extras/Scripts/pull-latest-submodules.sh

status=`git status -s`
if [[ "$status" != "" ]]; then
	
	git commit . -m "updated to latest modules"

	"$status/test.sh"
	
fi
