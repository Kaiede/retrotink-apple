#!/bin/sh
#
# Make Package

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PROJ_DIR=$(dirname "$SCRIPT_DIR")

ASSET_DIR=$PROJ_DIR/docs/assets
INCLUDES_DIR=$PROJ_DIR/docs/_includes
SRC_DIR=$PROJ_DIR/src
BUILD_DIR=$PROJ_DIR/build
BUILD_DATE=$(date +%Y%m%d)

echo $PROJ_DIR

if [ -f $ASSET_DIR/RetroTinkApple_*.zip ]; then
    rm $ASSET_DIR/RetroTinkApple_*.zip
fi

if [ -d $BUILD_DIR ]; then
    rm -rf $BUILD_DIR
fi

mkdir -p $BUILD_DIR
pushd $BUILD_DIR

# Stage 1: Copy Profiles
mkdir -p "profile/Apple PC"
cp -r $SRC_DIR/profiles/* "./profile/Apple PC"

# Stage 2: Create a Merged Custom Input Mode File (1.6.9)
mkdir inputmodes
cp $SRC_DIR/raw/input_database.txt inputmodes/
cat $SRC_DIR/apple_input_modes.txt >> inputmodes/input_database.txt

# Stage 3: Merge the README.md File
cp $PROJ_DIR/README.md ./
echo "\n## Changelog\n" >> ./README.md
cat $PROJ_DIR/CHANGELOG.md >> ./README.md

# Stage 4: Merge the HOWTOINSTALL.md File
cp $SRC_DIR/HOWTOINSTALL.md ./
cat $SRC_DIR/apple_input_modes.txt >> ./HOWTOINSTALL.md
cat $SRC_DIR/HOWTOINSTALL2.md >> ./HOWTOINSTALL.md

# Build the Zip File
ZIP_NAME=RetroTinkApple_${BUILD_DATE}.zip
zip -r $ASSET_DIR/$ZIP_NAME .

# Update Pages
printf '%s' "$ZIP_NAME" > $INCLUDES_DIR/latest_asset.txt
printf '%s' "$(<$SRC_DIR/apple_input_modes.txt)" > $INCLUDES_DIR/input_modes.txt
#cp $SRC_DIR/apple_input_modes.txt $INCLUDES_DIR/input_modes.txt
cp $PROJ_DIR/CHANGELOG.md $INCLUDES_DIR/changelog.md
popd
