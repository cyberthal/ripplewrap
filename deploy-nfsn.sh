#!/bin/bash

# script will only run correctly from script directory

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# deploy executables to ~/bin

mkdir -p ~/bin
wget -cvN --directory-prefix=/home/private/bin https://gitlab.com/uvtc/rippledoc/raw/master/rippledoc.py
chmod +x /home/private/bin/rippledoc.py
rm -f /home/private/bin/wripple*
ln -s ./wripple* /home/private/bin
