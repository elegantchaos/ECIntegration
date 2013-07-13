#!/usr/bin/env bash

status=`git status -s`
base=`dirname $0`

if [[ "$status" != "" ]]; then
	echo "Git seems to have changes outstanding."
	exit 1
fi

ECLogging/Extras/Scripts/pull-latest-submodules.sh

status=`git status -s`

if [[ "$status" != "" ]]; then
	
	git commit . -m "updated to latest modules"

	"$status/test.sh"
	
fi
