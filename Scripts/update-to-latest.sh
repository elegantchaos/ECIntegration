base=`dirname $0`
pushd "$base" > /dev/null
full="$PWD"
popd > /dev/null

STATUS=`git status -s`

if [[ "$STATUS" == "" ]]; then

    echo "Pulling latest submodules."
    "$base/../ECLogging/Extras/Scripts/pull-latest-submodules.sh"

    STATUS=`git status -s`

    if [[ "$STATUS" != "" ]]; then
        echo "Submodules have changed - committing."
        git commit . -m "Automatic update of submodules"
        git push

    fi

else

    echo "You have changes outstanding in git - commit them first."

fi
