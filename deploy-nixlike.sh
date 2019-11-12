#!/bin/bash

# script will only run correctly from script directory

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# deploy executables to ~/bin

mkdir -p $HOME/bin
wget -cvN --directory-prefix=$HOME/bin https://gitlab.com/uvtc/rippledoc/raw/master/rippledoc.py
chmod +x $HOME/bin/rippledoc.py
rm -f $HOME/bin/wripple*
ln -s $SCRIPT_DIR/wripple* $HOME/bin
