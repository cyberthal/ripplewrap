#!/bin/bash

# script will only run correctly from script directory

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# deploy executables to ~/bin

mkdir -p ~/bin
wget -cvN --directory-prefix=~/bin https://gitlab.com/uvtc/rippledoc/raw/master/rippledoc.py
chmod +x ~/bin/rippledoc.py
rm -f ~/bin/wripple*
ln -s ./wripple* ~/bin
