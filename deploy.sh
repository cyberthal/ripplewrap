#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ~/bin

rm -rf ~/bin/ripplebuild.sh
rm -rf ~/bin/rippleclean.sh
rm -rf ~/bin/ripplewatch.sh

ln -s $SCRIPT_DIR/ripplebuild.sh ~/bin
ln -s $SCRIPT_DIR/rippleclean.sh ~/bin
ln -s $SCRIPT_DIR/ripplewatch.sh ~/bin

rm ~/bin/rippledoc-0.1.2-standalone.jar
rm $SCRIPT_DIR/rippledoc-0.1.2-standalone.jar
wget http://www.unexpected-vortices.com/sw/rippledoc/rippledoc-0.1.2-standalone.jar
ln -s $SCRIPT_DIR/rippledoc-0.1.2-standalone.jar ~/bin

rm ~/bin/rippledoc.sh
rm $SCRIPT_DIR/rippledoc.sh
wget https://raw.githubusercontent.com/uvtc/rippledoc/master/bin/rippledoc.sh
ln -s $SCRIPT_DIR/rippledoc.sh ~/bin

chmod +x $SCRIPT_DIR/ripple*
