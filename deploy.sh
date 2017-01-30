#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ~/bin

rm -rf ~/bin/ripplebuild.sh
rm -rf ~/bin/rippleclean.sh
rm -rf ~/bin/ripplewatch.sh

ln -s $SCRIPT_DIR/ripplebuild.sh ~/bin/ripplebuild.sh
ln -s $SCRIPT_DIR/rippleclean.sh ~/bin/rippleclean.sh
ln -s $SCRIPT_DIR/ripplewatch.sh ~/bin/ripplewatch.sh

