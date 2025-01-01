#!/bin/sh
#
# Make Package

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PROJ_DIR=$(dirname "$SCRIPT_DIR")

echo $PROJ_DIR

if [ -f $PROJ_DIR/docs/assets/RetroTinkApple.zip ]; then
    rm $PROJ_DIR/docs/assets/RetroTinkApple.zip
fi

mkdir -p $PROJ_DIR/docs/assets
pushd $PROJ_DIR/src
zip -r $PROJ_DIR/docs/assets/RetroTinkApple.zip . -x \*/.DS_Store -x .DS_Store
popd
