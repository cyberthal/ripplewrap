#!/bin/bash

# gets path from which the script was run
# symlinks will break

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# deploy executables to ~/bin

mkdir -p ~/bin
wget -cvN --directory-prefix=~/bin https://gitlab.com/uvtc/rippledoc/raw/master/rippledoc.py
rm -f ~/bin/wripple*
ln -s $SCRIPT_DIR/wripple* ~/bin
